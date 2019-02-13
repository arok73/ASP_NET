<%@ Page Title="" Language="C#" MasterPageFile="~/taskF1B.Master" AutoEventWireup="true" CodeBehind="taskF1B.aspx.cs" Inherits="taskF1B.taskF1B1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/taskF1B_Styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h1>Company - Department - Worker</h1>
        <div class="column_1">
            <hr>
            <!-- table for aligning textboxes and buttons-->
            
            <table class="lb_table">
                <tr>
                    <td class="lbl_td">
                        <asp:Label class="lbl" ID="Label1" runat="server" Text="Company name"></asp:Label>
                    </td>
                    <td class="txt_td">
                        <asp:TextBox class="txtbox" ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl_td">
                        <asp:Label class="lbl" ID="Label2" runat="server" Text="Department name"></asp:Label>
                    </td>
                    <td class="txt_td">
                        <asp:TextBox class="txtbox" ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl_td">
                        <asp:Label class="lbl" ID="Label3" runat="server" Text="Worker name"></asp:Label>
                    </td>
                    <td class="txt_td">
                        <asp:TextBox class="txtbox" ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><asp:Button ID="Button1" runat="server" Text="Show Company info" OnClick="Button1_Click" /></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
        </div>
        <div class="column_2">
            <hr>
           
        </div>
    </div>
</asp:Content>
