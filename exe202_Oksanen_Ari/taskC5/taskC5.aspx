<%@ Page Title="" Language="C#" MasterPageFile="~/taskC5.Master" AutoEventWireup="true" CodeBehind="taskC5.aspx.cs" Inherits="taskC5.taskC51" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h1>Solving function Ax + B = 0</h1>
        <div class="column_1">
            <hr>
            <!-- table for aligning textboxes and buttons-->
            <table>
                <tr>
                    <td><asp:Label ID="Label1" class="lbl" runat="server" Text="Value of A"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server" Width="80px"></asp:TextBox>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Value is required!" ControlToValidate="TextBox1" ForeColor="#CC0000" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" class="lbl" runat="server" Text="Value of B"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox3" runat="server" Width="80px"></asp:TextBox> </td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Value is required!" ForeColor="#CC0000" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>

                   
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" class="lbl" runat="server" Text="Value of x"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" Width="80px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="Button1" class="button" runat="server" Text="Calculate the value of x" OnClick="Button1_Click" Height="30px" ValidationGroup="Group1" Width="170px" /></td>
                    <td><asp:Button ID="Button2" class="button" runat="server" Text="Clear Text" Height="30px" OnClick="Button2_Click"  Width="150px" /></td>
                </tr>
            </table>
        </div>
        <div class="column_2">
            <hr>
            <table>
                <tr>
                    <!-- textbox validators -->
                    <td>&nbsp;</td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Characters and zero not allowed!" ForeColor="#CC0000" ValidationExpression="^-?(?!0*(\.0+)?$)(\d+|\d*\.\d+)$" ValidationGroup="Group1"></asp:RegularExpressionValidator>
                    </td>
                    
                    <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Insert numbers only!" ForeColor="#CC0000" ValidationExpression="^[0-9]\d*(\.\d+)?$" ValidationGroup="Group1"></asp:RegularExpressionValidator>
                    </td>
                    <td>

                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
