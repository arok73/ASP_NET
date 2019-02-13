using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace taskC2
{
    public partial class taskC21 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // store text of TextBox1 to variable
            var value_1 = Convert.ToInt32(TextBox1.Text);

            // check if value in variable is bigger than 0 or smaller than 10
            if (value_1 >= 0 && value_1 <= 10)
            {
                TextBox2.ForeColor = Color.Green;
                TextBox2.Text = "Number is between 0-10!";
            }

            else
            {
                TextBox2.ForeColor = Color.Red;
                TextBox2.Text = "Number is NOT between 0-10!";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // call to function to clear the textboxes 
            EmptyTextBoxes(this);
        }

        // function to clear the textboxes
        public void EmptyTextBoxes(Control textbox)
        {
            foreach (Control t in textbox.Controls)
            {
                if ((t.GetType() == typeof(TextBox)))
                {
                    ((TextBox)(t)).Text = "";
                }
                if (t.HasControls())
                {
                    EmptyTextBoxes(t);
                }
            }
            this.TextBox1.Focus();
        }

        
    }
}