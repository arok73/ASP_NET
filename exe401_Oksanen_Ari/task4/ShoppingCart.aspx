<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="task4.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-8" style="text-align:center">
            <h1>WEBSHOP</h1>
            <h2>Shopping cart</h2>
        </div>
        <div class="col-lg-2"></div>
        </div>
        <div class="row row_top">
            <div class="col-md-2">
            </div>
            <div class="col-md-8">
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                <br />
                <asp:HyperLink ID="HyperLink1" CssClass="btn btn-success" style="float:right" runat="server" NavigateUrl="~/Purchase.aspx">Buy Now</asp:HyperLink>
            </div>
            <div class="col-md-2">
                
            </div>
        </div>
     </div>
</asp:Content>
