using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taskD1
{
    public partial class taskD11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            ListBox1.Items.Clear();
            // create array with 4 elements and fill with textbox values
            string[] cityList = new string[4];
            cityList[0] = TextBox1.Text;
            cityList[1] = TextBox2.Text;
            cityList[2] = TextBox3.Text;
            cityList[3] = TextBox4.Text;

            // add array elements to ListBox1
            for (int i = 0; i < cityList.Length; i++)
            {
                ListBox1.Items.Add(((i + 1) + ". " + cityList.ElementAt(i)));
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // create array with 500 elements and fill with random numbers between 1000-5000
            ListBox2.Items.Clear();
            Random rnd = new Random();
            int[] rndNumbers = new int[500];

            for (int i = 0; i < 500; i++)
            {
                int numberToArray = rnd.Next(1000, 5000);
                rndNumbers[i] = numberToArray;
            }
            // add array elements to ListBox2
            for (int i = 0; i < rndNumbers.Length; i++)
            {
                ListBox2.Items.Add(((i + 1) + ". " + rndNumbers.ElementAt(i)));
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }
    }
}