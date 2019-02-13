<%@ Page Title="" Language="C#" MasterPageFile="~/SiteB1.Master" AutoEventWireup="true" CodeBehind="taskB1.aspx.cs" Inherits="taskB1.taskB1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h1>OHM Calculator</h1>
        <div class="column_1">
            <!-- table for aligning textboxes and buttons-->
            <table>
                <tr>
                    <td><asp:Label ID="Label1" class="lbl" runat="server" Text="Voltage"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" class="lbl" runat="server" Text="Current"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" class="lbl" runat="server" Text="Resistance"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="Button1" class="button1" runat="server" Text="Calculate Resistance" OnClick="Button1_Click" Height="30px" ValidationGroup="Group1" Width="150px" /></td>
                    <td><asp:Button ID="Button2" class="button2" runat="server" Text="Clear Text" Height="30px" OnClick="Button2_Click"  Width="150px" /></td>
                </tr>
            </table>
        </div>
        <div class="column_2">
            <table>
                <tr>
                    <!-- textbox validators -->
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Voltage is required" ControlToValidate="TextBox1" ForeColor="#CC0000" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                    <td><asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Min Voltage Value is 0" ControlToValidate="TextBox1" ForeColor="#CC0000" MaximumValue="1000000000" MinimumValue="0" Type="Double" ValidationGroup="Group1"></asp:RangeValidator></td>
                </tr>
                <tr>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Current is required" ControlToValidate="TextBox2" ForeColor="#CC0000" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                    <td><asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Min Current Value is 0" ControlToValidate="TextBox2" ForeColor="#CC0000" MaximumValue="1000000000" MinimumValue="0" Type="Double" ValidationGroup="Group1"></asp:RangeValidator></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
