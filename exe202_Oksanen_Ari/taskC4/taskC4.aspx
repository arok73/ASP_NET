<%@ Page Title="" Language="C#" MasterPageFile="~/taskC4.Master" AutoEventWireup="true" CodeBehind="taskC4.aspx.cs" Inherits="taskC4.taskC41" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h1>How many days in month?</h1>
        <div class="column_1">
            <hr>
            <!-- table for aligning textboxes and buttons-->
            <table>
                <tr>
                    <td><asp:Label ID="Label1" class="lbl" runat="server" Text="Number of month (1-12)"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server" Width="110px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" class="lbl" runat="server" Text="Enter the year"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox3" runat="server" Width="110px" ValidationGroup="Group1"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" class="lbl" runat="server" Text="Number of days in month:"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" Width="260px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="Button1" class="button" runat="server" Text="Show the number of days" OnClick="Button1_Click" Height="30px" ValidationGroup="Group1" Width="170px" /></td>
                    <td><asp:Button ID="Button2" class="button" runat="server" Text="Clear Text" Height="30px" OnClick="Button2_Click"  Width="150px" /></td>
                </tr>
            </table>
        </div>
        <div class="column_2">
            <hr>
            <table>
                <tr>
                    <!-- textbox validators -->
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter the month number!" ControlToValidate="TextBox1" ForeColor="#CC0000" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                    <td class="auto-style1">
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Value must be integer between 1-12!" ForeColor="#CC0000" MaximumValue="12" MinimumValue="1" Type="Integer" ValidationGroup="Group1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr> <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the year!" ValidationGroup="Group1" ControlToValidate="TextBox3" ForeColor="#CC0000"></asp:RequiredFieldValidator></td>
                     <td> 
                         <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Year must be between 1-9999" ForeColor="#CC0000" MaximumValue="9999" MinimumValue="1" Type="Integer" ValidationGroup="Group1"></asp:RangeValidator></td>
                </tr>
            </table>
        </div>
    </div>
   
</asp:Content>
