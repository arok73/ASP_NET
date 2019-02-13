<%@ Page Title="Empty Shopping Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCartEmpty.aspx.cs" Inherits="task4.ShoppinCartEmpty" %>
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
                <div class="row justify-content-center">
                    <p class="sc_empty">Shopping cart is empty!</p>
                </div>
                <br />
                <asp:HyperLink ID="HyperLink1" CssClass="btn btn-success" style="float:right" runat="server" NavigateUrl="~/Default.aspx">Back to WebShop</asp:HyperLink>
            </div>
            <div class="col-md-2">
                
            </div>
        </div>
     </div>
</asp:Content>
