using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace taskE
{
    public partial class taskE1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // check if page is rendered first time or is it a postback 
            if (!Page.IsPostBack)
            {
                Random rnd = new Random();
                int[] numberArray = new int[20];

                // fill array with 20 random numbers between 0-40
                for (int i = 0; i < 20; i++)
                {
                    int numberToArray = rnd.Next(0, 40);
                    numberArray[i] = numberToArray;
                }
                // store array to ViewState to use it in Fill_Array() -function
                ViewState["numberArray"] = numberArray;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // store Textbox values to variables
            decimal value_1 = Convert.ToDecimal(TextBox1.Text);
            decimal value_2 = Convert.ToDecimal(TextBox2.Text);
            // pass variable values to function Value_Sum and add returned value to Textbox  
            TextBox3.Text = Value_Sum(value_1, value_2).ToString();
        }

        // function to sum up the Textbox values
        public decimal Value_Sum(decimal num_1, decimal num_2)
        {
            decimal result = num_1 + num_2;
            return result;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // clear the textboxes
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
        }

        

        protected void Button7_Click(object sender, EventArgs e)
        {
            // make sure the listbox is empty before populating it
            ListBox1.Items.Clear();
            Fill_Array();
        }

        // function to populate listbox with array of random numbers created on page load
        private void Fill_Array()
        {
            int[] numberArray = ViewState["numberArray"] as int[];

            // loop for filling the listbox and adding order number
            for (int i = 0; i < numberArray.Length; i++)
            {
                ListBox1.Items.Add(i + 1 + ". " + numberArray.ElementAt(i));
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            // clear the listbox
            ListBox2.Items.Clear();
            // call function Multiply_Array
            Multiply_Array();
        }

        // function to multiply numbers in array in Listbox1 by 2
        private void Multiply_Array()
        {
            // store ViewState of array created on page load to numberArray -array
            int[] numberArray = ViewState["numberArray"] as int[];
            // loop for filling the listbox and adding order number
            for (int i = 0; i < numberArray.Length; i++)
            {
                numberArray[i] = numberArray[i] * 2;
                ListBox2.Items.Add(i + 1 + ". " + numberArray.ElementAt(i));
            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            // store Textbox values to variables
            decimal height = Convert.ToDecimal(TextBox10.Text);
            decimal weight = Convert.ToDecimal(TextBox11.Text);
            // call function BMI_Calculator and store returned result to variable bmi_result
            int bmi_result = Convert.ToInt32(BMI_Calculator(height, weight));
            // add bmi_result value to Textbox
            TextBox12.Text = bmi_result.ToString();
        }

        // function to calculate BMI
        private decimal BMI_Calculator(decimal height, decimal weight)
        {
            decimal result = weight / height / height;
            // round result value to 2 decimals
            result = Math.Round(result, 2);
            return result;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            // clear the textboxes
            TextBox10.Text = string.Empty;
            TextBox11.Text = string.Empty;
            TextBox12.Text = string.Empty;
        }
    }
}