using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;

namespace taskC1
{
    public partial class taskC11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // store TextBox values to variables
            var value_1 = Convert.ToInt32(TextBox1.Text);
            var value_2 = Convert.ToInt32(TextBox2.Text);
            var value_3 = Convert.ToInt32(TextBox3.Text);
                        
            // compare variables to find biggest number and add it to TextBox4
            if (value_1 > value_2 && value_1 > value_3)
            {
                TextBox4.Text = value_1.ToString();
            }
            else if (value_2 > value_1 && value_2 > value_3)
            {
                TextBox4.Text = value_2.ToString();
            }

            else
            {
                TextBox4.Text = value_3.ToString();
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
