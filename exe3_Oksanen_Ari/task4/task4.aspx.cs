using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace task4
{
    public partial class task4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtBoxCity.Focus();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string upperCase = txtBoxCity.Text;
            upperCase =  char.ToUpper(upperCase[0]) + upperCase.Substring(1);
            listbxCity.Items.Add(upperCase);

            txtBoxCity.Text = "";
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int indx = listbxCity.SelectedIndex;

            listbxCity.Items.RemoveAt(indx);

            listbxCity.Items.Insert(indx, txtBoxCity.Text);

            txtBoxCity.Text = "";
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int indx = listbxCity.SelectedIndex;

            listbxCity.Items.RemoveAt(indx);
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            listbxCity.Items.Clear();
            txtBoxCity.Text = "";
        }

        protected void listbxCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtBoxCity.Text = listbxCity.SelectedItem.Text;
        }
    }
}