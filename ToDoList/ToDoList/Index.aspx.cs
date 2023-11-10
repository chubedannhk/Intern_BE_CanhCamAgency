using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using ToDoList.ToDoList.Business;

namespace CanhCam.Data
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var note = new Note();
            note.Title = txtTitle.Text;
            note.Category = txtTitle.Text;
            note.Content = txtContent.Text;
            note.Images = txtImages.Text;
            note.Save();
            //int a = DBPosts.Create(title, cate, content, img);
            //Debug.WriteLine(a);
            Label1.Text =  "Success";
        }
        protected void RadGrid1_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
        {
            (sender as RadGrid).DataSource = Note.GetAll();//DBPosts.GetAll();
        }
      



    }
}