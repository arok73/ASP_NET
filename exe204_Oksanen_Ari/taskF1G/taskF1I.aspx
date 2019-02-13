<%@ Page Title="" Language="C#" MasterPageFile="~/taskF1I.Master" AutoEventWireup="true" CodeBehind="taskF1I.aspx.cs" Inherits="taskF1I.taskF1I1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h1>Class Exercises</h1>
        <div class="task_1">
            <div class="borders">
            <hr>
            <h2>taskF1I</h2>
            <h3>Computer class and subclasses Laptop and Desktop</h3>
            
            <div class="column"> <!-- left side column -->

            <!-- table for aligning textboxes and buttons-->
            <table>
                <tr>
                    <td><asp:Label ID="Label1" class="lbl" runat="server" Text="Type (1:Desktop | 2:Laptop)"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                        <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" class="lbl" runat="server" Text="Mark"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" class="lbl" runat="server" Text="Model"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Add to List" OnClick="Button1_Click" CssClass="button" /></td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Clear Textboxes" CssClass="button" OnClick="Button2_Click" /></td>
                </tr>
            </table>
            </div>
            <div class="column"> <!-- right side column -->

            <asp:GridView ID="GridView1" runat="server" Width="50%" CssClass="gridstyle" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"  RowStyle-CssClass="rows" 
                AllowPaging="True">
            </asp:GridView>
            </div>
            </div>
         </div>
    </div>
</asp:Content>
