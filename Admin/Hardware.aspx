<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Evoco.Master"
    CodeBehind="Hardware.aspx.vb" Inherits="Evoco.Hardware1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table width="100%">
        <tr>
            <td width="140" valign="top">
                <h2>
                    Search Turbines</h2>
                <asp:TextBox ID="txtSearchTurbines" runat="server" Width="104px" AutoPostBack="True"></asp:TextBox>&nbsp;<asp:LinkButton
                    ID="lnkSearch" runat="server">Go</asp:LinkButton><br />
                Filter By Company:<br />
                <asp:DropDownList ID="drpFilterCompany" runat="server" AutoPostBack="True">
                </asp:DropDownList>
                <br />
                <asp:Label ID="lblTurbines" runat="server" Text=""></asp:Label>
            </td>
            <td width="20">
                &nbsp;
            </td>
            <td valign="top">
                <h2>
                    Edit Turbine Details</h2>
                <table>
                    <tr>
                        <td>
                            Hardware ID:
                        </td>
                        <td>
                            <div style="float:right">
                                <asp:HyperLink ID="lnkHardwareID" runat="server">View</asp:HyperLink></div><asp:Label ID="lblhardwareID" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Device Name:
                        </td>
                        <td>
                            <asp:TextBox ID="txtDeviceName" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            GSM Number:
                        </td>
                        <td>
                            <asp:TextBox ID="txtGSMNumber" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Offset:
                        </td>
                        <td>
                            <asp:TextBox ID="txtOffset" runat="server" Width="200px" Text="0"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Address 1:
                        </td>
                        <td>
                            <asp:TextBox ID="txtAddress1" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Address 2:
                        </td>
                        <td>
                            <asp:TextBox ID="txtAddress2" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Address 3:
                        </td>
                        <td>
                            <asp:TextBox ID="txtAddress3" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Town:
                        </td>
                        <td>
                            <asp:TextBox ID="txtTown" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            County:
                        </td>
                        <td>
                            <asp:TextBox ID="txtCounty" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Postcode:
                        </td>
                        <td>
                            <asp:TextBox ID="txtPostCode" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Contact Name:
                        </td>
                        <td>
                            <asp:TextBox ID="txtContactName" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Phone:
                        </td>
                        <td>
                            <asp:TextBox ID="txtPhone" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Email:
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Label ID="lblErrors" runat="server" Text="" ForeColor="Red"></asp:Label><asp:Button ID="btnUpdate" runat="server" Text="Update" />
                        </td>
                    </tr>
                </table>
            </td>
            <td width="20">
                &nbsp;
            </td>
            <td valign="top">
                <h2>
                    Manage Company Access</h2>
                    <h4>Allowed Companies:</h4>
                <asp:Label ID="lblCompanyOK" runat="server" Text=""></asp:Label>
                    <h4>Add Companies:</h4>
                <asp:Label ID="lblCompanyDenied" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
