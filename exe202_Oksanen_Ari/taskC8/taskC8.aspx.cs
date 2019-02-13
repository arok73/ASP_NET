using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace taskC8
{
    public partial class taskC81 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // clear TextBox3
            TextBox3.Text = string.Empty;

            // create dictionary with keys of alphabets and corresponding morse code values 
            Dictionary<string, string> morse_code = new Dictionary<string, string>() { { "a", ".-" }, { "b", "-..." }, { "c", "-.-." }, { "d", "-.." }, { "e", "." },
                { "f", "..-." }, { "g", "--." }, { "h", "...." }, { "i", ".." }, { "j", ".---" }, { "k", "-.-" }, { "l", ".-.." }, { "m", "--" }, { "n", "-." },
                { "o", "---" }, { "p", ".--." }, { "q", "--.-" }, { "r", ".-." }, { "s", "..." }, { "t", "-" }, { "u", "..-" }, { "v", "...-" },
                { "w", ".--" }, { "x", "-..-" }, { "y", "-.--" }, { "z", "--.." }, { "å", ".--.-" }, { "ä", ".-.-" }, { "ö", "---." } };

            // translate TextBox1 text to lowercase and add to variable
            var word_to_translate = TextBox1.Text.ToLower();

            // iterate through  characters in variable word_to_translate 
            foreach (char c in word_to_translate)
            {
                // if character is space add " X | " to TextBox3
                if (c.ToString() == " ")
                {
                    TextBox3.Text += " X | ";
                }
                // add corresponding value from dictionary to TextBox3
                else
                { 
                    TextBox3.Text += morse_code[c.ToString()].ToString() + " | ";
                }
                    
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