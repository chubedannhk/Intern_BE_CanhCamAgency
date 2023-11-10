using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace CanhCam.Data
{
    public class DBPosts
    {
        //create
        public static int Create(string title, string category, string content, string images)
        {
            SqlParameterHelper sph = new SqlParameterHelper(ConnectionString.GetWriteConnectionString(), "gb_Post_Insert", 4);
            sph.DefineSqlParameter("@Title", SqlDbType.NVarChar,255, ParameterDirection.Input, title);
            sph.DefineSqlParameter("@Category", SqlDbType.NVarChar,255, ParameterDirection.Input, category);

            sph.DefineSqlParameter("@Content", SqlDbType.NVarChar,-1, ParameterDirection.Input, content);
            sph.DefineSqlParameter("@Images", SqlDbType.NVarChar,-1, ParameterDirection.Input, images);
            int newID = Convert.ToInt32(sph.ExecuteScalar());
            return newID;
        }

        // update
        public static bool Update(
            int Id,
            string nameColumn,
            string newColumnValue
            )
        {
            SqlParameterHelper sph = new SqlParameterHelper(ConnectionString.GetWriteConnectionString(), "gb_Post_Update", 3);
            sph.DefineSqlParameter("@Id", SqlDbType.Int, ParameterDirection.Input, Id);
            sph.DefineSqlParameter("@NameColumn", SqlDbType.NVarChar, 255, ParameterDirection.Input, nameColumn);
            sph.DefineSqlParameter("@NewColumnValue", SqlDbType.NVarChar, -1, ParameterDirection.Input, newColumnValue);
            int rowsAffected = sph.ExecuteNonQuery();
            return (rowsAffected > -1);
        }

        //delete
        public static bool Delete(int id)
        {
            SqlParameterHelper sph = new SqlParameterHelper(ConnectionString.GetWriteConnectionString(), "gb_Post_Delete", 1);
            sph.DefineSqlParameter("@Id", SqlDbType.Int, ParameterDirection.Input, id);
            int rowsAffected = sph.ExecuteNonQuery();
            return (rowsAffected > -1);
        }

        //get one
        public static IDataReader GetOne(int id)
        {
            SqlParameterHelper sph = new SqlParameterHelper(ConnectionString.GetReadConnectionString(), "gb_Post_GetOne", 1);
            sph.DefineSqlParameter("@Id", SqlDbType.Int, ParameterDirection.Input, id);
            return sph.ExecuteReader();
        }
        // get all
        public static IDataReader GetAll()
        {
            SqlParameterHelper sph = new SqlParameterHelper(ConnectionString.GetReadConnectionString(), "gb_Post_GetAll", 0);
            return sph.ExecuteReader();
        }
        // get count
        public static int GetCount(string tableName)
        {
            SqlParameterHelper sph = new SqlParameterHelper(ConnectionString.GetReadConnectionString(), "gb_CountElements_GetCount", 1);
            sph.DefineSqlParameter("@TableName", SqlDbType.NVarChar,255, ParameterDirection.Input, tableName);
            return Convert.ToInt32(sph.ExecuteScalar());
        }

        // get page
        public static IDataReader GetPage(
         int pageNumber,
         int pageSize
         )
        {
            SqlParameterHelper sph = new SqlParameterHelper(ConnectionString.GetReadConnectionString(), "gb_Post_GetPage", 2);
            
            sph.DefineSqlParameter("@PageNumber", SqlDbType.Int, ParameterDirection.Input, pageNumber);
            sph.DefineSqlParameter("@PageSize", SqlDbType.Int, ParameterDirection.Input, pageSize);
            return sph.ExecuteReader();
        }
    }
}