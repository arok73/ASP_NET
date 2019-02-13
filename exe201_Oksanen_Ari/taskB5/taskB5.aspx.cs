using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taskB5
{
    public partial class taskB5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            int time = Convert.ToInt32(this.TextBox1.Text); // value from textbox labeled 'Seconds' is saved to the variable 'time'
           
            int seconds = time % 60; // modulo 60 from variable 'time' gives the seconds  and is saved to 'seconds' variable

            time /= 60; // 'time' is divided by 60 
            int minutes = time % 60; // modulo 60 from 'time' gives minutes  and is saved to 'minutes' variable

            int hours = time / 60; // 'time' divided by 60 gives hours and is saved to 'hours' variable 

            // 'hours', 'minutes' and 'seconds' are converted to string and saved to 'converted' variable
            string converted = hours.ToString().PadLeft(2, '0');
            converted += ":";
            converted += minutes.ToString().PadLeft(2, '0');
            converted += ":";
            converted += seconds.ToString().PadLeft(2, '0');
 
            this.TextBox2.Text = converted; // value of 'converted' variable is printed to the textbox 
            
            

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