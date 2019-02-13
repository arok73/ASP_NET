<%@ Page Title="" Language="C#" MasterPageFile="~/SiteB4.Master" AutoEventWireup="true" CodeBehind="taskB4.aspx.cs" Inherits="taskB4.taskB4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
            <h1>Money converter</h1>
        <div class="column_1">
            <table>
            <tr>
                <!-- table for aligning textboxes and buttons-->
                <td><asp:Label ID="Label1" class="lbl" runat="server" Text="Amount of euros"></asp:Label></td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" class="lbl" runat="server" Text="50€"></asp:Label></td>
                <td><asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" class="lbl" runat="server" Text="20€"></asp:Label></td>
                <td><asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label4" class="lbl" runat="server" Text="10€"></asp:Label></td>
                <td><asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label5" class="lbl" runat="server" Text="5€"></asp:Label></td>
                <td><asp:TextBox ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label6" class="lbl" runat="server" Text="Remaining euros"></asp:Label></td>
                <td><asp:TextBox ID="TextBox6" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Button ID="Button1" class="button1" runat="server" Text="Calculate euros" OnClick="Button1_Click" Height="30px" Width="150px" ValidationGroup="Group1" /></td>
                <td><asp:Button ID="Button2" class="button2" runat="server" Text="Clear Text" Height="30px" OnClick="Button2_Click" Width="150px" /></td>
            </tr>
            </table>
             </div>
        <div class="column_2">
          <table>
            <tr>
                <!-- textbox validators -->
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Amount of euros is required" ForeColor="#CC0000" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                <td><asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Min amount is 1 euro" ForeColor="#CC0000" MaximumValue="1000000000" MinimumValue="1" Type="Double" ValidationGroup="Group1"></asp:RangeValidator></td>
            </tr>
            </table>
        </div>
    </div>
</asp:Content>
