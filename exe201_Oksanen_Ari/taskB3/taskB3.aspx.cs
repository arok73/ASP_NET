using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taskB3
{
    public partial class taskB3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var speed = Convert.ToDouble(this.TextBox1.Text); // value in textbox labeled Car Speed is saved to the variable speed
            var distance = Convert.ToDouble(this.TextBox2.Text); // value in textbox labeled Distance is saved to the variable distance
            var driving_time = 1.2d; // declaring variable driving_time with format double

            driving_time = distance / speed; // calculating variables according to BMI=weight/(height*height)  and saving the result to variable bmi
            double driving_time_rounded = Math.Round(driving_time, 4);
            TextBox3.Text = driving_time_rounded.ToString(); // printing result to the textbox labeled BMI
            TextBox4.Text = ConvertTime(driving_time).ToString();
        }

        private static string ConvertTime(Double hours)
        {
            TimeSpan ts = TimeSpan.FromHours(hours);
            //int H = ts.Hours;
            //int M = ts.Minutes;
            //int S = ts.Seconds;
            // string timeFormat = String.Format("{0:00}:{1:00}:{2:00}", H, M, S);
            string timeFormat = String.Format("{0}:{1:mm}:{1:ss}", (int)ts.TotalHours, ts);

            return timeFormat;
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