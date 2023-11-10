using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Table_ToDoList_08_11_2023
{
    public partial class Edit : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

       
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            string title = txtTitle.Text;
            string date = txtDate.Text;
            //string genre = txtGenre.Text;
            string selectedValue = sltGenre.SelectedValue;
            decimal price = 0;

            if (decimal.TryParse(txtPrice.Text, out price))
            {
                Debug.WriteLine("Information: ");
                Debug.WriteLine("Title: " + title);
                Debug.WriteLine("Date: " + date);
                Debug.WriteLine("Selected Value from DropDownList: " + selectedValue);
                Debug.WriteLine("Price: " + price);
            }
            Response.Redirect("Default.aspx");

        }


    }
}