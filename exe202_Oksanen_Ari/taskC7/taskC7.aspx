<%@ Page Title="" Language="C#" MasterPageFile="~/taskC7.Master" AutoEventWireup="true" CodeBehind="taskC7.aspx.cs" Inherits="taskC7.taskC71" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h1>Sum of odd numbers between 1 - 51</h1>
        <div class="column_1">
            <hr>
            <!-- table for aligning textboxes and buttons-->
            <table>
                <tr>
                    <td><asp:Label ID="Label1" class="lbl" runat="server" Text="Numbers in array"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server" Width="350px" TextMode="MultiLine" Rows="4" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" class="lbl" runat="server" Text="Sum of odd numbers in array"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox3" runat="server" Width="110px" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="Button1" class="button" runat="server" Text="Calculate" OnClick="Button1_Click" Height="30px" Width="150px" /></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>