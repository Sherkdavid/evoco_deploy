<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Evoco.Master" CodeBehind="Profile.aspx.vb" Inherits="Evoco.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 93px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<table><tr><td>Username:</td><td>
    <strong><asp:Label ID="lblUsername" runat="server" Text=""></asp:Label></strong></td></tr><tr><td class="style1">
    Salutation:</td><td>
        <asp:DropDownList ID="drpSalutation" runat="server">
            <asp:ListItem>Mr</asp:ListItem>
            <asp:ListItem>Mrs</asp:ListItem>
            <asp:ListItem>Miss</asp:ListItem>
            <asp:ListItem>Ms</asp:ListItem>
            <asp:ListItem>Dr</asp:ListItem>
        </asp:DropDownList>
    </td></tr><tr><td class="style1">
    Firstname:</td><td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td></tr><tr>
    <td class="style1">
        Surname:</td><td>
        <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
    </td></tr><tr><td class="style1">
        Phone:</td><td>
            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        </td></tr><tr><td class="style1">
        Mobile:</td><td>
            <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
        </td></tr><tr><td class="style1">
        Email:</td><td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td></tr><tr><td class="style1">
        User Type:</td><td>
            <asp:DropDownList ID="drpRoles" runat="server">
            </asp:DropDownList>
        </td></tr><tr><td class="style1">
        &nbsp;</td><td>&nbsp;</td></tr><tr><td class="style1">
    &nbsp;</td><td>&nbsp;</td></tr></table>
</asp:Content>
