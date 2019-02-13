<%@ Page Title="task4" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="task4.aspx.cs" Inherits="task4.task4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1 class="shadow_h">EXERCISE NR. 2.2</h1>
        <h2 class="shadow_h">TASK4 - List of cities</h2>
        <hr />
         <table style="margin:5px">
        <tr>
                <td>
                    <asp:ListBox ID="listbxCity" runat="server" style="margin:5px" Height="205px" Width="255px" OnSelectedIndexChanged="listbxCity_SelectedIndexChanged" ViewStateMode="Inherit"></asp:ListBox>
                </td>
            </tr>
       </table>
        <div  style="width:320px; margin:10px; padding:15px; border:1px solid black">
        <table>
            <tr>
                <td colspan="4" style="padding:5px; width: 266px;">
                    <asp:Label ID="lblCity" runat="server" style="vertical-align:top" Text="City" Width="40px"></asp:Label>
                    <asp:TextBox ID="txtBoxCity" runat="server" Width="210px" CssClass="col-xs-offset-0" ValidationGroup="Group1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBoxCity" ErrorMessage="Enter the city" ForeColor="Red" ValidationGroup="Group1" Display="Dynamic">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBoxCity" Display="Dynamic" ErrorMessage="Only letters allowed" ForeColor="Red" ValidationExpression="^[a-öA-Ö\s]+$" ValidationGroup="Group1">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="padding:5px; width: 300px;">
                    <asp:Button ID="btnInsert" runat="server" style="margin:2px 2px 2px 0" Text="Insert" OnClick="btnInsert_Click" Width="60px" ValidationGroup="Group1" />
                    <asp:Button ID="btnUpdate" runat="server" style="margin:2px" Text="Update" OnClick="btnUpdate_Click" Width="60px" ValidationGroup="Group1" />
                    <asp:Button ID="btnDelete" runat="server" style="margin:2px" Text="Delete" OnClick="btnDelete_Click" Width="60px" />
                    <asp:Button ID="btnClear" runat="server" style="margin:2px" Text="Clear" OnClick="btnClear_Click" Width="60px" />
                </td>
            </tr>
        </table>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="Group1" />
        </div>
    
</asp:Content>
