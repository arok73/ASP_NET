<%@ Page Title="" Language="C#" MasterPageFile="~/SiteB7.Master" AutoEventWireup="true" CodeBehind="taskB7.aspx.cs" Inherits="taskB7.taskB7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h1>Pisa tower free falling</h1>
        <p> A stone is dropped down from the top of Pisa tower. What is the final speed of the stone and how much time does the fall take?</p>
        <div class="column_1">
            <!-- table for aligning textboxes and buttons-->
            <table>
            <tr>
                <td><asp:Label ID="Label1" class="lbl" runat="server" Text="Final speed"></asp:Label></td>
                <td><asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" class="lbl" runat="server" Text="Falling time"></asp:Label></td>
                <td><asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:Button ID="finalSpeedButton" class="button1" runat="server" Text="Show final speed" OnClick="Button1_Click" Height="30px" Width="150px" /></td>
                <td>
                    <asp:Button ID="fallingSpeedButton" runat="server" Height="30px" OnClick="Button3_Click" Text="Show falling speed" Width="150px" />
                </td>
                <td><asp:Button ID="clearTextButton" class="button2" runat="server" Text="Clear Text" Height="30px" OnClick="Button2_Click" Width="150px" /></td>
            </tr>
            </table>
             </div>
    </div>
</asp:Content>
