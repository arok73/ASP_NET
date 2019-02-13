<%@ Page Title="" Language="C#" MasterPageFile="~/SiteB5.Master" AutoEventWireup="true" CodeBehind="taskB5.aspx.cs" Inherits="taskB5.taskB5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
            <h1>Seconds to HH:MM:SS converter</h1>
        <div class="column_1">
            <!-- table for aligning textboxes and buttons-->
            <table>
            <tr>
                <td><asp:Label ID="Label1" class="lbl" runat="server" Text="Seconds"></asp:Label></td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" class="lbl" runat="server" Text="Time"></asp:Label></td>
                <td><asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td><asp:Button ID="Button1" class="button1" runat="server" Text="Calculate time" OnClick="Button1_Click" Height="30px" Width="150px" ValidationGroup="Group1" /></td>
                <td><asp:Button ID="Button2" class="button2" runat="server" Text="Clear Text" Height="30px" OnClick="Button2_Click" Width="150px" /></td>
            </tr>
            </table>
             </div>
        <div class="column_2">
          <table>
            <tr>
                <!-- textbox validators -->
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Time is required" ForeColor="#CC0000" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                <td><asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Min amount is 1 second" ForeColor="#CC0000" MaximumValue="1000000000" MinimumValue="1" Type="Double" ValidationGroup="Group1"></asp:RangeValidator></td>
            </tr>
            </table>
        </div>
    </div>
</asp:Content>
