using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taskB4
{
    public partial class taskB4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int change = Convert.ToInt32(this.TextBox1.Text); // value from textbox labeled 'Amount of money' is saved to the variable 'change'
            int fiftys = change / 50; // value of 'change' is divided by 50 to check how many fiftys are in 'change', value is int so it's rounded to whole number. 
            change %= 50; // modulo from 'change' gives what's left after 50's
            int twentys = change / 20; // value of 'change' is divided by 20 to check how many fiftys are in 'change'
            change %= 20; // modulo from 'change' gives what's left after 20's
            int tens = change / 10; // value of 'change' is divided by 10 to check how many fiftys are in 'change'
            change %= 10; // modulo from 'change' gives what's left after 10's
            int fives = change / 5; // value of 'change' is divided by 5 to check how many fiftys are in 'change'
            int remaining = change % 5; // modulo from 'change' gives what's left after 5's

            // value of variables is converted to string and written to the related textboxes
            this.TextBox2.Text = fiftys.ToString(); 
            this.TextBox3.Text = twentys.ToString();
            this.TextBox4.Text = tens.ToString();
            this.TextBox5.Text = fives.ToString();
            this.TextBox6.Text = remaining.ToString();

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