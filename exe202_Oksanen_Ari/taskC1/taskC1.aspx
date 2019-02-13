<%@ Page Title="" Language="C#" MasterPageFile="~/taskC1.Master" AutoEventWireup="true" CodeBehind="taskC1.aspx.cs" Inherits="taskC1.taskC11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h1>Biggest integer</h1>
        <div class="column_1">
            <hr>
            <!-- table for aligning textboxes and buttons-->
            <table>
                <tr>
                    <td><asp:Label ID="Label1" class="lbl" runat="server" Text="Integer 1"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" class="lbl" runat="server" Text="Integer 2"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" class="lbl" runat="server" Text="Integer 3"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox></td>
                </tr>
                                <tr>
                    <td><asp:Label ID="Label4" class="lbl" runat="server" Text="Biggest integer out of 3"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox></td>
                </tr>
                
                <tr>
                    <td><asp:Button ID="Button1" class="button" runat="server" Text="Reveal the biggest integer" OnClick="Button1_Click" Height="30px" ValidationGroup="Group1" Width="170px" /></td>
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
                <tr>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Integer 2 is required" ControlToValidate="TextBox2" ForeColor="#CC0000" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                    <td class="auto-style1">
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Value must be integer" ForeColor="#CC0000" MaximumValue="2147483647" MinimumValue="-2147483648" Type="Integer" ValidationGroup="Group1"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Integer 3 is required" ControlToValidate="TextBox3" ForeColor="#CC0000" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                    <td class="auto-style1">
                        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Value must be integer" ForeColor="#CC0000" MaximumValue="2147483647" MinimumValue="-2147483648" Type="Integer" ValidationGroup="Group1"></asp:RangeValidator>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
