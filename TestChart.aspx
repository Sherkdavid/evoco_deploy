﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TestChart.aspx.vb" Inherits="Evoco.TestChart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
 <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Flot Examples</title>
    <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="/Flot/excanvas.min.js"></script><![endif]-->
    <script language="javascript" type="text/javascript" src="/Flot/jquery.js"></script>
    <script language="javascript" type="text/javascript" src="/Flot/jquery.flot.js"></script>
 </head>
    <body>
    <form id="Form1" runat="server">
    <h1>Flot Examples</h1>

    <div id="placeholder" style="width:600px;height:300px;"></div>

    <p>Example of loading data dynamically with AJAX. Percentage change in GDP (source: <a href="http://epp.eurostat.ec.europa.eu/tgm/table.do?tab=table&init=1&plugin=1&language=en&pcode=tsieb020">Eurostat</a>). Click the buttons below.</p>

    <p>The data is fetched over HTTP, in this case directly from text
    files. Usually the URL would point to some web server handler
    (e.g. a PHP page or Java/.NET/Python/Ruby on Rails handler) that
    extracts it from a database and serializes it to JSON.</p>

    <p>
      <input class="fetchSeries" type="button" value="First dataset"> -
      <a href="DataLayer.aspx?DevID=999999">data</a> -
      <span></span>
    </p>

    <p>
      <input class="fetchSeries" type="button" value="Second dataset"> -
      <a href="DataLayer.aspx?DevID=999999">data</a> -
      <span></span>
    </p>

    <p>
      <input class="fetchSeries" type="button" value="Third dataset"> -
      <a href="DataLayer.aspx?DevID=999999">data</a> -
      <span></span>
    </p>

    <p>If you combine AJAX with setTimeout, you can poll the server
       for new data.</p>

    <p>
      <input class="dataUpdate" type="button" value="Poll for data">
    </p>

<script type="text/javascript">
    $(function () {
        var options = {
            lines: { show: true },
            points: { show: true },
            xaxis: { tickDecimals: 0, tickSize: 1 }
        };
        var data = [];
        var placeholder = $("#placeholder");

        $.plot(placeholder, data, options);


        // fetch one series, adding to what we got
        var alreadyFetched = {};

        $("input.fetchSeries").click(function () {
            var button = $(this);

            // find the URL in the link right next to us 
            var dataurl = "DataLayer.aspx?DevID=999999";

            // then fetch the data with jQuery
            function onDataReceived(series) {
                // extract the first coordinate pair so you can see that
                // data is now an ordinary Javascript object
                var firstcoordinate = '(' + series.data[0][0] + ', ' + series.data[0][1] + ')';

                button.siblings('span').text('Fetched ' + series.label + ', first point: ' + firstcoordinate);

                // let's add it to our current data
                if (!alreadyFetched[series.label]) {
                    alreadyFetched[series.label] = true;
                    data.push(series);
                }

                // and plot all we got
                $.plot(placeholder, data, options);
            }

            $.ajax({
                url: "DataLayer.aspx?DevID=999999",
                method: 'GET',
                dataType: 'json',
                success: onDataReceived
            });
        });


        // initiate a recurring data update
        $("input.dataUpdate").click(function () {
            // reset data
            data = [];
            alreadyFetched = {};

            $.plot(placeholder, data, options);

            var iteration = 0;

            function fetchData() {
                ++iteration;

                function onDataReceived(series) {
                    // we get all the data in one go, if we only got partial
                    // data, we could merge it with what we already got
                    data = [series];

                    $.plot($("#placeholder"), data, options);
                }

                $.ajax({
                    // usually, we'll just call the same URL, a script
                    // connected to a database, but in this case we only
                    // have static example files so we need to modify the
                    // URL
                    url: "DataLayer.aspx?DevID=999999",
                    method: 'GET',
                    dataType: 'json',
                    success: onDataReceived
                });

                if (iteration < 5)
                    setTimeout(fetchData, 1000);
                else {
                    data = [];
                    alreadyFetched = {};
                }
            }

            setTimeout(fetchData, 1000);
        });
    });
</script>
</form>
 </body>
</html>