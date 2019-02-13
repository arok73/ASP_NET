<%@ Page Title="Result Website" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="task5_2.Results" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">
        <div class="row">
             <p>
                 <asp:Label ID="Label1" runat="server" Text="Select a chart"></asp:Label>
             </p>
            <%--dropdownlist to select average results of teams in chart--%>
             <p><asp:DropDownList ID="ChartDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ChartDropDownList_SelectedIndexChanged">
                <asp:ListItem Value="Avg of Meaningfulness">Meaningfulness</asp:ListItem>
                <asp:ListItem Value="Avg of Challenging">Challenging</asp:ListItem>
                <asp:ListItem Value="Avg of Responsibilities">Responsibilities</asp:ListItem>
                <asp:ListItem Value="Avg of Stress">Stress</asp:ListItem>
                <asp:ListItem Value="Avg of InformationFlow">Information Flow</asp:ListItem>
                <asp:ListItem Value="Avg of YourOpinionsListened">Your Opinions</asp:ListItem>
                <asp:ListItem Value="Avg of FeedBack">Feedback</asp:ListItem>
                <asp:ListItem Value="Avg of ManagerInterest">Manager Interest</asp:ListItem>
                <asp:ListItem Value="Avg of Training">Training</asp:ListItem>
                <asp:ListItem Value="Avg of WorkInFuture">Work In Future</asp:ListItem>
                <asp:ListItem Value="Avg of CompanyMission">Company Mission</asp:ListItem>
                <asp:ListItem Value="Avg of CompanyDirection">Company Direction</asp:ListItem>
                <asp:ListItem Value="Avg of Respect">Respect</asp:ListItem>
                <asp:ListItem Value="Avg of Salary">Salary</asp:ListItem>
                <asp:ListItem Value="Avg of Benefits">Benefits</asp:ListItem>
                <asp:ListItem Value="Avg of JobSatisfaction">Job Satisfaction</asp:ListItem>
                </asp:DropDownList></p>
    <%--chart to display results of the survey--%>
    <asp:Chart ID="ChartSurvey" runat="server" DataSourceID="SqlDataSource1" Height="369px" Width="475px">
        <Series>
            <asp:Series Name="Series1" ChartType="Doughnut" XValueMember="Team" YValueMembers="Avg Of Meaningfulness" ChartArea="ChartArea1"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
        <Titles>
            <asp:Title Name="" Font="Microsoft Sans Serif; 14pt">
            </asp:Title>
        </Titles>
    </asp:Chart>
<%--datasource to access database SurveyDB.MDF--%>   
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringSurvey %>" ProviderName="<%$ ConnectionStrings:ConnectionStringSurvey.ProviderName %>" SelectCommand="SELECT DISTINCTROW TeamDB.Team, Avg(AnswersDB.Meaningfulness) AS [Avg Of Meaningfulness], Avg(AnswersDB.Challenging) AS [Avg Of Challenging], Avg(AnswersDB.Responsibilities) AS [Avg Of Responsibilities], Avg(AnswersDB.Stress) AS [Avg Of Stress], Avg(AnswersDB.InformationFlow) AS [Avg Of InformationFlow], Avg(AnswersDB.YourOpinionsListened) AS [Avg Of YourOpinionsListened], Avg(AnswersDB.FeedBack) AS [Avg Of FeedBack], Avg(AnswersDB.ManagerInterest) AS [Avg Of ManagerInterest], Avg(AnswersDB.Training) AS [Avg Of Training], Avg(AnswersDB.WorkInFuture) AS [Avg Of WorkInFuture], Avg(AnswersDB.CompanyMission) AS [Avg Of CompanyMission], Avg(AnswersDB.CompanyDirection) AS [Avg Of CompanyDirection], Avg(AnswersDB.Respect) AS [Avg Of Respect], Avg(AnswersDB.Salary) AS [Avg Of Salary], Avg(AnswersDB.Benefits) AS [Avg Of Benefits], Avg(AnswersDB.JobSatisfaction) AS [Avg Of JobSatisfaction]
FROM TeamDB INNER JOIN AnswersDB ON TeamDB.[TeamID] = AnswersDB.[TeamID]
GROUP BY TeamDB.Team;"></asp:SqlDataSource>
    <br />
        </div>
    </div>
</asp:Content>
