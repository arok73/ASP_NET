using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace taskC7
{
    public partial class taskC71 : System.Web.UI.Page
    {
        // create new list "numbers"
        List<int> numbers = new List<int>();

        protected void Page_Load(object sender, EventArgs e)
        {
            // check if page is loaded first time and populate array if it is
            if (!Page.IsPostBack)
            {
                for (int i = 1; i < 52; i++)
                {
                    numbers.Add(i);
                }

                // print list items to textbox
                foreach (int i in numbers)
                {
                    TextBox1.Text += i.ToString() + " ";
                }
                // store list to viewstate
                ViewState["numbers"] = numbers;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // store viewstate to list "values"
            List<int> values = (List<int>)ViewState["numbers"];
            int sum_of_odds = 0;
        // iterate through all items in list "values"
        foreach (int val in values)
            // check if modulo of item of list is not zero and therefore is odd number 
            if (val % 2 != 0)
            {
                // add value of val to variable sum_of_odds every round
                sum_of_odds += val;
            }
                // print variable sum_of_odds to textbox
                TextBox3.Text = sum_of_odds.ToString();
            }
    }
}