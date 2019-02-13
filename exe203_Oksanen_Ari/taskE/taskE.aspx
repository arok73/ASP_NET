<%@ Page Title="" Language="C#" MasterPageFile="~/taskE.Master" AutoEventWireup="true" CodeBehind="taskE.aspx.cs" Inherits="taskE.taskE1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 343px;
        }
        .auto-style2 {
            height: 25px;
        }
        .auto-style3 {
            width: 343px;
            height: 25px;
        }
        .auto-style4 {
            height: 25px;
            width: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h1>Methods Exercises</h1>
        <div class="task_1">
            <div class="borders">
            <hr>
            <h2>taskE1</h2>
            <h3>Calculates the sum of 2 integers and prints out the result</h3>
            <!-- table for aligning textboxes and buttons-->
            <table>
                <tr>
                    <td><asp:Label ID="Label1" class="lbl" runat="server" Text="Value 1"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server" Width="110px"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Value 1 is required!" ControlToValidate="TextBox1" ForeColor="#CC0000" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                    <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only numbers &amp; comma allowed!" ValidationExpression="^[-+]?[0-9]*\,?[0-9]*$" ValidationGroup="Group1" ControlToValidate="TextBox1" ForeColor="#CC0000"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" class="lbl" runat="server" Text="Value 2"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" runat="server" Width="110px"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Value 2 is required!" ControlToValidate="TextBox2" ForeColor="#CC0000" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                    <td><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Only numbers &amp; comma allowed!" ValidationExpression="^[-+]?[0-9]*\,?[0-9]*$" ValidationGroup="Group1" ControlToValidate="TextBox2" ForeColor="#CC0000"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" class="lbl" runat="server" Text="Sum"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" Width="260px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="Button1" class="button" runat="server" Text="Calculate the sum" OnClick="Button1_Click" Height="30px" ValidationGroup="Group1" Width="170px" /></td>
                    <td><asp:Button ID="Button2" class="button" runat="server" Text="Clear Text" Height="30px" OnClick="Button2_Click"  Width="150px" /></td>
                </tr>
            </table>
            </div>
        </div>
    </div>

    <div class="task_2">
        <div class="borders">
            <hr>
            <h2>taskE8</h2>
            <h3>Fill the array and multiply every value in an array by 2</h3>
            <!-- table for aligning textboxes and buttons-->
            <table>
                <tr>
                    <td><asp:Label ID="Label4" class="lbl" runat="server" Text="Array before"></asp:Label></td>
                    <td><asp:Label ID="Label5" class="lbl" runat="server" Text="Array after"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:ListBox ID="ListBox1" runat="server" Height="350px" Width="150px" Rows="20"></asp:ListBox></td>
                    <td><asp:ListBox ID="ListBox2" runat="server" Height="350px" Width="150px" Rows="20"></asp:ListBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Fill the array" />
                    </td>
                    <td class="td_centertext">
                        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Multiply by 2" />
                    </td>
                </tr>
            </table>
        </div>
    </div>

    <div class="task_3">
        <div class="borders">
            <hr>
            <h2>taskE9</h2>
            <h3>Calculate BMI (<u>B</u>ody <u>M</u>ass <u>I</u>ndex)</h3>
            <!-- table for aligning textboxes and buttons-->
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Height"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server" ValidationGroup="Group2"></asp:TextBox>
                    </td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Value 1 is required!" ControlToValidate="TextBox10" ForeColor="#CC0000" ValidationGroup="Group2"></asp:RequiredFieldValidator></td>
                    <td class="auto-style1"><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Height in meters (e.g. 1,80)!" ValidationExpression="(\d{1,2}\,{1}\d{1,2})" ValidationGroup="Group2" ControlToValidate="TextBox10" ForeColor="#CC0000"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label11" runat="server" Text="Weight"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox11" runat="server" ValidationGroup="Group2"></asp:TextBox>
                    </td>
                    <td class="auto-style2"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Value 2 is required!" ControlToValidate="TextBox11" ForeColor="#CC0000" ValidationGroup="Group2"></asp:RequiredFieldValidator></td>
                    <td class="auto-style3"><asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Only numbers &amp; comma allowed!" ValidationExpression="^[-+]?[0-9]*\,?[0-9]*$" ValidationGroup="Group2" ControlToValidate="TextBox11" ForeColor="#CC0000"></asp:RegularExpressionValidator></td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text="BMI"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server" ReadOnly="True" ValidationGroup="Group2"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button9" runat="server" Text="Calculate BMI" OnClick="Button9_Click" ValidationGroup="Group2" />
                    </td>
                    <td class="td_centertext">
                        <asp:Button ID="Button10" runat="server" Text="Clear Text" OnClick="Button10_Click" ValidationGroup="Group2" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
