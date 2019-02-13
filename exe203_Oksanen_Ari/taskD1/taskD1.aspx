<%@ Page Title="" Language="C#" MasterPageFile="~/taskD1.Master" AutoEventWireup="true" CodeBehind="taskD1.aspx.cs" Inherits="taskD1.taskD11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 90px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Arrays</h1>
    <hr />
    <div class="upper-content">
    <table>
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="Label">City 1:</asp:Label></td>
            <td><asp:TextBox runat="server" ID="TextBox1" Width="250px"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="City 1 is required field" ValidationGroup="Group1" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator></td>
            
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Label">City 2:</asp:Label></td>
            <td><asp:TextBox runat="server" ID="TextBox2" Width="250px"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="City 2 is required field" ValidationGroup="Group1" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator></td>

        </tr>
        <tr>
            <td><asp:Label ID="Label3" runat="server" Text="Label">City 3:</asp:Label></td>
            <td><asp:TextBox runat="server" ID="TextBox3" Width="250px"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="City 3 is required field" ValidationGroup="Group1" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator></td>

        </tr>
        <tr>
            <td><asp:Label ID="Label4" runat="server" Text="Label">City 4:</asp:Label></td>
            <td><asp:TextBox ID="TextBox4" runat="server" Width="249px"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="City 4 is required field" ValidationGroup="Group1" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator></td>

        </tr>
    </table>
        
    <hr />
    </div>
    <div class="listbox">
        <table style="width:50%">
            <tr>
                <td class="listboxLabel">
                    <asp:Label ID="Label5" runat="server" Text="Cities Array" Width="80px"></asp:Label>
                </td>
                <td>
                    <asp:ListBox ID="ListBox1" runat="server" Height="163px" Width="327px"></asp:ListBox>
                </td>
                <td class="listboxLabel">
                    <asp:Label ID="Label6" runat="server" Text="Numbers Array" Width="100px"></asp:Label>
                </td>
                <td>
                    <asp:ListBox ID="ListBox2" runat="server" Height="163px" Width="327px"></asp:ListBox>
                </td>
            </tr>
        </table>
        <hr />
    </div>
    
   
    <div class="bottom-content">
        <table style="width:50%">
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Width="110px"></asp:Label>
                </td>
                <td><asp:Button ID="Button1" runat="server" Text="Save cities to array" OnClick="Button1_Click" Width="259px" /></td>
                <td>
                    <asp:Label ID="Label8" runat="server" Width="180px"></asp:Label>
                </td>
                <td><asp:Button ID="Button3" runat="server" Text="Fill array with 500 numbers" OnClick="Button3_Click" /></td>
            </tr>
        </table>
    </div>
</asp:Content>
