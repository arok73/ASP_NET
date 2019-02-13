<%@ Page Title="task1" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="task1.aspx.cs" Inherits="task1.task1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1 class="shadow_h">EXERCISE NR. 2.2</h1>
        <h2 class="shadow_h">TASK1 - Mini calculator</h2>
        <hr />
    <div class="form-group">
        <br />
        <asp:TextBox ID="txtBxUpper" runat="server" Width="150px"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtBxResult" runat="server" Height="35px" Width="150px">0</asp:TextBox>
    </div>
        <table>
            <tr>
                <td>
                    <asp:Button ID="btnSeven" runat="server" Text="7" Width="40px" Height="40px" OnClick="btnSeven_Click" /></td>
                <td>
                    <asp:Button ID="btnEight" runat="server" Text="8" Height="40px" Width="40px" OnClick="btnEight_Click" /></td>
                <td>
                    <asp:Button ID="btnNine" runat="server" Text="9" Height="40px" Width="40px" OnClick="btnNine_Click" /></td>
                <td>
                    <asp:Button ID="btnDivision" runat="server" Text="/" Height="40px" Width="40px" OnClick="btnDivision_Click" /></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnFour" runat="server" Text="4" Height="40px" Width="40px" OnClick="btnFour_Click" /></td>
                <td>
                    <asp:Button ID="btnFive" runat="server" Text="5" Height="40px" Width="40px" OnClick="btnFive_Click" /></td>
                <td>
                    <asp:Button ID="btnSix" runat="server" Text="6" Height="40px" Width="40px" OnClick="btnSix_Click" /></td>
                <td>
                    <asp:Button ID="btnMultiplication" runat="server" Text="X" Height="40px" Width="40px" OnClick="btnMultiplication_Click" /></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnOne" runat="server" Text="1" Height="40px" Width="40px" OnClick="btnOne_Click" /></td>
                <td>
                    <asp:Button ID="btnTwo" runat="server" Text="2" Height="40px" Width="40px" OnClick="btnTwo_Click" /></td>
                <td>
                    <asp:Button ID="btnThree" runat="server" Text="3" Height="40px" Width="40px" OnClick="btnThree_Click" /></td>
                <td>
                    <asp:Button ID="btnSubtraction" runat="server" Text="-" Height="40px" Width="40px" OnClick="btnSubtraction_Click" /></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnComma" runat="server" Text="," Height="40px" Width="40px" OnClick="btnComma_Click" /></td>
                <td>
                    <asp:Button ID="btnZero" runat="server" Text="0" Height="40px" Width="40px" OnClick="btnZero_Click" /></td>
                <td>
                    <asp:Button ID="btnEqual" runat="server" Text="=" Height="40px" Width="40px" OnClick="btnEqual_Click" /></td>
                <td>
                    <asp:Button ID="btnAddition" runat="server" Text="+" Height="40px" Width="40px" OnClick="btnAddition_Click" /></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnClear" runat="server" Text="CLR" Height="40px" Width="40px" OnClick="btnClear_Click"  /></td>
            </tr>

        </table>
    </div>
</asp:Content>
