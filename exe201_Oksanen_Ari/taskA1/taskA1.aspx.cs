using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taskA1
{
    public partial class taskA1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // declaring the variables
            byte luku_a = 0;
            sbyte luku_b = -9;
            short luku_c = 30000;
            ushort luku_d = 55000;
            int luku_e = 999999;
            float luku_f = 4.55F;
            double luku_g = 5.55555555555D;
            string sana_h = "Finland";
            Boolean arvo_i = false;

            // printing variables to the textboxes and converting to string if needed
            TextBox1.Text = luku_a.ToString();
            TextBox2.Text = luku_b.ToString();
            TextBox3.Text = luku_c.ToString();
            TextBox4.Text = luku_d.ToString();
            TextBox5.Text = luku_e.ToString();
            TextBox6.Text = luku_f.ToString();
            TextBox7.Text = luku_g.ToString();
            TextBox8.Text = sana_h;
            TextBox9.Text = arvo_i.ToString();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
           
        }
    }
}