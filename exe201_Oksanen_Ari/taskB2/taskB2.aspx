<%@ Page Title="" Language="C#" MasterPageFile="~/SiteB2.Master" AutoEventWireup="true" CodeBehind="taskB2.aspx.cs" Inherits="taskB2.taskB2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h1>BMI Calculator</h1>
        <div class="column_1">
            <table>
                <tr>
                    <!-- table for aligning textboxes and buttons-->
                    <td><asp:Label ID="Label1" class="lbl" runat="server" Text="Weight (kg)"></asp:Label></td>
                    <td class="auto-style1"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" class="lbl" runat="server" Text="Height (m)"></asp:Label></td>
                    <td class="auto-style1"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" class="lbl" runat="server" Text="BMI"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="Button1" class="button1" runat="server" Text="Calculate BMI" OnClick="Button1_Click" Height="30px" Width="150px" ValidationGroup="Group1" /></td>
                    <td><asp:Button ID="Button2" class="button2" runat="server" Text="Clear Text" Height="30px" OnClick="Button2_Click" Width="150px" /></td>
                </tr>
            </table>
        </div>
        <div class="column_2">
            <table>
                <tr>
                    <!-- textbox validators -->
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Weight is required" ValidationGroup="Group1" ControlToValidate="TextBox1" ForeColor="#CC0000"></asp:RequiredFieldValidator></td>
                    <td><asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Min Weight is 1" ControlToValidate="TextBox1" Type="Double" MinimumValue="1" ForeColor="#CC0000" ValidationGroup="Group1" MaximumValue="1000000000"></asp:RangeValidator></td>
                </tr>
                <tr>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Height is required" ValidationGroup="Group1" ControlToValidate="TextBox2" ForeColor="#CC0000"></asp:RequiredFieldValidator></td>
                    <td><asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Min Height is 1" ControlToValidate="TextBox2" ValidationGroup="Group1" MinimumValue="0" ForeColor="#CC0000" MaximumValue="1000000000" Type="Double"></asp:RangeValidator></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
