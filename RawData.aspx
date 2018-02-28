<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RawData.aspx.vb" Inherits="Evoco.RawData" %>

<%@ Register Assembly="BasicFrame.WebControls.BasicDatePicker" Namespace="BasicFrame.WebControls"
    TagPrefix="BDP" %>
<%@ Register Assembly="TimePicker" Namespace="MKB.TimePicker" TagPrefix="MKB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: Verdana; font-size: small">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="12500">
                </asp:Timer>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="LoggedTime" DataSourceID="SqlDataSource1"
                    ForeColor="#333333" GridLines="None" PageSize="30">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="LoggedTime" HeaderText="LoggedTime" ReadOnly="True" SortExpression="LoggedTime" />
                        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                        <asp:BoundField DataField="PwrGen" HeaderText="PwrGen" SortExpression="PwrGen" />
                        <asp:BoundField DataField="PM1" HeaderText="PM1" SortExpression="PM1" />
                        <asp:BoundField DataField="AvgWindSpeed" HeaderText="AvgWindSpeed" SortExpression="AvgWindSpeed" />
                        <asp:BoundField DataField="TurbFreq" HeaderText="TurbFreq" SortExpression="TurbFreq" />
                        <asp:BoundField DataField="BattVolt" HeaderText="BattVolt" SortExpression="BattVolt" />
                        <asp:BoundField DataField="TurbDC" HeaderText="TurbDC" SortExpression="TurbDC" />
                        <asp:BoundField DataField="VPH1" HeaderText="VPH1" SortExpression="VPH1" />
                        <asp:BoundField DataField="VPH2" HeaderText="VPH2" SortExpression="VPH2" />
                        <asp:BoundField DataField="VPH3" HeaderText="VPH3" SortExpression="VPH3" />
                        <asp:BoundField DataField="InvAdd" HeaderText="InvAdd" SortExpression="InvAdd" />
                        <asp:BoundField DataField="InvState" HeaderText="InvState" SortExpression="InvState" />
                        <asp:BoundField DataField="InvDCV" HeaderText="InvDCV" SortExpression="InvDCV" />
                        <asp:BoundField DataField="InvDCI" HeaderText="InvDCI" SortExpression="InvDCI" />
                        <asp:BoundField DataField="InvACV" HeaderText="InvACV" SortExpression="InvACV" />
                        <asp:BoundField DataField="InvACI" HeaderText="InvACI" SortExpression="InvACI" />
                        <asp:BoundField DataField="InvACF" HeaderText="InvACF" SortExpression="InvACF" />
                        <asp:BoundField DataField="Power" HeaderText="Power" SortExpression="Power" />
                        <asp:BoundField DataField="PowerMonth" HeaderText="PowerMonth" SortExpression="PowerMonth" />
                        <asp:BoundField DataField="PeakWind" HeaderText="PeakWind" SortExpression="PeakWind" />
                        <asp:BoundField DataField="IGBT" HeaderText="IGBT" SortExpression="IGBT" />
                        <asp:BoundField DataField="AC1" HeaderText="AC1" SortExpression="AC1" />
                        <asp:BoundField DataField="AC2" HeaderText="AC2" SortExpression="AC2" />
                        <asp:BoundField DataField="AC3" HeaderText="AC3" SortExpression="AC3" />
                        <asp:BoundField DataField="KW10Sec" HeaderText="KW10Sec" SortExpression="KW10Sec" />
                        <asp:BoundField DataField="StatTXT" HeaderText="StatTXT" SortExpression="StatTXT" />
                        <asp:BoundField DataField="Status1" HeaderText="Status1" SortExpression="Status1" />
                        <asp:BoundField DataField="Status2" HeaderText="Status2" SortExpression="Status2" />
                        <asp:BoundField DataField="Status3" HeaderText="Status3" SortExpression="Status3" />
                        <asp:BoundField DataField="Ram" HeaderText="Ram" SortExpression="Ram" />
                        <asp:BoundField DataField="TurbinePeakFreq" HeaderText="TurbinePeakFreq" SortExpression="TurbinePeakFreq" />
                    </Columns>
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:evocodbConnectionString %>"
                    SelectCommand="SELECT Top 1000 [LoggedTime], [Time], [PwrGen], [PM1], [AvgWindSpeed], [TurbFreq], [BattVolt], [TurbDC], [VPH1], [VPH2], [VPH3], [InvAdd], [InvState], [InvDCV], [InvDCI], [InvACV], [InvACI], [InvACF], [Power], [PowerMonth], [PeakWind], [IGBT], [AC1], [AC2], [AC3], [KW10Sec], [StatTXT], [Status1], [Status2], [Status3], [Ram] FROM [842245] ORDER BY [LoggedTime] DESC">
                </asp:SqlDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
        <table>
            <tr>
                <td>
                    Start Date:
                </td>
                <td>
                    <BDP:BDPLite ID="Startdate" runat="server" />
                </td>
                <td>
                    Time:
                </td>
                <td>
                    <MKB:TimeSelector ID="StartTime" runat="server" DisplaySeconds="False" SelectedTimeFormat="TwentyFour">
                    </MKB:TimeSelector>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    End Date:
                </td>
                <td>
                    <BDP:BDPLite ID="EndDate" runat="server" />
                </td>
                <td>
                    Time:
                </td>
                <td>
                    <MKB:TimeSelector ID="EndTime" runat="server" DisplaySeconds="False" SelectedTimeFormat="TwentyFour">
                    </MKB:TimeSelector>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Download CSV" />
                    </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
