<%@ Page Title="Webshop" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="task4._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
    
<div class="container">

<div class="col-lg-12" style="text-align:center; margin-top: 50px">
    <h1>Welcome to the</h1>
    <p class="header_text_lg">WEBSHOP</p>
    <div class="row justify-content-end">
<button runat="server" onserverclick="BtnShoppingCart_OnClick" id="BtnShoppingCart" class="btn btn-primary" style="float: right" title="ShoppingCart">
<i class="fas fa-shopping-cart"></i> Shopping Cart</span>
</button>
</div>
</div>
<div class="row row_top">
    <div class="row align-items-start">
    <div class="col">
        <div class="card card_shadow">
            <img src="Content/Images/hp_notebook.jpg" class="card-img-top" alt="HP Core i3">
            <div class="card-body text-center">
                <h5 class="card-image-top">HP Core i3</h5>
                <p class="card-text">Get connected with the value-priced HP 250 Notebook PC. Complete business tasks with Intel® technology.</p>
                <asp:TextBox ID="TxtBoxProduct1" TextMode="Number" Text="1" runat="server" min="1" max="99" step="1"></asp:TextBox>
                <asp:Button ID="BtnProduct1" class="btn btn-success btn_cart" runat="server" Text="Add to chart" OnClick="BtnProduct1_Click" />
            </div>
        </div>
        </div>
        <div class="col">
        <div class="card card_shadow">
            <img src="Content/Images/raspberry.jpg" class="card-img-top" alt="Raspberry Pi">
            <div class="card-body text-center">
                <h5 class="card-image-top">Raspberry Pi 3</h5>
                <p class="card-text">The Raspberry Pi 3 Model B builds upon the features of its predecessors with a new, faster processor on board. </p>
                <asp:TextBox ID="TxtBoxProduct2" TextMode="Number" Text="1" runat="server" min="1" max="99" step="1"></asp:TextBox>
                <asp:Button ID="BtnProduct2" class="btn btn-success btn_cart" runat="server" Text="Add to chart" OnClick="BtnProduct2_Click" />
            </div>
        </div>
        </div>
    <div class="col">
        <div class="card card_shadow">
            <img src="Content/Images/lenovo_tab.jpg" class="card-img-top" alt="Lenovo">
            <div class="card-body text-center">
                <h5 class="card-image-top">Lenovo Tab 4 10" Tablet</h5>
                <p class="card-text">From entertaining the kids to creating key presentations, the Tab 4 10 is ideal for the whole family.</p>
                <asp:TextBox ID="TxtBoxProduct3" TextMode="Number" Text="1" runat="server" min="1" max="99" step="1"></asp:TextBox>
                <asp:Button ID="BtnProduct3" class="btn btn-success btn_cart" runat="server" Text="Add to chart" OnClick="BtnProduct3_Click" />
            </div>
        </div>
        </div>
        </div>
    <div class="row align-items-start">
        <div class="col">
        <div class="card card_shadow">
            <img src="Content/Images/polar.jpg" class="card-img-top" alt="Polar">
            <div class="card-body text-center">
                <h5 class="card-image-top">Polar A370</h5>
                <p class="card-text">Fitness tracker offers continuous heart rate-monitoring, connected GPS and deeper sleep insights.</p>
                <asp:TextBox ID="TxtBoxProduct4" TextMode="Number" Text="1" runat="server" min="1" max="99" step="1"></asp:TextBox>
                <asp:Button ID="BtnProduct4" class="btn btn-success btn_cart" runat="server" Text="Add to chart" OnClick="BtnProduct4_Click" />
            </div>
        </div>
        </div>
    <div class="col">
        <div class="card card_shadow">
            <img src="Content/Images/ps4.jpg" class="card-img-top" alt="Playstation 4">
            <div class="card-body  text-center">
                <h5 class="card-image-top" >Playstation 4</h5>
                <p class="card-text">The new slim PlayStation®4 opens the door to extraordinary journeys through immersive new gaming worlds.</p>
                <asp:TextBox ID="TxtBoxProduct5" TextMode="Number" Text="1" runat="server" min="1" max="99" step="1"></asp:TextBox>
                <asp:Button ID="BtnProduct5" class="btn btn-success btn_cart" runat="server" Text="Add to chart" OnClick="BtnProduct5_Click" />
            </div>
        </div>
        </div>
        <div class="col">
        <div class="card card_shadow">
            <img src="Content/Images/honor.jpg" class="card-img-top" alt="Honor 7">
            <div class="card-body  text-center">
                <h5 class="card-image-top" >Card title</h5>
                <p class="card-text">The classic metal design of the Honor 7X is a delight to hold, with its perfectly rounded edge.</p>
                <asp:TextBox ID="TxtBoxProduct6" TextMode="Number" Text="1" runat="server" min="1" max="99" step="1"></asp:TextBox>
                <asp:Button ID="BtnProduct6" class="btn btn-success btn_cart" runat="server" Text="Add to chart" OnClick="BtnProduct6_Click" />
            </div>
        </div>
    </div>
        </div>
</div>
</div>
</ContentTemplate>
</asp:UpdatePanel>  
</asp:Content>

