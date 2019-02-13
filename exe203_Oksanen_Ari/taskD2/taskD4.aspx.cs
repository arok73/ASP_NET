using System;
using System.Collections;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace taskD4
{
    public partial class taskD41 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // check if page is rendered first time or is it a postback 
            if (!Page.IsPostBack)
            {
                // create array with 20 elements and fill with random numbers between 100-500
                Random rnd = new Random();
                int[] rndNumbers = new int[20];

                for (int i = 0; i < 20; i++)
                {
                    int numberToArray = rnd.Next(100, 500);
                    rndNumbers[i] = numberToArray;
                }
                // store array to ViewState to use later
                ViewState["rndNmbArray"] = rndNumbers;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // store ViewState of array created on page load to rndNumbers-array
            int[] rndNumbers = ViewState["rndNmbArray"] as int[];

            // add returned values of Array_Sum and Array_Average to Textbox1
            TextBox1.Text = "Sum of array is " + Array_Sum(rndNumbers).ToString() + " & average of array  is " + Array_Average(rndNumbers);
        }

        // function for calculating sum of rndNumbers-array values
        public int Array_Sum(params int[] rndNumbers)
        {
            int result = 0;

            for (int i = 0; i < rndNumbers.Length; i++)
            {
                result += rndNumbers[i];
            }

            return result;
        }

        // function for calculating the average of rndNumbers-array values
        public decimal Array_Average(params int[] rndNumbers)
        {
            int sum = Array_Sum(rndNumbers);
            decimal result = (decimal)sum / rndNumbers.Length;
            return result;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            // iterate through rndNumbers-array and add to ListBox1
            ListBox1.Items.Clear();

            // store ViewState of array created on page load to rndNumbers-array
            int[] rndNumbers = ViewState["rndNmbArray"] as int[];
            
            for (int i = 0; i < rndNumbers.Length; i++)
            {
                ListBox1.Items.Add(((i + 1) + ". " + rndNumbers.ElementAt(i)));
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            // iterate through rndNumbers-array and add to ListBox1
            ListBox1.Items.Clear();

            // store ViewState of array created on page load to rndNumbers-array
            int[] rndNumbers = ViewState["rndNmbArray"] as int[];

            // sort values of rndNumbers-array
            Array.Sort(rndNumbers);
            for (int i = 0; i < rndNumbers.Length; i++)
            {
                ListBox1.Items.Add(((i + 1) + ". " + rndNumbers.ElementAt(i)));
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // store ViewState of array created on page load to rndNumbers-array
            int[] rndNumbers = ViewState["rndNmbArray"] as int[];

            // iterate through values of array and compare to min/max variable to find min and max values
            int min = rndNumbers[0];
            foreach (var min_number in rndNumbers)
                if (min_number < min) min = min_number;

            int max = rndNumbers[0];
            foreach (var max_number in rndNumbers)
                if (max_number > max) max = max_number;

            TextBox2.Text = "Minimum value in array is " + min + " & maximum value is " + max;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // store ViewState of array created on page load to rndNumbers-array
            int[] rndNumbers = ViewState["rndNmbArray"] as int[];

            // check if rndNumbers-array contains TextBox3 value
            int valueToCheck = Convert.ToInt32(TextBox3.Text);
            bool isInArray = rndNumbers.Contains(valueToCheck);
            if (isInArray)
            {
                TextBox4.ForeColor = Color.Green;
                TextBox4.Text = "Array contains " + valueToCheck;
            }
            else
            {
                TextBox4.ForeColor = Color.Red;
                TextBox4.Text = "Array does not contain " + valueToCheck;
            }
        }
    }
}