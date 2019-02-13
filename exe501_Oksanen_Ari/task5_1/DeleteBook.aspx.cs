using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace task5_1
{
    public partial class DeleteBook : System.Web.UI.Page
    {
        // Declare database connection 
        string connection = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\BooksDB.mdb;Persist Security Info=True";
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // If first time Page_Load fill the dropdownlist and set the first dropdownlist text field as "-Select-"
                FillDropDownList();
                DropDownList1.Items.Insert(0, new ListItem("- Select -", ""));
            }
        }

        private void FillDropDownList()
        {
            // Populate dropdownlist texts with book titles from database and set ID's of books as dropdownlist values  
			string query = "SELECT ID, TITLE FROM Books";
			OleDbConnection conn = new OleDbConnection(connection);
			OleDbCommand cmd = new OleDbCommand();
			cmd.CommandText = query;
			cmd.CommandType = CommandType.Text;
			cmd.Connection = conn;
			conn.Open();
			OleDbDataReader dr = cmd.ExecuteReader();
			DataTable dt = new DataTable();
			dt.Load(dr);
			conn.Close();
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "TITLE";
            DropDownList1.DataValueField = "ID";
            DropDownList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Delete book from database based on ID
            int thisID = Convert.ToInt32(TextBox1.Text);
            String sql = "DELETE FROM Books WHERE ID = " + thisID;
            

            SqlDataSource1.DeleteCommand = sql;
            SqlDataSource1.Delete();

            // Clear textbox  
            TextBox1.Text = string.Empty;
            // Clear dropdownlist and fill again to refresh the list
            DropDownList1.Items.Clear();
            FillDropDownList();
            DropDownList1.Items.Insert(0, new ListItem("- Select -", ""));
            // Show message when book is deleted
            var message = new System.Web.Script.Serialization.JavaScriptSerializer().Serialize("Book deleted succesfully!");
            var script = string.Format("alert({0})", message);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", script, true);
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Populating textbox based on dropdownlist selection
            string query = "SELECT ID, TITLE FROM Books WHERE ID = @ID";
            OleDbConnection conn = new OleDbConnection(connection);
            OleDbCommand cmd = new OleDbCommand();
            cmd.Parameters.AddWithValue("@ID", DropDownList1.SelectedItem.Value);
            cmd.CommandText = query;
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conn;
            conn.Open();
            OleDbDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
            }
            conn.Close();

            DropDownList1.SelectedIndex = 0;

        }
    }
}