using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;
using System.Drawing;

namespace task5_2
{
    public partial class Results : System.Web.UI.Page
    {
        // Title class instance constructor for charts title
        Title chartTitle = new Title();

        // titles are stored in array
        string[] dropDownArray = { "How meaningful do you find your work?", "How challenging do you find your work?",
            "Do you feel that your responsibilities are clearly defined?", "How often do you feel stressed at work in a typical week?", "How openly is information and knowledge shared throughout the company?",
            "And do you feel like your opinions are listened to?", "Do you receive actionable feedback from your coworkers?", "Does your manager show an interest in your professional development?",
            "Do you feel like we offer enough training opportunities?", "How likely are you to be working for the company in two years?", "How well do you understand our company mission?",
            "How confident are you that the company is heading in the right direction?", "How much do you feel that your work is respected and valued?", "How satisfied are you with your salary?",
            "How satisfied are you with benefits our company offers?", "How satisfied are you with your job?" };

    protected void Page_Load(object sender, EventArgs e)
        {
            // setting the default title for chart
            chartTitle = ChartSurvey.Titles.Add("How meaningful do you find your work?");
            chartTitle.Font = new Font("Arial", 16, FontStyle.Bold);
        }

        // function to action after dropdownlist item is selected
        protected void ChartDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            // setting charts Y-axis value and title based on dropdownlist value
            Series series = ChartSurvey.Series["Series1"];
            string selectedChart = ChartDropDownList.SelectedValue;
            ChartSurvey.Series["Series1"].YValueMembers = selectedChart;
            int s = ChartDropDownList.SelectedIndex;
            chartTitle.Text = dropDownArray[s];
            
        }
    }
}   