<%@ Page Title="task5" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="task5.aspx.cs" Inherits="task5.task5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1 class="shadow_h">EXERCISE NR. 2.2</h1>
        <h2 class="shadow_h">TASK5 - Car Database</h2>
        <hr />
        <%--Listview control to display database CarsDB.mdf--%>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="ManufacturerLabel" runat="server" Text='<%# Eval("Manufacturer") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                    </td>
                    <td>
                        <asp:Label ID="VariantLabel" runat="server" Text='<%# Eval("Variant") %>' />
                    </td>
                    <td>
                        <asp:Label ID="VariantYearLabel" runat="server" Text='<%# Eval("VariantYear") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:TextBox ID="ManufacturerTextBox" runat="server" Text='<%# Bind("Manufacturer") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ModelTextBox" runat="server" Text='<%# Bind("Model") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="VariantTextBox" runat="server" Text='<%# Bind("Variant") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="VariantYearTextBox" runat="server" Text='<%# Bind("VariantYear") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="ManufacturerTextBox" runat="server" Text='<%# Bind("Manufacturer") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ModelTextBox" runat="server" Text='<%# Bind("Model") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="VariantTextBox" runat="server" Text='<%# Bind("Variant") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="VariantYearTextBox" runat="server" Text='<%# Bind("VariantYear") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="ManufacturerLabel" runat="server" Text='<%# Eval("Manufacturer") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                    </td>
                    <td>
                        <asp:Label ID="VariantLabel" runat="server" Text='<%# Eval("Variant") %>' />
                    </td>
                    <td>
                        <asp:Label ID="VariantYearLabel" runat="server" Text='<%# Eval("VariantYear") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <%--Bootsrap table styles described in class--%>  
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="" class="table table-striped table-hover">
                                <tr runat="server" style="">
                                    <th runat="server">Manufacturer</th>
                                    <th runat="server">Model</th>
                                    <th runat="server">Variant</th>
                                    <th runat="server">VariantYear</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="ManufacturerLabel" runat="server" Text='<%# Eval("Manufacturer") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                    </td>
                    <td>
                        <asp:Label ID="VariantLabel" runat="server" Text='<%# Eval("Variant") %>' />
                    </td>
                    <td>
                        <asp:Label ID="VariantYearLabel" runat="server" Text='<%# Eval("VariantYear") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT tblManufacturer.Manufacturer, tblModel.Model, tblVariant.Variant, tblVariant.VariantYear
FROM (tblManufacturer INNER JOIN tblModel ON tblManufacturer.ManufacturerID = tblModel.ManufacturerID) INNER JOIN tblVariant ON tblModel.ModelID = tblVariant.ModelID
ORDER BY Manufacturer;"></asp:SqlDataSource>
    </div>
</asp:Content>
