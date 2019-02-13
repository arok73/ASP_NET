<%@ Page Title="Survey Website" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="task5_2.task5_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-lg-10">
        <%--update panel to enable sections of a page to be partially rendered without a postback.--%> 
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="first-set">
                        <div class="form-group">
                            <h4>First, a couple of questions about you</h4>
                            <p>What team are you on?</p>
                            <asp:DropDownList ID="DropDownList1" class="form-control drop-list" runat="server" DataSourceID="SqlDataSource1" DataTextField="Team" DataValueField="TeamID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringSurvey %>" ProviderName="<%$ ConnectionStrings:ConnectionStringSurvey.ProviderName %>" SelectCommand="SELECT * FROM [TeamDB]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <!-- end of first-set div -->
                    <div class="second-set">
                        <div class="form-group">
                            <h4>Next, please answer the following questions about your job as honestly as you can.</h4>
                            <p>How meaningful do you find your work?</p>
                            <div class="btn-group">
                                <asp:RadioButtonList ID="radioButtonList1" runat="server" RepeatLayout="flow" RepeatDirection="Horizontal" CssClass="btn-group" data-toggle="buttons" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>

                        </div>
                        <div class="form-group">
                            <p>And would you say it's challenging?</p>
                            <div class="btn-group">
                                <asp:RadioButtonList ID="radioButtonList2" runat="server" RepeatLayout="flow" RepeatDirection="Horizontal" CssClass="btn-group" data-toggle="buttons" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
                                    <asp:ListItem Value="0">0</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                </asp:RadioButtonList>

                            </div>
                        </div>
                        <div class="form-group">
                            <p>Do you feel that your responsibilities are clearly defined?</p>
                            <div class="btn-group">
                                <asp:RadioButtonList ID="radioButtonList3" runat="server" RepeatLayout="flow" RepeatDirection="Horizontal" CssClass="btn-group" data-toggle="buttons" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged">
                                    <asp:ListItem Value="0">0</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group">
                                <p>How often do you feel stressed at work in a typical week?</p>
                                <div class="btn-group">
                                    <asp:RadioButtonList ID="radioButtonList4" runat="server" RepeatLayout="flow" RepeatDirection="Horizontal" CssClass="btn-group" data-toggle="buttons" OnSelectedIndexChanged="RadioButtonList4_SelectedIndexChanged" Style="left: 0px; top: 0px">
                                        <asp:ListItem Value="0">0</asp:ListItem>
                                        <asp:ListItem Value="1">1</asp:ListItem>
                                        <asp:ListItem Value="2">2</asp:ListItem>
                                        <asp:ListItem Value="3">3</asp:ListItem>
                                        <asp:ListItem Value="4">4</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end of second-set div -->
                    <div class="third-set">
                        <div class="form-group">
                            <h4>Thanks. Now we'd like to get your opinion on how we communicate as a company.</h4>
                            <p>How openly is information and knowledge shared throughout the company?</p>
                            <div class="btn-group">
                                <asp:RadioButtonList ID="radioButtonList5" runat="server" RepeatLayout="flow" RepeatDirection="Horizontal" CssClass="btn-group" data-toggle="buttons" OnSelectedIndexChanged="RadioButtonList5_SelectedIndexChanged">
                                    <asp:ListItem Value="0">0</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <div class="form-group">
                            <p>And do you feel like your opinions are listened to?</p>
                            <div class="btn-group">
                                <asp:RadioButtonList ID="radioButtonList6" runat="server" RepeatLayout="flow" RepeatDirection="Horizontal" CssClass="btn-group" data-toggle="buttons" OnSelectedIndexChanged="RadioButtonList6_SelectedIndexChanged">
                                    <asp:ListItem Value="0">0</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <div class="form-group">
                            <p>Do you receive actionable feedback from your coworkers?</p>
                            <div class="btn-group">
                                <asp:RadioButtonList ID="radioButtonList7" runat="server" RepeatLayout="flow" RepeatDirection="Horizontal" CssClass="btn-group" data-toggle="buttons" OnSelectedIndexChanged="RadioButtonList7_SelectedIndexChanged">
                                    <asp:ListItem Value="0">0</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                    <!-- end of third-set div -->
                    <div class="fourth-set">
                        <div class="form-group">
                            <h4>Great, now let's focus on your personal development.</h4>
                            <p>Does your manager show an interest in your professional development?</p>
                            <div class="btn-group">
                                <asp:RadioButtonList ID="radioButtonList8" runat="server" RepeatLayout="flow" RepeatDirection="Horizontal" CssClass="btn-group" data-toggle="buttons" OnSelectedIndexChanged="RadioButtonList8_SelectedIndexChanged">
                                    <asp:ListItem Value="0">0</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <div class="form-group">
                            <p>Do you feel like we offer enough training opportunities?</p>
                            <div class="btn-group">
                                <asp:RadioButtonList ID="radioButtonList9" runat="server" RepeatLayout="flow" RepeatDirection="Horizontal" CssClass="btn-group" data-toggle="buttons" OnSelectedIndexChanged="RadioButtonList9_SelectedIndexChanged">
                                    <asp:ListItem Value="0">0</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <div class="form-group">
                            <p>So overall, how likely are you to be working for the company in two years?</p>
                            <div class="btn-group">
                                <asp:RadioButtonList ID="radioButtonList10" runat="server" RepeatLayout="flow" RepeatDirection="Horizontal" CssClass="btn-group" data-toggle="buttons" OnSelectedIndexChanged="RadioButtonList10_SelectedIndexChanged">
                                    <asp:ListItem Value="0">0</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                    <!-- end of fourth-set div -->
                    <div class="fifth-set">
                        <div class="form-group">
                            <h4>Next, we'd like to hear your say on the company's direction.</h4>
                            <p>How well do you understand our company mission?</p>
                            <div class="btn-group">
                                <asp:RadioButtonList ID="radioButtonList11" runat="server" RepeatLayout="flow" RepeatDirection="Horizontal" CssClass="btn-group" data-toggle="buttons" OnSelectedIndexChanged="RadioButtonList11_SelectedIndexChanged">
                                    <asp:ListItem Value="0">0</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <div class="form-group">
                            <p>Overall, how confident are you that the company is heading in the right direction?</p>
                            <div class="btn-group">
                                <asp:RadioButtonList ID="radioButtonList12" runat="server" RepeatLayout="flow" RepeatDirection="Horizontal" CssClass="btn-group" data-toggle="buttons" OnSelectedIndexChanged="RadioButtonList12_SelectedIndexChanged">
                                    <asp:ListItem Value="0">0</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                    <!-- end of fifth-set div -->
                    <div class="sixth-set">
                        <div class="form-group">
                            <h4>And finally, let's talk about salaries and rewards.</h4>
                            <p>How much do you feel that your work is respected and valued?</p>
                            <div class="btn-group">
                                <asp:RadioButtonList ID="radioButtonList13" runat="server" RepeatLayout="flow" RepeatDirection="Horizontal" CssClass="btn-group" data-toggle="buttons" OnSelectedIndexChanged="RadioButtonList13_SelectedIndexChanged">
                                    <asp:ListItem Value="0">0</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <div class="form-group">
                            <p>And how satisfied are you with your salary?</p>
                            <div class="btn-group">
                                <asp:RadioButtonList ID="radioButtonList14" runat="server" RepeatLayout="flow" RepeatDirection="Horizontal" CssClass="btn-group" data-toggle="buttons" OnSelectedIndexChanged="RadioButtonList14_SelectedIndexChanged">
                                    <asp:ListItem Value="0">0</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <div class="form-group">
                            <p>What about the benefits our company offers?</p>
                            <div class="btn-group">
                                <asp:RadioButtonList ID="radioButtonList15" runat="server" RepeatLayout="flow" RepeatDirection="Horizontal" CssClass="btn-group" data-toggle="buttons" OnSelectedIndexChanged="RadioButtonList15_SelectedIndexChanged">
                                    <asp:ListItem Value="0">0</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <div class="form-group">
                            <p>Overall, how satisfied are you with your job?</p>
                            <div class="btn-group">
                                <asp:RadioButtonList ID="radioButtonList16" runat="server" RepeatLayout="flow" RepeatDirection="Horizontal" CssClass="btn-group" data-toggle="buttons" OnSelectedIndexChanged="RadioButtonList16_SelectedIndexChanged">
                                    <asp:ListItem Value="0">0</asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                    <!-- end of sixth-set div -->
                    <div class="form-group">
                        <div class="submit-btn">
                            <asp:Button ID="btnSubmit" class="btn btn-success btn-lg float-right" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                        </div>
                        <asp:Label ID="lblSubmit" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
            </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="col-lg-1"></div>
    </div> <%--div row--%>
    </div> <%--div container--%>
</asp:Content>
