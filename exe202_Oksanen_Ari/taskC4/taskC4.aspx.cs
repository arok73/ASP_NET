using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace taskC4
{
    public partial class taskC41 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // create 2 dictionaries with month names 
            Dictionary<int, string> month_30 = new Dictionary<int, string>(){ { 4, "April" },{ 6, "June" },{ 9, "September" },{ 11, "November" } };
            Dictionary<int, string> month_31 = new Dictionary<int, string>() { { 1, "January" },{ 3, "March" },{ 5, "May" },{ 7, "July" },{ 8, "August" },{ 10, "October" },{ 12, "December" } };
            // store TexBox values to variables
            var month_number = Convert.ToInt32(TextBox1.Text);
            var year = Convert.ToInt32(TextBox3.Text);

            // if given month is february, check if it's in leap year and contains 29 days else check which dictionary contains the given month 
            if (month_number == 2)
            {
                if (DateTime.IsLeapYear(year))
                {
                    TextBox2.Text = String.Format("There's 29 days in February year {0}", year);
                }
                else
                {
                    TextBox2.Text = String.Format("There's 28 days in February year {0}", year);
                }
            }
            else if (month_31.ContainsKey(month_number))
            {
                TextBox2.Text = String.Format("There's 31 days in {0} year {1}", month_31[month_number], year);
            }
            else
            {

                TextBox2.Text = String.Format("There's 30 days in {0} year {1}", month_30[month_number], year);
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