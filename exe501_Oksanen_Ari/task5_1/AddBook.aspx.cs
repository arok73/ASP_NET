using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task5_1
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Focus();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string myStringVariable = "Book saved succesfully!";
            String thisAddedBook = "('"+this.TextBox1.Text+"', '"+this.TextBox2.Text+"', '"+this.TextBox3.Text+"', '"+this.TextBox4.Text.ToString()+"', '"+this.TextBox5.Text.ToString()+"');";

            String sql = "INSERT INTO Books (TYPE, TITLE, AUTHOR, PRICE, QTY) values" + thisAddedBook;

            SqlDataSource1.InsertCommand = sql;
            SqlDataSource1.Insert();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
        }
    }
}