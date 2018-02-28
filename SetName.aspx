<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Evoco.Master" CodeBehind="SetName.aspx.vb" Inherits="Evoco.SetName" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Device Name:<br />
        <asp:TextBox ID="txtDeviceName" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Update" />
    </p>
</asp:Content>
