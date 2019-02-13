<%@ Page Title="task3" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="task3.aspx.cs" Inherits="task3.task3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1 class="shadow_h">EXERCISE NR. 2.2</h1>
        <h2 class="shadow_h">TASK3 - Form Validation</h2>
        <hr />
        <div>
        <fieldset style="width:500px; border:1px solid #999; border-radius:8px; padding:15px;">
            <legend style="width:auto; padding:5px; font-size:16px; border-bottom:0;" title="Contact Form">Contact Form</legend>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="Group1" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ValidationGroup="Group1" ControlToValidate="TextBox1" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="Group1" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required" ValidationGroup="Group1" Text="*" ForeColor="Red" ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a valid email" ControlToValidate="TextBox2" ForeColor="Red" ValidateRequestMode="Enabled" ValidationGroup="Group1" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Phone number:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="Group1" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Phone number is required" ValidationGroup="Group1" ControlToValidate="TextBox3" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter a valid phone number" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red" ValidationExpression="^((([\+][\s]{0,1})|([0]{2}[\s-]{0,1}))([358]{3})([\s-]{0,1})|([0]{1}))(([1-9]{1}[0-9]{0,1})([\s-]{0,1})([0-9]{2,4})([\s-]{0,1})([0-9]{2,4})([\s-]{0,1}))([0-9]{0,3}){1}$" ValidationGroup="Group1">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: top">
                        <asp:Label ID="Label4" runat="server" Text="Comments:"></asp:Label>
                    </td>
                    <td style="vertical-align: top">
                        <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="Group1" Width="200px" Rows="5" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td style="vertical-align: top">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Comments are required" ValidationGroup="Group1" ControlToValidate="TextBox4" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Form contains some errors" ValidationGroup="Group1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server"></asp:Label></td>
                </tr>
                <tr>

                    <td colspan="3">
                        <asp:Button ID="Button1" runat="server" Text="Submit" ValidationGroup="Group1" OnClick="Button1_Click" />
                    </td>
                </tr>

            </table>
        </fieldset>
            </div>
    </div>
</asp:Content>
