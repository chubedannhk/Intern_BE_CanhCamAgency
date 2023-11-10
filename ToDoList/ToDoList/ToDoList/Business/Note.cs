using CanhCam.Data;
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ToDoList.ToDoList.Business
{
    public class Note
    {
        #region Contructors
        public Note()
        {

        }
        public Note(int id)
        {
            var reader = DBPosts.GetOne(id);
            PopulateItem(this, ref reader);
        }
        #endregion


        #region Properties
        public int Id { get; set; } = -1;

        public Guid Guid { get; set; } = Guid.Empty;
        public string Title { get; set; }

        public DateTime Created { get; set; } = DateTime.Now;

        public string Content { get; set; }
        public string Category { get; set; }
        public string Images { get; set; }
        public DateTime CreatedUtc { get; set; } = DateTime.UtcNow;

        public DateTime EndDate { get; set; } = DateTime.MaxValue;
        #endregion
        #region Priate Methods
        private bool Insert()
        {
            var newId = DBPosts.Create(this.Title, this.Content, this.Category, this.Images);
            this.Id = newId;
    
            return newId > 0;
        }
        private bool Update()
        {
            return false;
        }
        #endregion

        #region public method
        public bool Save()
        {
            if (this.Id <= 0)
                return Insert();
            return Update();


        }
        #endregion

        #region Static methods
        public static bool PopulateItem(Note note, ref IDataReader reader, bool forceClose = true)
        {

            try
            {
                if (reader.Read())
                {
                    note.Id = Convert.ToInt32(reader["Id"]);
                   // note.Guid = new Guid(reader["Guid"].ToString());
                    note.Title = reader["Title"].ToString();
                    note.Category = reader["Category"].ToString();
                    note.Content = reader["Content"].ToString();
                    note.Images = reader["Images"].ToString();
                    return true;

                }
            }
            finally
            {
                if (forceClose)
                {
                    reader.Close();
                }
            }
            return false;
        }

        public static List<Note> LoadListFromReader(IDataReader reader)
        {
            List<Note> notes = new List<Note>();
            try
            {
                while (true)
                {
                    Note note = new Note();
                    if (!PopulateItem(note, ref reader, false))
                        break;
                    notes.Add(note);
                }
            }
            finally
            {
                reader.Close();
            }
            return notes;
        }

        public static int GetCount()
        {
            return DBPosts.GetCount("Posts");
        }

        public static List<Note> GetAll()
        {
            return LoadListFromReader(DBPosts.GetAll());
        }

        public static List<Note> GetPage(int pageNumber, int pageSize)
        {
            return LoadListFromReader(DBPosts.GetPage(pageNumber, pageSize));
        }
        #endregion
    }

}