<%@ Page Title="" Language="C#" MasterPageFile="~/SiteB3.Master" AutoEventWireup="true" CodeBehind="taskB3.aspx.cs" Inherits="taskB3.taskB3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
            <h1>Driving time calculator</h1>
        <div class="column_1">
            <table>
            <tr>
                <!-- table for aligning textboxes and buttons-->
                <td><asp:Label ID="Label1" class="lbl" runat="server" Text="Car speed (km/h)"></asp:Label></td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" class="lbl" runat="server" Text="Distance (km)"></asp:Label></td>
                <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" class="lbl" runat="server" Text="Driving Time (Hours)"></asp:Label></td>
                <td><asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label4" class="lbl" runat="server" Text="Driving Time (HH:MM:SS)"></asp:Label></td>
                <td><asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Button ID="Button1" class="button1" runat="server" Text="Calculate Driving Time" OnClick="Button1_Click" Height="30px" Width="150px" ValidationGroup="Group1" /></td>
                <td><asp:Button ID="Button2" class="button2" runat="server" Text="Clear Text" Height="30px" OnClick="Button2_Click" Width="150px" /></td>
            </tr>
            </table>
             </div>
        <div class="column_2">
          <table>
            <tr>
                <!-- textbox validators -->
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Car speed is required" ForeColor="#CC0000" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                <td><asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Min Car speed is 1" ForeColor="#CC0000" MaximumValue="1000000000" MinimumValue="1" Type="Double" ValidationGroup="Group1"></asp:RangeValidator></td>
            </tr>
            <tr>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Distance is required" ForeColor="#CC0000" ValidationGroup="Group1"></asp:RequiredFieldValidator></td>
                <td><asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Min Distance is 1" ForeColor="#CC0000" MaximumValue="1000000000" MinimumValue="1" Type="Double" ValidationGroup="Group1"></asp:RangeValidator></td>
            </tr>
              </table>
        </div>
    </div>
</asp:Content>
