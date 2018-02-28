<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Evoco.Master"
    CodeBehind="Users.aspx.vb" Inherits="Evoco.Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <div style="float: right;"><asp:UpdateProgress ID="UpdateProgress1" runat="server" 
                            AssociatedUpdatePanelID="UpdatePanel1" DisplayAfter="0"><ProgressTemplate>
                    Updating - please wait..</ProgressTemplate>
                    </asp:UpdateProgress>
                    </div><table>
        <tr>
            <td valign="top">
                <h2>Search Users</h2>
                <asp:TextBox ID="txtSearchUsers" runat="server" Width="104px" AutoPostBack="True"></asp:TextBox>&nbsp;<asp:LinkButton
                    ID="LinkButton1" runat="server">Go</asp:LinkButton><br />
                    Filter By Company:<br />
                <asp:DropDownList ID="drpFilterCompany" runat="server" AutoPostBack="True">
                </asp:DropDownList><br />
                <asp:Label ID="lblUsers" runat="server" Text=""></asp:Label>
            </td>
            <td width="20">&nbsp;</td>
            <td valign="top">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                <asp:Panel ID="pnlAddUser" runat="server">
                    <h2>
                        Add New User</h2>
                    <table>
                        <tr>
                            <td width="150">
                                Username:
                            </td>
                            <td>
                                <asp:TextBox ID="txtAddUserName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td width="150">
                                Password:
                            </td>
                            <td>
                                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td width="150">
                                Confirm:
                            </td>
                            <td>
                                <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Salutation:
                            </td>
                            <td>
                                <asp:DropDownList ID="drpAddSalutation" runat="server">
                                    <asp:ListItem>Mr</asp:ListItem>
                                    <asp:ListItem>Mrs</asp:ListItem>
                                    <asp:ListItem>Miss</asp:ListItem>
                                    <asp:ListItem>Ms</asp:ListItem>
                                    <asp:ListItem>Dr</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Firstname:
                            </td>
                            <td>
                                <asp:TextBox ID="txtAddFirstName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Surname:
                            </td>
                            <td>
                                <asp:TextBox ID="txtAddSurname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                Phone:
                            </td>
                            <td>
                                <asp:TextBox ID="txtAddPhone" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Mobile:
                            </td>
                            <td>
                                <asp:TextBox ID="txtAddMobile" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Email:
                            </td>
                            <td>
                                <asp:TextBox ID="txtAddEmail" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                User Type:
                            </td>
                            <td>
                                <asp:DropDownList ID="drpAddRoles" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr><td>Company: </td><td>
                            <asp:DropDownList ID="drpAddCompany" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                        </td></tr>
                        <asp:Panel ID="pnlAddAddCompany" runat="server" Visible="false">
                        <tr><td>Company Name:</td><td>
                            <asp:TextBox ID="txtAddCompanyName" runat="server"></asp:TextBox></td></tr>
                        <tr><td>Address 1:</td><td>
                            <asp:TextBox ID="txtAddAddress1" runat="server"></asp:TextBox></td></tr>
                        <tr><td>Address 2:</td><td>
                            <asp:TextBox ID="txtAddAddress2" runat="server"></asp:TextBox></td></tr>
                        <tr><td>Address 3:</td><td>
                            <asp:TextBox ID="txtAddAddress3" runat="server"></asp:TextBox></td></tr>
                        <tr><td>Town:</td><td>
                            <asp:TextBox ID="txtAddTown" runat="server"></asp:TextBox></td></tr>
                        <tr><td>County:</td><td>
                            <asp:TextBox ID="txtAddCounty" runat="server"></asp:TextBox></td></tr>
                        <tr><td>Postcode:</td><td>
                            <asp:TextBox ID="txtAddPostCode" runat="server"></asp:TextBox></td></tr>
                        <tr><td>Company Phone:</td><td>
                            <asp:TextBox ID="txtAddCompanyPhone" runat="server"></asp:TextBox></td></tr>
                        <tr><td>Company Email:</td><td>
                            <asp:TextBox ID="txtAddCompanyEmail" runat="server"></asp:TextBox></td></tr>
                        </asp:Panel>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                <asp:Label ID="lblAddErrors" runat="server" Text="" ForeColor="Red"></asp:Label>
                                <asp:Button ID="Button1" runat="server" Text="Add User" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="pnlEditUser" runat="server" Visible="false">

                    <h2>
                        Edit User Details</h2>
                    <table>
                        <tr>
                            <td width="150">
                                Username:
                            </td>
                            <td>
                                <strong>
                                    <asp:Label ID="lblUsername" runat="server" Text=""></asp:Label></strong>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Salutation:
                            </td>
                            <td>
                                <asp:DropDownList ID="drpSalutation" runat="server">
                                    <asp:ListItem>Mr</asp:ListItem>
                                    <asp:ListItem>Mrs</asp:ListItem>
                                    <asp:ListItem>Miss</asp:ListItem>
                                    <asp:ListItem>Ms</asp:ListItem>
                                    <asp:ListItem>Dr</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Firstname:
                            </td>
                            <td>
                                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Surname:
                            </td>
                            <td>
                                <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Phone:
                            </td>
                            <td>
                                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Mobile:
                            </td>
                            <td>
                                <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Email:
                            </td>
                            <td>
                                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr><td>New Password:</td><td>
                            <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox></td></tr>
                        <tr><td>Confirm Password:</td><td>
                            <asp:TextBox ID="txtConfirmNewPassword" runat="server"></asp:TextBox></td></tr>
                        <tr>
                            <td>
                                User Type:
                            </td>
                            <td>
                                <asp:DropDownList ID="drpRoles" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr><td>Company: </td><td>
                            <asp:DropDownList ID="drpCompany" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                        </td></tr>
                        <asp:Panel ID="pnlCompanyDetails" runat="server" Visible="false">
                        <tr><td>Company Name:</td><td>
                            <asp:TextBox ID="txtCompanyName" runat="server"></asp:TextBox></td></tr>
                        <tr><td>Address 1:</td><td>
                            <asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox></td></tr>
                        <tr><td>Address 2:</td><td>
                            <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox></td></tr>
                        <tr><td>Address 3:</td><td>
                            <asp:TextBox ID="txtAddress3" runat="server"></asp:TextBox></td></tr>
                        <tr><td>Town:</td><td>
                            <asp:TextBox ID="txtTown" runat="server"></asp:TextBox></td></tr>
                        <tr><td>County:</td><td>
                            <asp:TextBox ID="txtCounty" runat="server"></asp:TextBox></td></tr>
                        <tr><td>Postcode:</td><td>
                            <asp:TextBox ID="txtPostCode" runat="server"></asp:TextBox></td></tr>
                        <tr><td>Company Phone:</td><td>
                            <asp:TextBox ID="txtCompanyPhone" runat="server"></asp:TextBox></td></tr>
                        <tr><td>Company Email:</td><td>
                            <asp:TextBox ID="txtCompanyEmail" runat="server"></asp:TextBox></td></tr>
                        </asp:Panel>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                <asp:Label ID="lblErrors" runat="server" Text="" ForeColor="Red"></asp:Label><asp:Button ID="btnUpdate" runat="server" Text="Update" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
            </td>
            <td width="10">&nbsp;</td>
            <td valign="top">
                <asp:Panel ID="pnlShowTurbines" runat="server" Visible="false">
                <h2>Set Turbine Access</h2>
                </asp:Panel>
            </td>
        </tr>
    </table>

</asp:Content>
