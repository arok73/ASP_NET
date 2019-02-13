using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace taskC5
{
    public partial class taskC51 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // store TextBox values to variables
            var value_A = Convert.ToDecimal(TextBox1.Text);
            var value_B = Convert.ToDecimal(TextBox3.Text);
            // calculate value of x and round it to 4 decimals. Convert the result to string and add it to TextBox2
            var value_x = Math.Round((-(value_B / value_A)), 4);
            TextBox2.Text = value_x.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // clear the textboxes 
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
        }
    }
}