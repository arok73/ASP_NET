using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taskB6
{
    public partial class taskB6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int weekday = Convert.ToInt32(TextBox1.Text); // value from textbox labeled 'Weekday' is saved to the variable 'weekday'

            switch (weekday) // textbox is populated depending on the value in the 'weekday' variable
            {
                case 1:
                    TextBox2.Text = "Monday";
                    break;
                case 2:
                    TextBox2.Text = "Tuesday";
                    break;
                case 3:
                    TextBox2.Text = "Wednesday";
                    break;
                case 4:
                    TextBox2.Text = "Thursday";
                    break;
                case 5:
                    TextBox2.Text = "Friday";
                    break;
                case 6:
                    TextBox2.Text = "Saturday";
                    break;
                case 7:
                    TextBox2.Text = "Sunday";
                    break;
                default:
                    TextBox2.Text = "Unknown value ({weekday})"; // if inout of 'weekday' is not between 1-7, an error is printed
                    break;

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