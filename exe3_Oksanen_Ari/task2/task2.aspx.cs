using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task2
{
    public partial class task2 : System.Web.UI.Page
    {
        // create dictionary with keys of alphabets and corresponding morse code values 
        Dictionary<string, string> morse_code = new Dictionary<string, string>() { { "a", ".-" }, { "b", "-..." }, { "c", "-.-." }, { "d", "-.." }, { "e", "." },
                { "f", "..-." }, { "g", "--." }, { "h", "...." }, { "i", ".." }, { "j", ".---" }, { "k", "-.-" }, { "l", ".-.." }, { "m", "--" }, { "n", "-." },
                { "o", "---" }, { "p", ".--." }, { "q", "--.-" }, { "r", ".-." }, { "s", "..." }, { "t", "-" }, { "u", "..-" }, { "v", "...-" },
                { "w", ".--" }, { "x", "-..-" }, { "y", "-.--" }, { "z", "--.." }, { "å", ".--.-" }, { "ä", ".-.-" }, { "ö", "---." } };

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // clear TextBox2
            TextBox2.Text = string.Empty;

            // translate TextBox1 text to lowercase and add to variable
            var word_to_translate = TextBox1.Text.ToLower();

            // iterate through  characters in variable word_to_translate 
            foreach (char c in word_to_translate)
            {
                // if character is space add " / " to TextBox3
                if (c.ToString() == " ")
                {
                    TextBox2.Text += "  /  ";
                }
                // add corresponding value from dictionary to TextBox2
                else
                {
                    TextBox2.Text += morse_code[c.ToString()].ToString() + "  ";
                }

            }

        }
        // button action to clear textboxes
        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
        }
    }
}