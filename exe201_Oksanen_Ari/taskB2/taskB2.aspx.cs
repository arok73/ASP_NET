using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taskB2
{
    public partial class taskB2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var weight = Convert.ToDecimal(this.TextBox1.Text); // value in textbox labeled Weight is saved to the variable weight
            var height = Convert.ToDecimal(this.TextBox2.Text); // value in textbox labeled Height is saved to the variable height
            var bmi = 0m; // declaring variable bmi with format double

            bmi = weight / (height * height); // calculating variables according to BMI=weight/(height*height)  and saving the result to variable bmi
            bmi = Math.Round(bmi, 0);

            TextBox3.Text = bmi.ToString(); // printing result to the textbox labeled BMI
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