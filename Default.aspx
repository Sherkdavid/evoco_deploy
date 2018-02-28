<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Evoco.Master" CodeBehind="Default.aspx.vb" Inherits="Evoco._Default" %>

<%@ Register Assembly="Artem.Google" Namespace="Artem.Google.UI" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<div style="float:right;"><asp:Panel ID="pnlSuperuser" runat="server" Visible="true">
    <strong>Select Company: 
    <asp:DropDownList ID="drpSelectCompany" AutoPostBack="true" runat="server">
    </asp:DropDownList></strong>
</asp:Panel></div>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
    <h2>
    Overview:</h2>
<p><asp:Label ID="lblOverview" runat="server" Text=""></asp:Label></p></ContentTemplate>
    </asp:UpdatePanel>
    <p style="text-align:center">
        <asp:LinkButton ID="lnkShowMap" runat="server">Show Map</asp:LinkButton><br /><asp:Panel ID="pnlGoogleMap" runat="server" Visible="false">
        <cc1:GoogleMap ID="GoogleMap1" width="100%" Height="600" Key="AIzaSyCpRWRZbdoCt58jlmuuPBpiC8PC__WBVKU" runat="server">
        </cc1:GoogleMap>
    </asp:Panel></p>
    <div style="float:right">
        Select Generation Date Range: <asp:DropDownList ID="drpDateRange" AutoPostBack="true" runat="server">
            <asp:ListItem Value="0">Today</asp:ListItem>
            <asp:ListItem Value="1">Yesterday</asp:ListItem>
            <asp:ListItem Value="2">Month To Date</asp:ListItem>
            <asp:ListItem Value="3">Previous Month</asp:ListItem>
            <asp:ListItem Value="4">Year To Date</asp:ListItem>
            <asp:ListItem Value="5">Previous Year</asp:ListItem>
        </asp:DropDownList>
    </div><h2>
        All Turbines:</h2>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <p>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#34ccff" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#34ccff" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </p>
    
<asp:Timer ID="Timer1" runat="server" Interval="1000" Enabled="False">
</asp:Timer></ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
