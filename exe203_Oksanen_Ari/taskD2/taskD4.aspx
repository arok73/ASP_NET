<%@ Page Title="" Language="C#" MasterPageFile="~/taskD4.Master" AutoEventWireup="true" CodeBehind="taskD4.aspx.cs" Inherits="taskD4.taskD41" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 165px;
            height: 97px;
        }
        .auto-style4 {
            width: 436px;
            height: 97px;
        }
        .auto-style5 {
            width: 165px;
            height: 41px;
        }
        .auto-style6 {
            width: 436px;
            height: 41px;
        }
        .auto-style7 {
            width: 165px;
            height: 38px;
        }
        .auto-style8 {
            width: 436px;
            height: 38px;
        }
        .auto-style9 {
            width: 165px;
            height: 181px;
        }
        .auto-style10 {
            width: 436px;
            height: 181px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h1>Array calculations</h1>
        <div class="column_1">
            <hr>
            <!-- table for aligning textboxes and buttons-->
            <table style="width:50%">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button6" runat="server" Text="Fill &amp; Print Array" Width="160px" OnClick="Button6_Click" />
                    <br />
                    <br />
                    <asp:Button ID="Button4" runat="server" Text="Sort array" OnClick="Button4_Click" Width="160px" />
                </td>
                <td class="auto-style10">
                    <asp:ListBox ID="ListBox1" runat="server" Height="163px" Width="327px">
                        <asp:ListItem Value="Array of 20 random numbers">Array of 20 random numbers (1-500)</asp:ListItem>
                    </asp:ListBox>
                </td>
                </tr>
                <tr>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" Text="Calculate sum &amp; average" OnClick="Button1_Click" Width="160px" />
                    </td>
                    <td class="auto-style8">
                    <asp:TextBox ID="TextBox1" runat="server" Width="440px" ReadOnly="True"></asp:TextBox>
                </td>
                </tr>
                <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button2" runat="server" Text="Search min/max" OnClick="Button2_Click" Width="160px" />
                    </td>
                    <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Width="440px" ReadOnly="True"></asp:TextBox>
                </td>
                </tr>
                <tr>
                <td class="auto-style3">
                    
                    <asp:Button ID="Button3" runat="server" Text="Check is value in array" OnClick="Button3_Click" Width="160px" ValidationGroup="Group1" />
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server" Width="440px" ValidationGroup="Group1"></asp:TextBox>
                
                    <asp:TextBox ID="TextBox4" runat="server" Width="440px" ReadOnly="True"></asp:TextBox>
                </td>
                </tr>
                <tr>
                <td>        
                </td>
                    <td>        
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Value is required!" ControlToValidate="TextBox3" ForeColor="#993300" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                    </td>
                     
                </tr>
                
               
           
        </table>
        </div>

    </div>
</asp:Content>
