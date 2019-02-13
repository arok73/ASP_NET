<%@ Page Title="" Language="C#" MasterPageFile="~/taskC2.Master" AutoEventWireup="true" CodeBehind="taskC2.aspx.cs" Inherits="taskC2.taskC21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h1>Is number between 0-10?</h1>
        <div class="column_1">
            <hr>
            <!-- table for aligning textboxes and buttons-->
            <table>
                <tr>
                    <td><asp:Label ID="Label1" class="lbl" runat="server" Text="Number"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server" Width="200"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" class="lbl" runat="server" Text="Is number between 0-10?"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" Width="200"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="Button1" class="button" runat="server" Text="Run the test" OnClick="Button1_Click" Height="30px" ValidationGroup="Group1" Width="170px" /></td>
                    <td><asp:Button ID="Button2" class="button" runat="server" Text="Clear Text" Height="30px" OnClick="Button2_Click"  Width="150px" /></td>
                </tr>
            </table>
        </div>
        <div class="column_2">
            <hr>
            <table>
                <tr>
                    <!-- textbox validators -->
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Integer 1 is required" ControlToValidate="TextBox1" ForeColor="#CC0000" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                    <td class="auto-style1">
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Value must be integer" ForeColor="#CC0000" MaximumValue="2147483647" MinimumValue="-2147483648" Type="Integer" ValidationGroup="Group1"></asp:RangeValidator>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
