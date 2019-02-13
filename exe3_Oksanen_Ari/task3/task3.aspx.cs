using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task3
{
    public partial class task3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                // check if page is valid
                if (Page.IsValid)
                {
                    // show notification of succesfull submit
                    Label5.ForeColor = System.Drawing.Color.Blue;
                    Label5.Text = "Thank you for contacting us";

                    // disable textboxes ans button after submit
                    TextBox1.Enabled = false;
                    TextBox2.Enabled = false;
                    TextBox3.Enabled = false;
                    TextBox4.Enabled = false;
                    Button1.Enabled = false;
                }
            }
            catch (Exception ex)
            {
                // show alert if submit is failed
                Label5.ForeColor = System.Drawing.Color.Red;
                Label5.Text = "There is an unknown problem. Please try later";
            }
        }
    }
}