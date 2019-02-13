<%@ Page Title="Book Database" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteBook.aspx.cs" Inherits="task5_1.DeleteBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content">
    <h3>DELETE BOOK FROM DATABASE</h3>
    <hr />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <form class="form-horizontal">
        <div class="form-group">
            <asp:Label for="DropDownList1" ID="Label1" runat="server" Text="Choose ID of book to delete" Width="200px"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="form-control" Width="150px">
            </asp:DropDownList>
            </div>
       <div class="form-group">
            <asp:Label for="TextBox1" ID="Label2" runat="server" Text="Book ID"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="300px"></asp:TextBox>
        </div>
            <asp:Button ID="Button1" class="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Delete book" />
        
           </form>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [ID] FROM [Books]"></asp:SqlDataSource>
         
        </ContentTemplate>
    </asp:UpdatePanel>
       
    </div>
</asp:Content>
