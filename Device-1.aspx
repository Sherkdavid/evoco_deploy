<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Evoco.Master"
    CodeBehind="Device-1.aspx.vb" Inherits="Evoco.Device1" %>

<%@ Register Assembly="BasicFrame.WebControls.BasicDatePicker" Namespace="BasicFrame.WebControls"
    TagPrefix="BDP" %>
<%@ Register Assembly="TimePicker" Namespace="MKB.TimePicker" TagPrefix="MKB" %>
<%@ Register Assembly="Artem.Google" Namespace="Artem.Google.UI" TagPrefix="artem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="http://www.d-3.eu/flot/excanvas.min.js"></script><![endif]-->
    <script language="javascript" type="text/javascript" src="http://www.d-3.eu/flot/jquery.js"></script>
    <script language="javascript" type="text/javascript" src="http://www.d-3.eu/flot/jquery.flot.js"></script>
    <script language="javascript" type="text/javascript" src="http://www.d-3.eu/flot/jquery.flot.time.js"></script>
    <script language="javascript" type="text/javascript" src="http://www.d-3.eu/flot/date.js"></script>
    <script language="javascript" type="text/javascript" src="http://www.d-3.eu/flot/jquery.flot.tooltip.js"></script>
    <script type="text/javascript">

        function fetchData() {

            // alert("1");
            // fetchData1();
            // fetchData2();
            fetchData3();
            fetchData4();
            fetchData5();
            fetchData6();
            fetchData7();
            fetchData8();
        }
        function fetchData0() {
            // alert("1");
            // fetchData1();
            // fetchData2();
            fetchData3();
            fetchData4();
            fetchData5();
            fetchData6();
            fetchData7();
            fetchData8();
            // alert("1");
            // fetchData7();
        }

        function fetchData1() {
            // alert("2");
            $.ajax({
                url: "/DataLayer.aspx?HardwareID=" + document.getElementById('MainContent_txtHardwareID').value + "&Field=TurbFreq&GroupType=AVG" + document.getElementById('MainContent_txtDateParams').value,
                method: "GET",
                dataType: "json",
                success: function (series) {
                    var data = [series];
                    var options = {
                        lines: {
                            show: true
                        },
                        tooltip: true,
                        tooltipOpts: {
                            content: "<div style='background-color:White; border: 1px solid navy; padding: 2px;'>%y.2 @ %x</div>",
                            xDateFormat: "%H:%M:%S",
                            shifts: {
                                x: 10,
                                y: 20
                            },
                            defaultTheme: false
                        },
                        xaxis: { mode: "time", minTickSize: [5, "minute"], timeformat: "%H:%M" },

                        grid: {
                            // backgroundColor: { colors: ["#fff", "#fff"] },
                            hoverable: true //IMPORTANT! this is needed for tooltip to work
                        }
                    };
                    $.plot($("#placeholder1"), data, options);
                }
            });

        }

        function fetchData8() {
            // alert("2");
            $.ajax({
                url: "/DataLayer.aspx?HardwareID=" + document.getElementById('MainContent_txtHardwareID').value + "&Field=DailyPwrGen&GroupType=AVG" + document.getElementById('MainContent_txtDateParams').value,
                method: "GET",
                dataType: "json",
                success: function (series) {
                    var data = [series];
                    var options = {
                        bars: {
                            show: true,
                            barWidth: 60 * 60 * 1000 * 24 //1h
                        },
                        tooltip: true,
                        tooltipOpts: {
                            content: "<div style='background-color:White; border: 1px solid navy; padding: 2px;'>%y.2 kWhr</div>",
                            xDateFormat: "%H:%M:%S",
                            shifts: {
                                x: 10,
                                y: 20
                            },
                            defaultTheme: false
                        },
                        xaxis: { mode: "time", minTickSize: [1, "day"], timeformat: "%d/%m/%y" }
 , yaxis: {
     min: 0, max: 250
 },

                        grid: {
                            // backgroundColor: { colors: ["#fff", "#fff"] },
                            hoverable: true //IMPORTANT! this is needed for tooltip to work
                        }
                    };
                    $.plot($("#placeholder8"), data, options);
                }
            });

        }

        function fetchData7() {

            timezoneJS.timezone.zoneFileBasePath = "tz";
            timezoneJS.timezone.defaultZoneFile = [];
            timezoneJS.timezone.init({ async: true });
            // alert("2");
            $.ajax({

                url: "/DataLayer.aspx?HardwareID=" + document.getElementById('MainContent_txtHardwareID').value + "&Field=PwrGen&GroupType=AVG" + document.getElementById('MainContent_txtDateParams').value,
                method: "GET",
                dataType: "json",
                success: function (series) {
                    var data = [series];
                    var options = {
                        lines: {
                            show: true
                        },
                        tooltip: true,
                        tooltipOpts: {
                            content: "<div style='background-color:White; border: 1px solid navy; padding: 2px;'>%y.2 @ %x</div>",
                            xDateFormat: "%H:%M:%S",
                            shifts: {
                                x: 10,
                                y: 20
                            },
                            defaultTheme: false
                        },
                        xaxis: { mode: "time", minTickSize: [5, "minute"], timeformat: "%H:%M", timezone: "local" },

                        grid: {
                            // backgroundColor: { colors: ["#fff", "#fff"] },
                            hoverable: true //IMPORTANT! this is needed for tooltip to work
                        }
                    };
                    $.plot($("#placeholder7"), data, options);
                }
            });

        }

        function fetchData2() {

            // alert("2");
            $.ajax({
                url: "/DataLayer.aspx?HardwareID=" + document.getElementById('MainContent_txtHardwareID').value + "&Field=TurbinePeakFreq&GroupType=MAX" + document.getElementById('MainContent_txtDateParams').value,
                method: "GET",
                dataType: "json",
                success: function (series) {
                    var data = [series];
                    var options = {
                        lines: {
                            show: true
                        },
                        tooltip: true,
                        tooltipOpts: {
                            content: "<div style='background-color:White; border: 1px solid navy; padding: 2px;'>%y.2 @ %x</div>",
                            xDateFormat: "%H:%M:%S",
                            shifts: {
                                x: 10,
                                y: 20
                            },
                            defaultTheme: false
                        },
                        //	                    points: {
                        //	                        show: true
                        //	                    },
                        xaxis: { mode: "time", minTickSize: [5, "minute"], timeformat: "%H:%M", timezone: "America/Chicago" },

                        grid: {
                            // backgroundColor: { colors: ["#fff", "#fff"] },
                            hoverable: true //IMPORTANT! this is needed for tooltip to work
                        }
                    };
                    $.plot($("#placeholder2"), data, options);
                }
            });

        }

        function fetchData3() {
            // alert("2");
            $.ajax({
                url: "/DataLayer.aspx?HardwareID=" + document.getElementById('MainContent_txtHardwareID').value + "&Field=TurbDC&GroupType=MAX" + document.getElementById('MainContent_txtDateParams').value,
                method: "GET",
                dataType: "json",
                success: function (series) {
                    var data = [series];
                    var options = {
                        lines: {
                            show: true
                        },
                        tooltip: true,
                        tooltipOpts: {
                            content: "<div style='background-color:White; border: 1px solid navy; padding: 2px;'>%y.2 @ %x</div>",
                            xDateFormat: "%H:%M:%S",
                            shifts: {
                                x: 10,
                                y: 20
                            },
                            defaultTheme: false
                        },
                        //	                    points: {
                        //	                        show: true
                        //	                    },
                        xaxis: { mode: "time", minTickSize: [5, "minute"], timeformat: "%H:%M" },

                        grid: {
                            // backgroundColor: { colors: ["#fff", "#fff"] },
                            hoverable: true //IMPORTANT! this is needed for tooltip to work
                        }
                    };
                    $.plot($("#placeholder3"), data, options);
                }
            });

        }

        function fetchData4() {
            // alert("2");
            $.ajax({
                url: "/DataLayer.aspx?HardwareID=" + document.getElementById('MainContent_txtHardwareID').value + "&Field=IGBT&GroupType=AVG" + document.getElementById('MainContent_txtDateParams').value,
                method: "GET",
                dataType: "json",
                success: function (series) {
                    var data = [series];
                    var options = {
                        lines: {
                            show: true
                        },
                        tooltip: true,
                        tooltipOpts: {
                            content: "<div style='background-color:White; border: 1px solid navy; padding: 2px;'>%y.2 @ %x</div>",
                            xDateFormat: "%H:%M:%S",
                            shifts: {
                                x: 10,
                                y: 20
                            },
                            defaultTheme: false
                        },
                        //	                    points: {
                        //	                        show: true
                        //	                    },
                        xaxis: { mode: "time", minTickSize: [5, "minute"], timeformat: "%H:%M" },

                        grid: {
                            // backgroundColor: { colors: ["#fff", "#fff"] },
                            hoverable: true //IMPORTANT! this is needed for tooltip to work
                        }
                    };
                    $.plot($("#placeholder4"), data, options);
                }
            });

        }

        function fetchData5() {
            // alert("2");
            $.ajax({
                url: "/DataLayer.aspx?HardwareID=" + document.getElementById('MainContent_txtHardwareID').value + "&Field=AvgWindSpeed&GroupType=AVG" + document.getElementById('MainContent_txtDateParams').value,
                method: "GET",
                dataType: "json",
                success: function (series) {
                    var data = [series];
                    var options = {
                        lines: {
                            show: true
                        },
                        tooltip: true,
                        tooltipOpts: {
                            content: "<div style='background-color:White; border: 1px solid navy; padding: 2px;'>%y.2 @ %x</div>",
                            xDateFormat: "%H:%M:%S",
                            shifts: {
                                x: 10,
                                y: 20
                            },
                            defaultTheme: false
                        },
                        //	                    points: {
                        //	                        show: true
                        //	                    },
                        xaxis: { mode: "time", minTickSize: [5, "minute"], timeformat: "%H:%M" },

                        grid: {
                            // backgroundColor: { colors: ["#fff", "#fff"] },
                            hoverable: true //IMPORTANT! this is needed for tooltip to work
                        }
                    };
                    $.plot($("#placeholder5"), data, options);
                }
            });

        }

        function fetchData6() {
            // alert("3");
            $.ajax({
                url: "/DataLayer.aspx?HardwareID=" + document.getElementById('MainContent_txtHardwareID').value + "&Field=PeakWind&GroupType=MAX" + document.getElementById('MainContent_txtDateParams').value,
                method: "GET",
                dataType: "json",
                success: function (series) {
                    var data = [series];
                    var options = {
                        lines: {
                            show: true
                        },
                        tooltip: true,
                        tooltipOpts: {
                            content: "<div style='background-color:White; border: 1px solid navy; padding: 2px;'>%y.2 @ %x</div>",
                            xDateFormat: "%H:%M:%S",
                            shifts: {
                                x: 10,
                                y: 20
                            },
                            defaultTheme: false
                        },
                        //	                    points: {
                        //	                        show: true
                        //	                    },
                        xaxis: { mode: "time", minTickSize: [5, "minute"], timeformat: "%H:%M" },

                        grid: {
                            // backgroundColor: { colors: ["#fff", "#fff"] },
                            hoverable: true //IMPORTANT! this is needed for tooltip to work
                        }
                    };
                    $.plot($("#placeholder6"), data, options);
                }
            });

            // setTimeout(fetchData, 1500);
        }

    </script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <%--<script src="http://code.jquery.com/jquery-1.9.1.js"></script>--%>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#tabs").tabs({
                collapsible: true
            });
        });
    </script>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="lblChartCode" runat="server" Text=""></asp:Label></ContentTemplate>
    </asp:UpdatePanel>
    <asp:Timer ID="Timer1" runat="server" Interval="13000" Enabled="False">
    </asp:Timer>
    <div style="clear: both">
    </div>
    <div id="tabs">
        <asp:Panel ID="pnlAdminTabs1" runat="server">
            <ul>
                <li><a href="#tabs-1">Overview</a></li>
                <li><a href="#tabs-2">Site Info</a></li>
                <li><a href="#tabs-3">Notes</a></li>
                <li><a href="#tabs-4">Technical </a></li>
            </ul>
        </asp:Panel>
        <asp:Panel ID="pnlUserTabs1" runat="server">
            <ul>
                <li><a href="#tabs-1">Overview</a></li>
                <li><a href="#tabs-2">Site Info</a></li>
            </ul>
        </asp:Panel>
        <div id="tabs-1" style="min-height: 200px;">
            <div style="float: right">
                <asp:Panel ID="pnlShowMap" Visible="false" runat="server">
                    <artem:GoogleMap ID="GoogleMap1" Width="200" Height="200" Key="AIzaSyCpRWRZbdoCt58jlmuuPBpiC8PC__WBVKU"
                        runat="server">
                    </artem:GoogleMap>
                </asp:Panel>
                <asp:Panel ID="pnlNoMap" Visible="false" runat="server">
                    <div style="width: 200px; height: 200px; background-color: Silver; border: 1px solid navy;
                        text-align: center; display: table-cell; vertical-align: middle;">
                        <strong><u>No Map Available</u></strong></div>
                </asp:Panel>
            </div>
            <h2>
                <asp:Label ID="lblDeviceName" runat="server" Text=""></asp:Label></h2>
            <p>
                &nbsp;</p>
            <div style="float: right; white-space: nowrap; width: 40%">
                <div style="float: right; white-space: nowrap;">
                    <asp:Label ID="lblRPM" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="lblPwrGrn" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="lblMCProd" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="lblOffset" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="lblTotalProd" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="lblMCStart" runat="server" Text=""></asp:Label><br />
                </div>
                <strong>Rotor Speed:</strong>
                <br />
                <strong>Turbine Power:</strong>
                <br />
                <strong>Total M+C Power:</strong>
                <br />
                <strong>Total Pre M+C Power:</strong>
                <br />
                <strong>Total Produced:</strong>
                <br />
                <strong>M+C Start Date:</strong>
                <br />
            </div>
            <strong>Warnings:</strong>
            <asp:Label ID="lblWarnings" runat="server" Text=""></asp:Label><br />
            <strong>Update Time:</strong>
            <asp:Label ID="lblLastUpdate" runat="server" Text=""></asp:Label><br />
        </div>
        <div id="tabs-2">
            <p>
                <strong>Contact Name: </strong>
                <asp:Label ID="lblContactName" runat="server" Text="Label"></asp:Label><br />
                <strong>Address: </strong><br />
                <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label><br />
                <strong>Phone: </strong>
                <asp:Label ID="lblPhone" runat="server" Text=""></asp:Label><br />
                <strong>Email: </strong>
                <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label><br />
            </p>
        </div>
        <asp:Panel ID="pnlAdminTabs2" Visible="false" runat="server">
            <div id="tabs-3">
                <h2>
                    Notes</h2>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                    Width="100%" ShowHeaderWhenEmpty="True">
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
                <asp:Panel ID="pnlViewNote" Visible="false" runat="server">
                    <div style="padding-left: 20px; padding-right: 20px; border-width: 1px; border-color: #34ccff;
                        border-style: solid">
                        <p>
                            &nbsp;</p>
                        <h2>
                            <asp:Label ID="lblNoteSubject" runat="server" Text=""></asp:Label></h2>
                        <p>
                            &nbsp;</p>
                        <p>
                            <asp:Label ID="lblNoteDetails" runat="server" Text=""></asp:Label></p>
                        <div style="float: right">
                            <asp:Button ID="btnCloseNotes" runat="server" Text="Close Note" /></div>
                        <p>
                            &nbsp;</p>
                        <p>
                            &nbsp;</p>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlAddNote" runat="server">
                    <p>
                        &nbsp;</p>
                    <h2>
                        Add Note</h2>
                    <table width="100%">
                        <tr>
                            <td valign="top" width="100">
                                Subject:
                            </td>
                            <td>
                                <asp:TextBox ID="txtSubject" runat="server" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" width="100">
                                Details:
                            </td>
                            <td>
                                <asp:TextBox ID="txtDetails" runat="server" Rows="6" TextMode="MultiLine" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" width="100">
                            </td>
                            <td>
                                <asp:Button ID="btnAddNote" runat="server" Text="Add Note" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </div>
            <div id="tabs-4">
                <p>
                    <asp:Label ID="lblRawDataLink" runat="server" Text=""></asp:Label></p>
            </div>
        </asp:Panel>
    </div>
    <br />
    &nbsp;<br />
    <strong>Time Frame:</strong>
    <asp:DropDownList ID="drpTimeFrame" runat="server" AutoPostBack="True">
        <asp:ListItem Value="3">3 Hours</asp:ListItem>
        <asp:ListItem Value="6">6 Hours</asp:ListItem>
        <asp:ListItem Value="12">12 hours</asp:ListItem>
        <asp:ListItem Value="24">1 Day</asp:ListItem>
        <asp:ListItem Value="72">3 Days</asp:ListItem>
        <asp:ListItem Value="168">1 Week</asp:ListItem>
        <asp:ListItem Value="336">2 Weeks</asp:ListItem>
        <asp:ListItem>Custom</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;<br />
    <asp:Panel ID="pnlCustomDate" Visible="false" runat="server">
        <table>
            <tr>
                <td>
                    <strong>Start Date:</strong>
                </td>
                <td>
                    <BDP:BDPLite ID="Startdate" runat="server" />
                </td>
                <td>
                    <strong>Time:</strong>
                </td>
                <td>
                    <MKB:TimeSelector ID="StartTime" runat="server" DisplaySeconds="False" SelectedTimeFormat="TwentyFour">
                    </MKB:TimeSelector>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <strong>End Date:</strong>
                </td>
                <td>
                    <BDP:BDPLite ID="EndDate" runat="server" />
                </td>
                <td>
                    <strong>Time:</strong>
                </td>
                <td>
                    <MKB:TimeSelector ID="EndTime" runat="server" DisplaySeconds="False" SelectedTimeFormat="TwentyFour">
                    </MKB:TimeSelector>
                </td>
                <td>
                    <asp:Button ID="btnCustomGraph" runat="server" Text="Go" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    &nbsp;<br />
    <asp:Panel ID="pnlDailyPower" Visible="false" runat="server">
        <div id="placeholder8" style="width: 900px; height: 300px; display: table-cell; margin: 10px">
        </div>
        <div style="clear: both;">
        </div>
        <br />
    </asp:Panel>
    <div id="placeholder7" style="width: 900px; height: 300px; display: table-cell; margin: 10px">
    </div>
    <div style="clear: both;">
    </div>
    <br />
    <div id="placeholder3" style="width: 900px; height: 300px; display: table-cell; margin: 10px">
    </div>
    <div style="clear: both;">
    </div>
    <br />
    <div id="placeholder4" style="width: 900px; height: 300px; display: table-cell; margin: 10px">
    </div>
    <div style="clear: both;">
    </div>
    <br />
    <div id="placeholder5" style="width: 900px; height: 300px; display: table-cell; margin: 10px">
    </div>
    <div style="clear: both;">
    </div>
    <br />
    <div id="placeholder6" style="width: 900px; height: 300px; display: table-cell; margin: 10px">
    </div>
    <div style="clear: both;">
    </div>
    <br />
    <asp:HiddenField ID="txtDateParams" runat="server" />
    <asp:HiddenField ID="txtHardwareID" runat="server" />
    <p>
    </p>
</asp:Content>
