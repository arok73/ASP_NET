<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="taskA1.aspx.cs" Inherits="taskA1.taskA1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Task A1</title>
    <link href="CSS/taskA1_Styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
    <h1>Variables</h1>
    <div class="column_1">
        <table>
            <tr>
                <td><asp:Label ID="Label1" class="label" runat="server" Text="byte"></asp:Label></td>
                <td><asp:TextBox ID="TextBox1" class="textbox" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" class="label" runat="server" Text="sbyte"></asp:Label></td>
                <td><asp:TextBox ID="TextBox2" class="textbox" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" class="label" runat="server" Text="short"></asp:Label></td>
                <td><asp:TextBox ID="TextBox3" class="textbox" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>

                <td><asp:Label ID="Label4" class="label" runat="server" Text="ushort"></asp:Label></td>
                <td><asp:TextBox ID="TextBox4" class="textbox" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label5" class="label" runat="server" Text="int"></asp:Label></td>
                <td><asp:TextBox ID="TextBox5" class="textbox" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label6" class="label" runat="server" Text="float"></asp:Label></td>
                <td><asp:TextBox ID="TextBox6" class="textbox" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label7" class="label" runat="server" Text="double"></asp:Label></td>
                <td><asp:TextBox ID="TextBox7" class="textbox" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label8" class="label" runat="server" Text="string"></asp:Label></td>
                <td><asp:TextBox ID="TextBox8" class="textbox" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label9" class="label" runat="server" Text="boolean"></asp:Label></td>
                <td><asp:TextBox ID="TextBox9" class="textbox" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
        </table>
    </div>
    </div>
</asp:Content>
