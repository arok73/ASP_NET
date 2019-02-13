using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task1
{
    public partial class task1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Set textboxes to readonly
            txtBxUpper.ReadOnly = true;
            txtBxResult.ReadOnly = true;
      
        }

        // Button actions
        protected void btnOne_Click(object sender, EventArgs e)
        {
            if (txtBxResult.Text == "0")
            {
                txtBxResult.Text = string.Empty;
                txtBxResult.Text += "1";
            }
            else
            {
                txtBxResult.Text += "1";
            }
        }

        protected void btnTwo_Click(object sender, EventArgs e)
        {
            if (txtBxResult.Text == "0")
            {
                txtBxResult.Text = string.Empty;
                txtBxResult.Text += "2";
            }
            else
            {
                txtBxResult.Text += "2";
            }
        }

        protected void btnThree_Click(object sender, EventArgs e)
        {
            if (txtBxResult.Text == "0")
            {
                txtBxResult.Text = string.Empty;
                txtBxResult.Text += "3";
            }
            else
            {
                txtBxResult.Text += "3";
            }
        }

        protected void btnFour_Click(object sender, EventArgs e)
        {
            if (txtBxResult.Text == "0")
            {
                txtBxResult.Text = string.Empty;
                txtBxResult.Text += "4";
            }
            else
            {
                txtBxResult.Text += "4";
            }
        }

        protected void btnFive_Click(object sender, EventArgs e)
        {
            if (txtBxResult.Text == "0")
            {
                txtBxResult.Text = string.Empty;
                txtBxResult.Text += "5";
            }
            else
            {
                txtBxResult.Text += "5";
            }
        }

        protected void btnSix_Click(object sender, EventArgs e)
        {
            if (txtBxResult.Text == "0")
            {
                txtBxResult.Text = string.Empty;
                txtBxResult.Text += "6";
            }
            else
            {
                txtBxResult.Text += "6";
            }
        }

        protected void btnSeven_Click(object sender, EventArgs e)
        {
            if (txtBxResult.Text == "0")
            {
                txtBxResult.Text = string.Empty;
                txtBxResult.Text += "7";
            }
            else
            {
                txtBxResult.Text += "7";
            }
        }

        protected void btnEight_Click(object sender, EventArgs e)
        {
            if (txtBxResult.Text == "0")
            {
                txtBxResult.Text = string.Empty;
                txtBxResult.Text += "8";
            }
            else
            {
                txtBxResult.Text += "8";
            }
        }

        protected void btnNine_Click(object sender, EventArgs e)
        {
            if (txtBxResult.Text == "0")
            {
                txtBxResult.Text = string.Empty;
                txtBxResult.Text += "9";
            }
            else
            {
                txtBxResult.Text += "9";
            }
        }

        protected void btnZero_Click(object sender, EventArgs e)
        {
            if (txtBxResult.Text == "0")
            {
                txtBxResult.Text += "";

            }
            else
            {
                txtBxResult.Text += "0";
            }
        }

        protected void btnComma_Click(object sender, EventArgs e)
        {
            if(txtBxResult.Text.Contains(","))
            {
                txtBxResult.Text += "";
            }
            else
            {
                txtBxResult.Text += ",";
            }
        }
        // Calculation button actions. Operation type and values are stored to ViewState.
        protected void btnAddition_Click(object sender, EventArgs e)
        {
            string operation_check = "+";
            ViewState["operation"] = operation_check;
            decimal values_to_add = Convert.ToDecimal(txtBxResult.Text);
            ViewState["values"] = values_to_add;
            txtBxUpper.Text = txtBxResult.Text + " + ";
            txtBxResult.Text = "0";
        }

        protected void btnSubtraction_Click(object sender, EventArgs e)
        {
            string operation_check = "-";
            ViewState["operation"] = operation_check;
            decimal values_to_add = Convert.ToDecimal(txtBxResult.Text);
            ViewState["values"] = values_to_add;
            txtBxUpper.Text = txtBxResult.Text + " - ";
            txtBxResult.Text = "0";
        }

        protected void btnMultiplication_Click(object sender, EventArgs e)
        {
            string operation_check = "x";
            ViewState["operation"] = operation_check;
            decimal values_to_add = Convert.ToDecimal(txtBxResult.Text);
            ViewState["values"] = values_to_add;
            txtBxUpper.Text = txtBxResult.Text + " X ";
            txtBxResult.Text = "0";
        }

        protected void btnDivision_Click(object sender, EventArgs e)
        {
            string operation_check = "/";
            ViewState["operation"] = operation_check;
            decimal values_to_add = Convert.ToDecimal(txtBxResult.Text);
            ViewState["values"] = values_to_add;
            txtBxUpper.Text = txtBxResult.Text + " / ";
            txtBxResult.Text = "0";
        }
        // Actions to calculations. Operation types and values are restored from ViewState.
        protected void btnEqual_Click(object sender, EventArgs e)
        {
            if (ViewState["operation"].ToString() == "+")
            {
                decimal result = Convert.ToDecimal(ViewState["values"]) + Convert.ToDecimal(txtBxResult.Text);
                txtBxUpper.Text += txtBxResult.Text;
                txtBxResult.Text = string.Empty;
                txtBxResult.Text = result.ToString();
            }
            else if (ViewState["operation"].ToString() == "-")
            {
                decimal result = Convert.ToDecimal(ViewState["values"]) - Convert.ToDecimal(txtBxResult.Text);
                txtBxUpper.Text += txtBxResult.Text;
                txtBxResult.Text = string.Empty;
                txtBxResult.Text = result.ToString();
            }
            else if (ViewState["operation"].ToString() == "x")
            {
                decimal result = Convert.ToDecimal(ViewState["values"]) * Convert.ToDecimal(txtBxResult.Text);
                txtBxUpper.Text += txtBxResult.Text;
                txtBxResult.Text = string.Empty;
                txtBxResult.Text = result.ToString();
            }
            else if (ViewState["operation"].ToString() == "/")
            {
                
                try
                {
                    decimal result = Convert.ToDecimal(ViewState["values"]) / Convert.ToDecimal(txtBxResult.Text);
                    txtBxUpper.Text += txtBxResult.Text;
                    txtBxResult.Text = string.Empty;
                    if(result.ToString().Length < 19)
                    {
                    txtBxResult.Text = result.ToString();
                    }
                    else
                    {
                        int round_value;
                        string[] digits = result.ToString().Split(',');
                        round_value = digits[0].Length;

                        txtBxResult.Text = Math.Round(result, (17-round_value)).ToString();
                    }
                }
                // Catch Zero division error 
                catch (Exception)
                {
                    string alertString = "Zero division not allowed!";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alertString + "');", true);

                }
            }
            // After clicking Equal-button make call to function to disable all buttons on form except Clear-button.
            DisableControls(Page, false);
        }

        // Button action to clear textboxes
        protected void btnClear_Click(object sender, EventArgs e)
        {
            // Call to function to enable all buttons on form
            DisableControls(Page, true);

            txtBxResult.Text = string.Empty;
            txtBxUpper.Text = string.Empty;
            txtBxResult.Text = "0";
        }

        // Function to disable all buttons on form except Clear-button
        protected void DisableControls(Control parent, bool State)
        {
            // Iterate through controls recursively
            foreach (Control c in parent.Controls)
            {
                if (c is Button)
                {
                    ((Button)(c)).Enabled = State;
                }

                DisableControls(c, State);
            }
            btnClear.Enabled = true;
        }
    }
}