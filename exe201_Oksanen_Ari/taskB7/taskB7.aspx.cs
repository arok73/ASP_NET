using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taskB7
{
    public partial class taskB7 : System.Web.UI.Page
    {
        // defining variables
        float g = 9.8F;
        float y = 57F;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            // clicking button 'Show falling speed' makes the calculation and populates the textbox 'Falling speed'
            float impactSpeed = (float)Math.Sqrt(2 * g * y);
            float impactSpeed_KMH = impactSpeed * 3.6F;
            TextBox1.Text = impactSpeed.ToString("0.00") + "m/s or " + (impactSpeed_KMH.ToString("0.00") + "km/h");
            

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

        protected void Button3_Click(object sender, EventArgs e)
        {
            // clicking button 'Show falling time' makes the calculation and populates the textbox 'Falling time'
            float fallingTime = (float)Math.Sqrt(2 * y / g);
            TextBox2.Text = fallingTime.ToString("0.00") + "s";
        }
    }
}