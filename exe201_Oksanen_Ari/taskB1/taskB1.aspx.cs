using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taskB1
{
    public partial class taskB1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var voltage = Convert.ToDecimal(this.TextBox1.Text); // value in textbox labeled Voltage is saved to the variable voltage
            var current = Convert.ToDecimal(this.TextBox2.Text); // value in textbox labeled Current is saved to the variable current
            var resistance = 0m; // declaring variable resistance with format double

            resistance = voltage / current; // calculating variables according to Ohm's law (R=U/I) and saving the result to variable resistance

            TextBox3.Text = resistance.ToString(); // printing result to the textbox labeled Resistance
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