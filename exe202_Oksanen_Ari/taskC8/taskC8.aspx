<%@ Page Title="" Language="C#" MasterPageFile="~/taskC8.Master" AutoEventWireup="true" CodeBehind="taskC8.aspx.cs" Inherits="taskC8.taskC81" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        margin-right: 8px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h1>Morse Code Translator</h1>
        <div class="column_1">
            <hr>
            <!-- table for aligning textboxes and buttons-->
            <table>
                <tr>
                    <td><asp:Label ID="Label1" class="lbl" runat="server" Text="Words to translate"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server" Width="350px" ValidationGroup="Group1" CssClass="auto-style1"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" class="lbl" runat="server" Text="Words in Morse Code"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox3" runat="server" Width="350px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="Button1" class="button" runat="server" Text="Translate to Morse Code" OnClick="Button1_Click" Height="30px" ValidationGroup="Group1" Width="170px" /></td>
                    <td><asp:Button ID="Button2" class="button" runat="server" Text="Clear Text" Height="30px" OnClick="Button2_Click"  Width="150px" /></td>
                </tr>
            </table>
        </div>
        <div class="column_2">
            <hr>
            <table>
                <tr>
                    <!-- textbox validators -->
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter the word to translate!" ControlToValidate="TextBox1" ForeColor="#CC0000" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                    <td class="auto-style1">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only letters allowed!" ValidationGroup="Group1" ValidationExpression="^[a-zA-Z\s]+$" ControlToValidate="TextBox1" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </asp:Content>
