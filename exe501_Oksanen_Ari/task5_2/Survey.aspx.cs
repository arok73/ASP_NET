using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data.OleDb;
using System.Configuration;

namespace task5_2
{
    public partial class task5_2 : System.Web.UI.Page
    {
        int selectedTeam = 0;
        int selectedValue1 = 0;
        int selectedValue2 = 0;
        int selectedValue3 = 0;
        int selectedValue4 = 0;
        int selectedValue5 = 0;
        int selectedValue6 = 0;
        int selectedValue7 = 0;
        int selectedValue8 = 0;
        int selectedValue9 = 0;
        int selectedValue10 = 0;
        int selectedValue11 = 0;
        int selectedValue12 = 0;
        int selectedValue13 = 0;
        int selectedValue14 = 0;
        int selectedValue15 = 0;
        int selectedValue16 = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 0; i < 5; i++)
            {
                radioButtonList1.Items[i].Attributes.Add("class", "btn btn-default btn-ans");
                radioButtonList2.Items[i].Attributes.Add("class", "btn btn-default btn-ans");
                radioButtonList3.Items[i].Attributes.Add("class", "btn btn-default btn-ans");
                radioButtonList4.Items[i].Attributes.Add("class", "btn btn-default btn-ans");
                radioButtonList5.Items[i].Attributes.Add("class", "btn btn-default btn-ans");
                radioButtonList6.Items[i].Attributes.Add("class", "btn btn-default btn-ans");
                radioButtonList7.Items[i].Attributes.Add("class", "btn btn-default btn-ans");
                radioButtonList8.Items[i].Attributes.Add("class", "btn btn-default btn-ans");
                radioButtonList9.Items[i].Attributes.Add("class", "btn btn-default btn-ans");
                radioButtonList10.Items[i].Attributes.Add("class", "btn btn-default btn-ans");
                radioButtonList11.Items[i].Attributes.Add("class", "btn btn-default btn-ans");
                radioButtonList12.Items[i].Attributes.Add("class", "btn btn-default btn-ans");
                radioButtonList13.Items[i].Attributes.Add("class", "btn btn-default btn-ans");
                radioButtonList14.Items[i].Attributes.Add("class", "btn btn-default btn-ans");
                radioButtonList15.Items[i].Attributes.Add("class", "btn btn-default btn-ans");
                radioButtonList16.Items[i].Attributes.Add("class", "btn btn-default btn-ans");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedTeam = Convert.ToInt32(DropDownList1.SelectedItem.Value);
            ViewState["selectedTeam"] = selectedTeam;
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedValue1 = Convert.ToInt32(radioButtonList1.SelectedValue);
            ViewState["selectedValue1"] = selectedValue1;
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedValue2 = Convert.ToInt32(radioButtonList2.SelectedValue);
        }

        protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedValue3 = Convert.ToInt32(radioButtonList3.SelectedValue);
        }

        protected void RadioButtonList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedValue4 = Convert.ToInt32(radioButtonList4.SelectedValue);
        }

        protected void RadioButtonList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedValue5 = Convert.ToInt32(radioButtonList5.SelectedValue);
        }

        protected void RadioButtonList6_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedValue6 = Convert.ToInt32(radioButtonList6.SelectedValue);
        }

        protected void RadioButtonList7_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedValue7 = Convert.ToInt32(radioButtonList7.SelectedValue);
        }

        protected void RadioButtonList8_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedValue8 = Convert.ToInt32(radioButtonList8.SelectedValue);
        }

        protected void RadioButtonList9_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedValue9 = Convert.ToInt32(radioButtonList9.SelectedValue);
        }

        protected void RadioButtonList10_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedValue10 = Convert.ToInt32(radioButtonList10.SelectedValue);
        }

        protected void RadioButtonList11_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedValue11 = Convert.ToInt32(radioButtonList11.SelectedValue);
        }

        protected void RadioButtonList12_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedValue12 = Convert.ToInt32(radioButtonList12.SelectedValue);
        }

        protected void RadioButtonList13_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedValue13 = Convert.ToInt32(radioButtonList13.SelectedValue);
        }

        protected void RadioButtonList14_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedValue14 = Convert.ToInt32(radioButtonList14.SelectedValue);
        }

        protected void RadioButtonList15_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedValue15 = Convert.ToInt32(radioButtonList15.SelectedValue);
        }

        protected void RadioButtonList16_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedValue16 = Convert.ToInt32(radioButtonList16.SelectedValue);
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {   
            if(ViewState["selectedTeam"] == null)
                {
                    ViewState["selectedTeam"] = 0;
                }
            
            OleDbConnection con = new OleDbConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionStringSurvey"].ToString();
            con.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.CommandText = "INSERT INTO [AnswersDB] (TeamID, Meaningfulness, Challenging, Responsibilities, Stress, InformationFlow, YourOpinionsListened, " +
                "FeedBack, ManagerInterest, Training, WorkInFuture, CompanyMission, CompanyDirection, Respect, Salary, Benefits, JobSatisfaction) values (@team, @meaning, " +
                "@challening, @responsibilities, @stress, @information, @opinions, @feedback, @interest, @training, @future, @mission, @direction, @respect, @salary, @benefits, " +
                "@satisfaction)";
            cmd.Parameters.AddWithValue("@team", ViewState["selectedTeam"]);
            cmd.Parameters.AddWithValue("@meaning", ViewState["selectedValue1"]);
            cmd.Parameters.AddWithValue("@challening", selectedValue2);
            cmd.Parameters.AddWithValue("@responsibilities", selectedValue3);
            cmd.Parameters.AddWithValue("@stress", selectedValue4);
            cmd.Parameters.AddWithValue("@information", selectedValue5);
            cmd.Parameters.AddWithValue("@opinions", selectedValue6);
            cmd.Parameters.AddWithValue("@feedback", selectedValue7);
            cmd.Parameters.AddWithValue("@interest", selectedValue8);
            cmd.Parameters.AddWithValue("@training", selectedValue9);
            cmd.Parameters.AddWithValue("@future", selectedValue10);
            cmd.Parameters.AddWithValue("@mission", selectedValue11);
            cmd.Parameters.AddWithValue("@direction", selectedValue12);
            cmd.Parameters.AddWithValue("@respect", selectedValue13);
            cmd.Parameters.AddWithValue("@salary", selectedValue14);
            cmd.Parameters.AddWithValue("@benefits", selectedValue15);
            cmd.Parameters.AddWithValue("@satisfaction", selectedValue16);
            cmd.Connection = con;
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                var message = new System.Web.Script.Serialization.JavaScriptSerializer().Serialize("Thank you for your answers!");
                var script = string.Format("alert({0});window.location ='Survey.aspx';", message);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", script, true);
            }
            con.Close();
        }
    }

    
}