<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Evoco.Master"
    CodeBehind="AdjustPM1.aspx.vb" Inherits="Evoco.AdjustPM1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td>
                M&amp;C Hardware ID to adjust:
            </td>
            <td>
                <asp:TextBox ID="txtHardwareID" runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Amount to adjust PM1 by:
            </td>
            <td>
                <asp:TextBox ID="txtAdjustAmount" runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Adjust PM1 where it is currently less than:
            </td>
            <td>
                <asp:TextBox ID="txtWhereAmount" runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                
            </td>
            <td>
                <asp:Button ID="btnDisplayQuery" runat="server" Text="Preview Update" />
            </td>
        </tr>
    </table>
    <asp:Panel ID="pnlShowQuery" Visible="false" runat="server">
    <p>Query to run:</p>
       <p><asp:Label ID="Label1" runat="server"></asp:Label></p> 
       <p>Are you sure you wish to run this query - please note this action cannot be undone!</p>
       <p><asp:Button ID="btnRunQuery" runat="server" Text="Execute Query" /></p>
        
    </asp:Panel>
</asp:Content>
