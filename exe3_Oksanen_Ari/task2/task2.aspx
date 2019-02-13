<%@ Page Title="task2" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="task2.aspx.cs" Inherits="task2.task2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1>EXERCISE NR. 2.2</h1>
        <h2>TASK2 - Morse coder</h2>
        <hr />
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Input:" Width="70px"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="658px" ValidationGroup="Group1"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter the word to translate!" ControlToValidate="TextBox1" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Group1"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only letters allowed!" ValidationExpression="^[a-öA-Ö\s]+$" ValidationGroup="Group1" ControlToValidate="TextBox1" ForeColor="Red" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Output:" Width="70px"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" TextMode="MultiLine" Width="661px"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="Button1" runat="server" class="button" Text="Translate" OnClick="Button1_Click" Width="80px" ValidationGroup="Group1" />

            <asp:Button ID="Button2" runat="server" class="button" OnClick="Button2_Click" Text="Clear text" Width="80px" />
        </div>
    </div>
</asp:Content>
