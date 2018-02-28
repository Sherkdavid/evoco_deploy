<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Evoco Energy Wind Turbines</title>
    <meta name="description" content="Evoco Energy offer a range of small wind turbines with unrivalled efficiency, market leading returns, supreme build quality and a robust, contemporary design, all backed by a 5 year warranty." />
    <meta name="keywords" content="Small Wind Turbines, Wind Energy, Evoco, Wind, Energy, Sustainable, Sustainability, Turbines, Airsurfer" />
    <meta name="robots" content="index, follow" />
    <meta name="google-site-verification" content="gQmcM9mYWFsqPFXlA3yeytz5lfXjjj7BiOC9iiHhdEA" />
    <meta name="classification" content="Wind Turbine Energy Producers" />
    <meta name="author" content="www.evocoenergy.co.uk" />
    <meta name="copyright" content="Evoco Energy" />
    <meta name="revisit-after" content="15 Days" />
    <link href="http://www.evocoenergy.co.uk/public_html/stylesheets/front/style.css"
        rel="stylesheet" type="text/css" />
    <!--<link href="http://www.evocoenergy.co.uk/public_html/stylesheets/front/global.css" rel="stylesheet" type="text/css" />-->
    <script type="text/javascript" src="http://www.evocoenergy.co.uk/public_html/javascripts/jquery-1.6.2.js"></script>
    <link href="http://www.evocoenergy.co.uk/public_html/stylesheets/front/validationEngine.jquery.css"
        rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://www.evocoenergy.co.uk/public_html/javascripts/jquery.validationEngine.js"></script>
    <script type="text/javascript" src="http://www.evocoenergy.co.uk/public_html/javascripts/jquery.validationEngine-en.js"></script>
    <script type="text/javascript" src="http://www.evocoenergy.co.uk/public_html/javascripts/slides.min.jquery.js"></script>
    <script>
        var site_url = 'http://www.evocoenergy.co.uk/';
    </script>
    <script>
        //Script for call back form on right.
        function show_me_frm() {
            $("#sucmsg").hide();
            $("#arr").hide();
            $("#frmquote").show();
            $("#frm_fix").show();
        }
        function show_me_message() {
            $("#arr").show();
            $("#frm_fix").hide();
        }
        function checkvalid_quote() {
            jQuery("#frmquote").validationEngine('attach', { promptPosition: "topLeft", scroll: false });
            resp = jQuery("#frmquote").validationEngine('validate');
            if (resp == true) {
                $("#quote_sub").hide();
                $("#waittext").show();
                var quote_name = $("#quote_name").val();
                var quote_email = $("#quote_email").val();
                var quote_phone = $("#quote_phone").val();
                //var best_time= $("#best_time").val();
                var best_time = "";
                var tComments = $("#tComments").val();
                var action = $("#action").val();
                var request = $.ajax({
                    type: "POST",
                    url: site_url + 'contactcallback_a.php',
                    data: "quote_name=" + quote_name + "&quote_email=" + quote_email + "&quote_phone=" + quote_phone + "&best_time=" + best_time + "&tComments=" + tComments + "&action=" + action,
                    success: function (data) {
                        if (data == 1) {
                            document.getElementById("quote_name").value = '';
                            document.getElementById("quote_email").value = '';
                            document.getElementById("quote_phone").value = '';
                            //document.getElementById("best_time").value = '';
                            document.getElementById("tComments").value = '';
                            $("#quote_sub").show();
                            $("#waittext").hide();
                            $("#frmquote").hide();
                            $("#sucmsg").show();
                        }
                    }
                });
                request.fail(function (jqXHR, textStatus) {
                    alert("Request failed: " + textStatus);
                });
            }
            else {
                return false;
            }
        }
    </script>
    <script>
        //Script for call back form on Left.
        function show_me_frm_left() {
            $("#sucmsg_left_1").hide();
            $("#arr_left").hide();
            $("#frmquote_left").show();
            $("#frm_fix_left").show();
        }
        function show_me_message_left() {
            $("#arr_left").show();
            $("#frm_fix_left").hide();
        }
        function checkvalid_quote_left() {
            jQuery("#frmquote_left").validationEngine('attach', { promptPosition: "topRight", scroll: false });
            resp = jQuery("#frmquote_left").validationEngine('validate');
            if (resp == true) {
                $("#quote_sub_left").hide();
                $("#waittext_left").show();
                var quote_name_left = $("#quote_name_left").val();
                var quote_email_left = $("#quote_email_left").val();
                var quote_phone_left = $("#quote_phone_left").val();
                var tServices_left = $("#tServices_left").val();
                var action_left = $("#action_left").val();
                var request = $.ajax({
                    type: "POST",
                    url: site_url + 'contactcallback_a.php',
                    //data: "quote_name_left="+quote_name_left+"&quote_email_left="+quote_email_left+"&quote_phone_left="+quote_phone_left+"&best_time_left="+best_time_left+"&tComments_left="+tComments_left+"&action_left="+action_left, 	    	  
                    data: "quote_name_left=" + quote_name_left + "&quote_email_left=" + quote_email_left + "&quote_phone_left=" + quote_phone_left + "&tServices_left=" + tServices_left + "&action_left=" + action_left,
                    success: function (data) {
                        if (data == 1) {
                            document.getElementById("quote_name_left").value = '';
                            document.getElementById("quote_email_left").value = '';
                            document.getElementById("quote_phone_left").value = '';
                            document.getElementById("tServices_left").value = '';
                            $("#quote_sub_left").show();
                            $("#waittext_left").hide();
                            $("#frmquote_left").hide();
                            $("#sucmsg_left_1").show();
                        }
                    }
                });
                request.fail(function (jqXHR, textStatus) {
                    alert("Request failed: " + textStatus);
                });
            }
            else {
                return false;
            }
        }
    </script>
</head>
<!-----Script for call back form on right----->
<div class="getfreequote" id="frm_fix" style="display: none;">
    <div class="clo">
        <a href="javascript:void(0);" onclick="show_me_message();">
            <img src="public_html/images/quick-bu.png" border="0" /></a>
        <h1>
            Make an<span> Enquiry</span></h1>
    </div>
    <form name="frmquote" id="frmquote" class="form-table" action="" style="display: ">
    <input type="hidden" name="action" id="action" value="quote_right">
    <table border="0" cellpadding="2" cellspacing="0" align="center">
        <tr>
            <td>
                <input type="text" class="validate[required] slider-popup" name="quote_name" id="quote_name"
                    placeholder="Name">
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" class="validate[required,custom[phone]] slider-popup" name="quote_phone"
                    id="quote_phone" placeholder="Phone No">
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" class="validate[required,custom[email]] slider-popup" name="quote_email"
                    id="quote_email" placeholder="Email">
            </td>
        </tr>
        <tr>
            <td>
                <textarea class="validate[required] slider-popup" style="height: 56px;" name="tComments"
                    id="tComments" cols="" rows="" placeholder="Notes"></textarea>
            </td>
        </tr>
        <tr>
            <td valign="bottom">
                <input id="quote_sub" class="button-pu" type="button" value="Submit" name="Submit"
                    onclick="checkvalid_quote();" style="display: ">
                <span id="waittext" style="display: none;">Please wait...</span>
            </td>
        </tr>
    </table>
    </form>
    <div id="sucmsg" style="display: none;">
        Thank you very much for contacting us. We will get back to you as soon as possible.
    </div>
    <div class="contact-now">
        <h1>
            Contact Us now</h1>
        <span>Phone No &nbsp;&nbsp;<strong>01484 475 800</strong></span><br />
        <span style="padding-left: 20px;">e-MAIL &nbsp;&nbsp;<a href="mailto:info@evocoenergy.com">info@evocoenergy.com</a></span>
    </div>
</div>
<!-----------------------------------/Script for call back form on right----->
<!-------------------------------------Script for call back form on Left----->
<div class="getfreequoteleft_1" id="frm_fix_left" style="display: none;">
    <div class="clo_1">
        <a href="javascript:void(0);" onclick="show_me_message_left();">
            <img src="public_html/images/quick-bu2.png" border="0" /></a>
        <h1>
            Book a <span>Survey</span></h1>
    </div>
    <form name="frmquote" id="frmquote_left" class="form-table_1" action="" style="display: ">
    <input type="hidden" name="action_left" id="action_left" value="quote_left">
    <table border="0" cellpadding="2" cellspacing="0" align="center">
        <tr>
            <td>
                <input type="text" class="validate[required] slider-popup" name="quote_name_left"
                    id="quote_name_left" placeholder="Name">
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" class="validate[required,custom[phone]] slider-popup" name="quote_phone_left"
                    id="quote_phone_left" placeholder="Phone No">
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" class="validate[required,custom[email]] slider-popup" name="quote_email_left"
                    id="quote_email_left" placeholder="Email">
            </td>
        </tr>
        <tr>
            <td>
                <textarea class="validate[required] slider-popup" style="height: 56px;" name="tServices_left"
                    id="tServices_left" cols="" rows="" placeholder="How do you like our Service?"></textarea>
            </td>
        </tr>
        <tr>
            <td valign="bottom">
                <input id="quote_sub_left" class="button-pu" type="button" value="Submit" name="Submit"
                    onclick="checkvalid_quote_left();" style="display: ">
                <span id="waittext_left" style="display: none;">Please wait...</span>
            </td>
        </tr>
    </table>
    </form>
    <div id="sucmsg_left_1" style="display: none;">
        Thank you very much for contacting us. We will get back to you as soon as possible.
    </div>
    <div class="contact-now">
        <h1>
            Contact Us now</h1>
        <span>Phone No &nbsp;&nbsp;<strong>01484 475 800</strong></span><br />
        <span>e-MAIL &nbsp;<a style="padding-left: 23px;" href="mailto:info@evocoenergy.com">info@evocoenergy.com</a></span>
    </div>
</div>
<!-----/Script for call back form on Left----->
<div class="getfreequote1_1">
    <a id="arr" href="javascript:void(0);" class="closed2" onclick="show_me_frm();" style="display: ">
        <img id="subimage" src="public_html/images/right-arrow.png" border="0" />
    </a>
</div>
<div class="getfreequoteleft1_1">
    <a id="arr_left" href="javascript:void(0);" class="closed2" onclick="show_me_frm_left();"
        style="display: ">
        <img id="subimage" src="public_html/images/left-arrow.png" border="0" />
    </a>
</div>
<body>
    <div id="main">
        <div class="main-inner">
            <div class="top-line">
                <img src="http://www.evocoenergy.co.uk/public_html/images/top-line.gif" alt="" /></div>
            <div class="top-part">
                <div class="logo">
                    <a href="http://www.evocoenergy.co.uk/">
                        <img src="http://www.evocoenergy.co.uk/public_html/images/logo.gif" alt="" title="logo" /></a></div>
                <div class="emial-number">
                    <div class="number">
                        <strong>Keep in touch</strong> 01484 475 800</div>
                    <div class="top-icon">
                        <a href="mailto:info@evocoenergy.com">info@evocoenergy.com</a><!--&nbsp; <a href="https://plus.google.com/" target="_blank"><img onmouseout="this.src='http://www.evocoenergy.co.uk/public_html/images/gmail.png'" onmouseover="this.src='http://www.evocoenergy.co.uk/public_html/images/gmail-hover.png'" src="http://www.evocoenergy.co.uk/public_html/images/gmail.png" alt=""/></a>--><!--<a href="http://www.facebook.com/evocoenergy" target="_blank"><img onmouseout="this.src='http://www.evocoenergy.co.uk/public_html/images/fb.gif'" onmouseover="this.src='http://www.evocoenergy.co.uk/public_html/images/fb-hover.gif'"  src="http://www.evocoenergy.co.uk/public_html/images/fb.gif" alt=""/></a>--><a
                            href="https://twitter.com/evocoenergy" target="_blank"><img onmouseout="this.src='http://www.evocoenergy.co.uk/public_html/images/twi.gif'"
                                onmouseover="this.src='http://www.evocoenergy.co.uk/public_html/images/twi-hover.gif'"
                                src="http://www.evocoenergy.co.uk/public_html/images/twi.gif" alt="" /></a></div>
                </div>
                <div style="clear: both;">
                </div>
            </div>
            <div class="menu">
                <ul>
                    <li class="fist"><a href="index.php">home</a></li>
                    <li><a href="aboutus.php">about evoco</a> </li>
                    <li><a href="javascript:void(0);">Turbines</a>
                        <ul>
                            <li><a href="http://www.evocoenergy.co.uk/Evocoturbine.php">Evoco 10kw Turbine</a></li>
                            <li><a href="http://www.evocoenergy.co.uk/How-It-Works.php">How It Works</a></li>
                            <li><a href="http://www.evocoenergy.co.uk/Gallery.php">Gallery</a></li>
                            <li><a href="http://www.evocoenergy.co.uk//public_html/uploads/pdf/evoco-brochure.pdf"
                                target="_blank">Brochure</a></li>
                            <li><a href="http://www.evocoenergy.co.uk/Faq.php">Faq's </a></li>
                        </ul>
                    </li>
                    <li><a href="http://www.evocoenergy.co.uk/evocoblog" target="_blank">News</a></li>
                    <li><a href="http://www.evocoenergy.co.uk/Testimonials.php">Testimonials</a></li>
                    <li><a href="http://www.evocoenergy.co.uk/OwnATurbine.php">Own a Turbine</a></li>
                    <!--<li><a href="http://www.evocoenergy.co.uk/Faq.php">Faq's </a>
        <li><a href="http://www.evocoenergy.co.uk/Our-10kw-Turbine">our 10kw turbine </a>
        <ul>
            <li><a href="http://www.evocoenergy.co.uk/Overview">Overview</a></li>           
            <li><a href="http://www.evocoenergy.co.uk/Specification">Specification</a></li>           
            <li><a href="http://www.evocoenergy.co.uk/Rigorous-Certification">Rigorous Certification</a></li>           
            <li><a href="http://www.evocoenergy.co.uk/Performance">Performance</a></li>          
			      <li><a href="http://www.evocoenergy.co.uk/Live-Turbine-Data">Live Turbine Data</a></li>                  
            <li><a href="http://www.evocoenergy.co.uk/Brochure">Brochure</a></li>                   
            <li><a href="http://www.evocoenergy.co.uk/Gallery">Gallery</a></li>                  
		   </ul>
        </li>-->
                    <!--<a href="http://www.evocoenergy.co.uk/Is-It-Right-For-Me">is it right for me?</a>
    			<ul>
    				<li><a href="http://www.evocoenergy.co.uk/How-It-Works">How It Works</a></li>           
    				<li><a href="http://www.evocoenergy.co.uk/UK-Feed-In-Tariff">UK Feed In Tariff</a></li>           
    				<li><a href="http://www.evocoenergy.co.uk/Planning-And-DNO">Planning &amp; DNO</a></li>           
    				<li><a href="http://www.evocoenergy.co.uk/Installing-Your-Turbine">Installing Your Turbine</a></li>           
    				<li><a href="http://www.evocoenergy.co.uk/How-To-Buy">How To Buy</a></li>           
    				<li><a href="http://www.evocoenergy.co.uk/Special-Offers">Special Offers</a></li>           
    			</ul>-->
                    <!--<li>
			<a href="http://www.evocoenergy.co.uk/Gallery.php">Gallery</a>
      <a href="http://www.evocoenergy.co.uk/Case-Studies">case studies</a>
			<ul>
				<li><a href="http://www.evocoenergy.co.uk/Turbine-Owners">Turbine Owners</a></li>           
				<li><a href="http://www.evocoenergy.co.uk/Evoco-Resellers">Evoco Resellers</a></li>           
				<li><a href="http://www.evocoenergy.co.uk/Testimonials">Testimonials</a></li>           
			</ul>
		</li>-->
                    <!--<li>
			<a href="http://www.evocoenergy.co.uk//public_html/uploads/pdf/evoco-brochure.pdf" target="_blank">Brochure</a>
		</li>-->
                    <!--<li><a href="http://www.evocoenergy.co.uk/EvocoWind.php">Evoco Wind</a></li>-->
                    <li><a href="http://www.evocoenergy.co.uk/Reseller.php">Become Reseller</a>
                        <!--<a href="http://www.evocoenergy.co.uk/Owners-Area">owners' area</a>-->
                        <!--<ul>
				<li><a href="http://www.evocoenergy.co.uk/Monitor-My-Turbine">Monitor My Turbine</a></li>           				
				<li><a href="http://www.evocoenergy.co.uk/Switch-My-Turbine-On/Off">Switch My Turbine On/Off</a></li>           				
				<li><a href="http://www.evocoenergy.co.uk/Warranty-Registration">Warranty Registration</a></li>           				
				<li><a href="http://www.evocoenergy.co.uk/Book-a-Service">Book a Service</a></li>           				
				<li><a href="http://www.evocoenergy.co.uk/Latest-Info-For-Owners">Latest Info For Owners</a></li>           				
				<li><a href="http://www.evocoenergy.co.uk/Owner-Downloads">Owner Downloads</a></li>           				
			</ul>-->
                    </li>
                    <li class="last"><a href="http://www.evocoenergy.co.uk/contactus.php">contact us</a>
                        <!--<ul>
				<li><a href="http://www.evocoenergy.co.uk/Book-a-Site-Survey">Book a Site Survey</a></li>           								
				<li><a href="http://www.evocoenergy.co.uk/General-Enquiries">General Enquiries</a></li>           								
				<li><a href="http://www.evocoenergy.co.uk/Press-Enquiries">Press Enquiries</a></li>           								
				<li><a href="http://www.evocoenergy.co.uk/Become-a-Dealer">Become a Dealer</a></li>           								
			</ul>-->
                    </li>
                </ul>
            </div>
            <div>
                <script>
                    function show_this(val) {
                        var total = 8;
                        var block = val;
                        $("#desc" + block).slideToggle("slow", function () {
                            if ($("#desc" + block).css("display") == "none") {
                                $("#view" + block).html("View");
                            } else {
                                $("#view" + block).html("Hide");
                            }
                        });
                        for (var i = 1; i <= total; i++) {
                            if (i != block) {
                                $("#desc" + i).slideUp("slow");
                            }
                        }
                    }	
                </script>
                <div class="inner-header">
                    Faq's</div>
                <div class="body-inner-part">
                    <!--<h1><span>Faq's</span></h1>-->
                    <div class="body-top-part pagepadding">
                        <div class="aboutus">
                            <div class="about-right1" style="width: 98%; height: auto;">
                                <ul class="mgmt-list">
                                    <li><a href="javascript:void(0);" onclick="show_this('1');">
                                        <!--<div class="mgmt-img">
						<img src="http://www.evocoenergy.co.uk/public_html/images/mgmt-img1.gif" />
					</div>-->
                                        <div class="mgmt-name">
                                            General Questions</div>
                                        <div class="view">
                                            <a href="javascript:void(0);" onclick="show_this('1');" id="view1">View</a>
                                        </div>
                                        <div class="clear">
                                        </div>
                                    </a>
                                        <div class="descarea01" id="desc1" style="display: none;">
                                            <div class="faq_question">
                                                <span>1. NO WIND - WHAT HAPPENS?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    With a grid connected turbine you sell your excess generated energy to the grid.
                                                    When there is no wind and therefore no power generation you will purchase back from
                                                    the grid as normal.
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>2. EXTREMELY HIGH WINDS - WHAT HAPPENS?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    All Evoco turbines have multiple protection systems.<br />
                                                    <br />
                                                    The 10kW turbine main safety feature and key design element is passive blade pitching.<br />
                                                    <br />
                                                    As the wind speed increases so does the force on the blades. As this happens the
                                                    blades are forced to pitch passively due to rotational forces and the force of the
                                                    wind on the blades. This happens progressively from around 10m/s onwards, allowing
                                                    the turbine to continue generating without either over speeding or producing too
                                                    much energy for the system.<br />
                                                    <br />
                                                    The pitching system can be controlled by hand from the base of the tower to allow
                                                    a safe manual stop of the turbine if needed.<br />
                                                    <br />
                                                    At all wind speeds, if more energy is produced at any moment than can be handled
                                                    by the inverter, it is diverted to a dump-load resistor to protect the electronics.<br />
                                                    <br />
                                                    The Evoco 10kW turbine is a Class II turbine and has a structural survival wind
                                                    speed rating of 50m/s (112 mph). (Hurricane force is only 32m/s). Excluding mountain
                                                    tops, winds of this speed occur in England only once every 60 to 70 years.<br />
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>3. ARE EVOCO TURBINES NOISY ?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    Evoco turbines are designed to operate at a relatively low rotation speed (Rated
                                                    120RPM). This coupled with noise-controlling blade aerodynamics enables the units
                                                    to be operate with minimal noise in average wind conditions.<br />
                                                    <br />
                                                    It is recommended that minimum separation distances between turbine and neighbouring
                                                    property is approximately 150m - 200m.
                                                    <br />
                                                    <br />
                                                    For full details regarding our noise report contact our office on 01484 475 800
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>4. WILL AN EVOCO TURBINE INTERFERE WITH MY ELECTRICAL EQUIPMENT?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    No - An Evoco wind turbine will not interfere with any of your electrical equipment.
                                                    Our turbines comply with European Community regulations on electromagnetic emissions.
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>5. WILL AN EVOCO TURBINE HAVE ANY EFFECT ON ANIMALS / LIVESTOCK?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    We currently have installations on sites with animals ranging from cattle and poultry
                                                    to alpacas.
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><a href="javascript:void(0);" onclick="show_this('2');">
                                        <!--<div class="mgmt-img">
						<img src="http://www.evocoenergy.co.uk/public_html/images/mgmt-img1.gif" />
					</div>-->
                                        <div class="mgmt-name">
                                            Electrical/Connection</div>
                                        <div class="view">
                                            <a href="javascript:void(0);" onclick="show_this('2');" id="view2">View</a>
                                        </div>
                                        <div class="clear">
                                        </div>
                                    </a>
                                        <div class="descarea01" id="desc2" style="display: none;">
                                            <div class="faq_question">
                                                <span>1. WHAT IS A GRID CONNECTION SYSTEM?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    With a grid connect system the power is fed directly into your main distribution
                                                    board on the consumption side of your meter so that your appliances use the turbine's
                                                    generation before drawing any power from the grid. If you need more power than is
                                                    currently being generated, the shortfall is drawn from the grid as normal.
                                                    <br />
                                                    Any power you don't use is exported to the grid and purchased from you by your electricity
                                                    supplier.
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>2. WHAT HAPPENS IN A POWER CUT?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    With a grid connect system current regulations state if there is a power cut the
                                                    turbine must stop generating for the safety of workmen repairing the grid or an
                                                    electrician working in your house if the power was cut deliberately.<br />
                                                    Our standard system is grid-tied and therefore behaves in this way. If you would
                                                    like a backup-power solution, please speak to us about this as we may be able to
                                                    design one to suit your needs.
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>3. IS THERE A LEGAL REQUIREMENT FOR GRID CONNECTION?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    In the UK, G-83 and G59 are the electrical regulations which apply. Evoco's turbine
                                                    systems are fully compliant with these regulations â€“ your installer will give
                                                    further advice on making the connection.
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>4. DO I NEED A SINGLE OR 3 PHASE SUPPLY? WHAT IS G-83/1 AND G-59/1</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    Single Phase<br />
                                                    It is possible to connect the 10kw to a single phase line. Permission is required
                                                    from the local DNO (your installer will take care of this) and typically a G59 replay
                                                    is needed.<br />
                                                    A G59 relay is a higher protection level for the grid to ensure your turbine disconnects
                                                    should there be a grid failure. Typically it costs approximately Â£1500 for the
                                                    extra works needed; this is a lot cheaper than installing a new three phase supply.<br />
                                                    <br />
                                                    Three Phase<br />
                                                    The 10kw was predominantly designed to fit on a three phase supply with no permission
                                                    required. Connection is made using a G83 relay included within the inverter.<br />
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><a href="javascript:void(0);" onclick="show_this('3');">
                                        <!--<div class="mgmt-img">
						<img src="http://www.evocoenergy.co.uk/public_html/images/mgmt-img1.gif" />
					</div>-->
                                        <div class="mgmt-name">
                                            Safety/Accreditation</div>
                                        <div class="view">
                                            <a href="javascript:void(0);" onclick="show_this('3');" id="view3">View</a>
                                        </div>
                                        <div class="clear">
                                        </div>
                                    </a>
                                        <div class="descarea01" id="desc3" style="display: none;">
                                            <div class="faq_question">
                                                <span>1. WHAT ARE THE SAFETY FEATURES?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    The Evoco 10kW is fully MCS certificated and designed in-line with BS EN 61400 (Small
                                                    Wind Standard) which means they meet stringent safety standards. In addition to
                                                    being structurally strong, our turbines offer multiple safety systems:<br />
                                                    <br />
                                                    Passive pitch control.<br />
                                                    Manual pitch-control to prevent the rotor turning.<br />
                                                    Manual electronic braking (all turbines)<br />
                                                    Dump load to prevent overload of the circuitry (all turbines)<br />
                                                    G83 compliant "anti-islanding" protection prevents generation during power failure.
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>2. DO EVOCO TURBINES HAVE ACCREDITATION IN THE UK?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    Evoco turbines meet all necessary legal, regulatory and quality standards to allow
                                                    their installation.<br />
                                                    <br />
                                                    In the UK, there is a system of grants and incentives and for some of these it is
                                                    necessary for the product to have accreditation.<br />
                                                    <br />
                                                    Since 2006, the Microgeneration Certification Scheme (MCS) has been in place to
                                                    test small wind turbines to the small wind standard. This scheme involves independent
                                                    verification of performance, quality and safety standards, and takes a minimum of
                                                    6 months to complete the necessary product testing. The Evoco 10kW has successfully
                                                    past all the testing requirements and all data provided about the turbines is MCS
                                                    certified.<br />
                                                    <br />
                                                    Since the introduction of the Clean Energy Cash-Back scheme (feed-in tariff) on
                                                    1st April 2010; anyone wishing to access to this program and the new tariffs it
                                                    is imperative the you install MCS approved product by MCS approved installers of
                                                    which we will have certification for both.<br />
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>3. HOW MUCH WILL I GET PAID FOR THE ELECTRICITY I GENERATE?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    Feed-in Tariffs Made Simple<br />
                                                    <br />
                                                    Earn: Income from the Feed-in Tariff for all the energy your turbine generates<br />
                                                    <br />
                                                    Use: All that it produces saving on your electricity bill<br />
                                                    Sell: Any excess energy back to the national grid<br />
                                                    <br />
                                                    The Feed-In Tariff will be introduced as of 1st April 2010 and for the 10kw will
                                                    pay 26.7p/kWh for total energy generated. This is going to make payback and returns
                                                    on small wind turbines better than ever before (by a long way)<br />
                                                    <br />
                                                    A review to the tariff effective from 1st April 2011 will see this tariff rise to
                                                    28p/kWh.<br />
                                                    <br />
                                                    Importantly, the feed in tariff is paid for all energy generated. Any energy sold
                                                    back to the grid will be paid an extra 3p-5p/kWh (prices t.b.c by utility companies)<br />
                                                    <br />
                                                    As energy is generated and used within the property; at this point you will save
                                                    your usually incoming energy price from your supply company (typically 11p)<br />
                                                    <br />
                                                    For up to date information please contact us.<br />
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><a href="javascript:void(0);" onclick="show_this('4');">
                                        <!--<div class="mgmt-img">
						<img src="http://www.evocoenergy.co.uk/public_html/images/mgmt-img1.gif" />
					</div>-->
                                        <div class="mgmt-name">
                                            Costs & Paybacks</div>
                                        <div class="view">
                                            <a href="javascript:void(0);" onclick="show_this('4');" id="view4">View</a>
                                        </div>
                                        <div class="clear">
                                        </div>
                                    </a>
                                        <div class="descarea01" id="desc4" style="display: none;">
                                            <div class="faq_question">
                                                <span>1. HOW MUCH DOES AN EVOCO TURBINE COST?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    The installed cost of your turbine project depends on many factors specific to your
                                                    site, including access, distance between your turbine and the mains connection,
                                                    your geographical location, etc.<br />
                                                    <br />
                                                    The Evoco 10 typically offers a better return on investment than its major MCS-accredited
                                                    competitors.<br />
                                                    <br />
                                                    For latest information and an indicative price for your specific circumstances,
                                                    please contact us on 01484 475 800.
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>2. VAT - WHAT RATE APPLIES TO ME?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    UK Rates:<br />
                                                    <br />
                                                    Standard rate â€“ 20% Applicable to UK businesses and EU businesses without EU VAT
                                                    number.<br />
                                                    <br />
                                                    Reduced rate - 5% UK domestic householders<br />
                                                    <br />
                                                    Zero rate - 0% UK new builds and EU businesses with a VAT number and other export
                                                    sales.<br />
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>3. HOW MUCH ELECTRICITY WILL AN EVOCO TURBINE GENERATE?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    The amount of energy generated depends on the wind regime on your specific site,
                                                    including the annual mean wind speed, the distribution of speeds around that mean
                                                    and the absence or existence of obstacles which may reduce the wind reaching the
                                                    turbine, or cause turbulence preventing efficient generation.<br />
                                                    <br />
                                                    The table below gives an estimation of earning and savings combined:<br />
                                                    <br />
                                                    Annual mean site wind speed: 5m/s: 21,706kWh/yr = Â£7000.00 p.a.<br />
                                                    Annual mean site wind speed: 6m/s: 31,176kWh/yr = Â£10,000.00 p.a.<br />
                                                    Annual mean site wind speed: 7m/s: 39,649kWh/yr = Â£13,000.00 p.a.<br />
                                                    <br />
                                                    Inputting your details into our Payback Predictor will give more detail about what
                                                    you can expect.<br />
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>4. HOW LONG WILL THE TURBINE TAKE TO PAYBACK?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    This depends on many factors, including price, grants for which you are eligible,
                                                    your wind speed, your energy supply tariff, how much energy you use etc. The best
                                                    way to answer this question is to fill input your details to our wind checker utility.
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>5. AM I ELIGIBLE FOR A GRANT?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    The introduction of the Clean-Energy Cashback (feed-in tariff) on 1st April 2010
                                                    has in effect become the grant/support method for assisting in the purchase of small
                                                    renewables.<br />
                                                    <br />
                                                    As things change so quickly please discuss as the time of enquiry as there may be
                                                    a further incentive in your local area.<br />
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>6. HOW DO I GET A QUOTE FROM EVOCO?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    The quickest way is to fill in the Payback Predictor form. Evoco will assign your
                                                    enquiry to the nearest authorised specialist who will contact you shortly to provide
                                                    a detailed quotation.<br />
                                                    <br />
                                                    You can also get in touch with us for specific queries by clicking 'Contact Us'
                                                    on the website or details below:<br />
                                                    <br />
                                                    Evoco Energy Ltd<br />
                                                    St Pegs Mill<br />
                                                    Thornhillbeck Lane<br />
                                                    Brighouse<br />
                                                    West Yorkshire<br />
                                                    HD6 4AH<br />
                                                    <br />
                                                    t: +44 1484 475 800<br />
                                                    f: +44 1484 475 802<br />
                                                    <br />
                                                    info@evocoenergy.com<br />
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><a href="javascript:void(0);" onclick="show_this('5');">
                                        <!--<div class="mgmt-img">
						<img src="http://www.evocoenergy.co.uk/public_html/images/mgmt-img1.gif" />
					</div>-->
                                        <div class="mgmt-name">
                                            My Site</div>
                                        <div class="view">
                                            <a href="javascript:void(0);" onclick="show_this('5');" id="view5">View</a>
                                        </div>
                                        <div class="clear">
                                        </div>
                                    </a>
                                        <div class="descarea01" id="desc5" style="display: none;">
                                            <div class="faq_question">
                                                <span>1. WHAT DISTANCE DOES THE TURBINE NEED TO BE / CAN THE TURBINE BE FROM MY HOUSE?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    We recommend a minimum distance of at least 100 meters from any building as the
                                                    further the turbine is from obstructions, the smoother the air flow and the better
                                                    the generation. Evoco turbines have high voltage generators. This allows fairly
                                                    long cable runs, provided the inverters are sited close to the property. It's possible
                                                    to site your turbine up to 500m from your property.
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>2. IS MY SITE SUITABLE FOR A TURBINE?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    For a site to be suitable for a small scale wind turbine you will require at least
                                                    half an acre of open unobstructed land with a good wind resource. Please check the
                                                    Payback Predictor and consider booking a site assessment if you think your site
                                                    may be suitable.
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>3. CAN I MOUNT A EVOCO TURBINE ON MY ROOF?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    No. The 10kw turbine is designed for ground mounted installations. Primarily this
                                                    is to ensure clean, up obstructed wind never found on roof tops.
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>4. DO I HAVE ENOUGH WIND?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    As a first step, input your details into our Payback Predictor to get an indication
                                                    on your site's windspeed, unit cost, annual generation and estimated payback.<br />
                                                    If you are still not sure whether your site is suitable, please consider booking
                                                    a full site assessment.
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>5. HOW MUCH ELECTRICITY WOULD AN EVOCO TURBINE GENERATE ON MY SITE?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    Input your details into our Payback Predictor to get an indication on your site's
                                                    windspeed, unit cost, annual generation and estimated payback.
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><a href="javascript:void(0);" onclick="show_this('6');">
                                        <!--<div class="mgmt-img">
						<img src="http://www.evocoenergy.co.uk/public_html/images/mgmt-img1.gif" />
					</div>-->
                                        <div class="mgmt-name">
                                            Installation</div>
                                        <div class="view">
                                            <a href="javascript:void(0);" onclick="show_this('6');" id="view6">View</a>
                                        </div>
                                        <div class="clear">
                                        </div>
                                    </a>
                                        <div class="descarea01" id="desc6" style="display: none;">
                                            <div class="faq_question">
                                                <span>1. CAN I INSTALL MY OWN FOUNDATIONS?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    We don't recommend this however if you feel you have the skill to do this with sufficient
                                                    precision we will be happy to provide specifications and instructions. However,
                                                    our warranty excludes installation and problems caused by poor installation. The
                                                    rest of the installation must be performed by a qualified installer. You will need
                                                    the agreement of that installer to take responsibility for your foundations to validate
                                                    any warranty the installer may provide on the installation quality.
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>2. CAN I INSTALL THE EVOCO TURBINE MYSELF?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    We can supply all the equipment to carry out the full installation, including hydraulic
                                                    lifting equipment. This would however void the warranty and make you ineligible
                                                    for grant assistance and other incentives as the product must be installed by an
                                                    MCS approved installer.
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>3. HOW LONG WILL INSTALLATION TAKE?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    The installation is carried out in two stages, each lasting a couple of days.<br />
                                                    <br />
                                                    Stage 1 â€“ Foundation preparation and installation<br />
                                                    <br />
                                                    Stage 2 â€“ Turbine and electrical installation â€“ Commissioning<br />
                                                    <br />
                                                    A period of approx 14 days must be allowed in-between for the foundation to cure.<br />
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><a href="javascript:void(0);" onclick="show_this('7');">
                                        <!--<div class="mgmt-img">
						<img src="http://www.evocoenergy.co.uk/public_html/images/mgmt-img1.gif" />
					</div>-->
                                        <div class="mgmt-name">
                                            Planning</div>
                                        <div class="view">
                                            <a href="javascript:void(0);" onclick="show_this('7');" id="view7">View</a>
                                        </div>
                                        <div class="clear">
                                        </div>
                                    </a>
                                        <div class="descarea01" id="desc7" style="display: none;">
                                            <div class="faq_question">
                                                <span>1. DO I NEED PLANNING?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    Currently all wind turbines in the UK require full planning permission; however
                                                    under new guidelines planners are obligated to encourage renewable applications
                                                    where appropriate. Most planning departments are very supportive. It's important
                                                    to differentiate between the size of Evoco turbines (small scale) and large turbines
                                                    typically found of tops of moors etc (large scale)
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>2. HOW DO I GET PLANNING?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    Evoco or your Evoco reseller will assist you all the way through the planning process
                                                    which should be decided within approximately 8 weeks once the application has been
                                                    submitted, fees vary dependent upon council.
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>3. PLANNING COSTS</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    Evoco offers a turnkey site survey, feasibility and planning management service
                                                    for Â£1,350 + VAT.<br />
                                                    <br />
                                                    Local authority planning departments charge an additional application fee which
                                                    is usually in the range Â£300 to Â£450. In some cases special reports may be required
                                                    by the planning authority to determine compliance with regulations on issues such
                                                    as noise, ecological impact, visual impact and historical monuments. To learn more
                                                    about your likely experience with obtaining planning for an Evoco 10, please contact
                                                    us on 01484 475 800.<br />
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>4. WHAT HAPPENES IF PLANNING IS REJECTED?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    If a planning application was to be rejected by a local planning office your appointed
                                                    reseller would discuss and review the application and look at appealing the decision
                                                    if it is felt the decision was un-due.
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li><a href="javascript:void(0);" onclick="show_this('8');">
                                        <!--<div class="mgmt-img">
						<img src="http://www.evocoenergy.co.uk/public_html/images/mgmt-img1.gif" />
					</div>-->
                                        <div class="mgmt-name">
                                            Maintenance And Servicing</div>
                                        <div class="view">
                                            <a href="javascript:void(0);" onclick="show_this('8');" id="view8">View</a>
                                        </div>
                                        <div class="clear">
                                        </div>
                                    </a>
                                        <div class="descarea01" id="desc8" style="display: none;">
                                            <div class="faq_question">
                                                <span>1. TURBINE DESIGN LIFE?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    20 years
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>2. WHAT IS THE WARRANTY OFFERED?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    All Evoco units are offered with a 5 year limited warranty. Details are provided
                                                    with quotation.
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>3. HOW OFTEN WILL THE TURBINE NEED SERVICING?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    The Evoco 10kW turbine requires an annual service by an accredited installer, this
                                                    must be carried out to keep the warranty valid.
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>4. CAN I SERVICE MY OWN EVOCO TURBINE?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    For basic checks and maintenance, yes we can provide details on how to do this.
                                                    However, during the warranty period it is recommended to have this done professionally
                                                    to keep your warranty valid.
                                                </p>
                                                <div style="border-top: 2px solid rgb(153, 153, 153); height: 0; margin: 17px 0;
                                                    color: #FFFFFF; padding: 0;">
                                                    .</div>
                                            </div>
                                            <div class="faq_question">
                                                <span>5. WILL EVOCO PROVIDE ME WITH A SERVICE AND MAINTENANCE PLAN?</span>
                                            </div>
                                            <div class="faq_answer">
                                                <p>
                                                    Evoco will provide you with a quote and plan for servicing your Evoco turbine, we
                                                    can also provide an in-depth plan for those wishing to carry out the servicing individually.
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="clear">
                        </div>
                    </div>
                </div>
                <div class="footer">
                    <p>
                        <a href="https://plus.google.com/" target="_blank">
                            <img onmouseout="this.src='http://www.evocoenergy.co.uk/public_html/images/gmail.png'"
                                onmouseover="this.src='http://www.evocoenergy.co.uk/public_html/images/gmail-hover.png'"
                                src="http://www.evocoenergy.co.uk/public_html/images/gmail.png" alt="" /></a><a href="https://twitter.com/evocoenergy"
                                    target="_blank"><img onmouseout="this.src='http://www.evocoenergy.co.uk/public_html/images/fot-twi.png'"
                                        onmouseover="this.src='http://www.evocoenergy.co.uk/public_html/images/fot-twi-hover.png'"
                                        src="http://www.evocoenergy.co.uk/public_html/images/fot-twi.png" alt="" /></a></p>
                    <div class="footer-link">
                        <span><a href="http://www.evocoenergy.co.uk/">Home</a> | <a href="http://www.evocoenergy.co.uk/aboutus.php">
                            About evoco</a> | <a href="http://www.evocoenergy.co.uk/Evocoturbine.php">Our 10kw turbine</a>
                            | <a href="http://www.evocoenergy.co.uk/evocoblog">Latest News </a>|
                            <!--<a href="http://www.evocoenergy.co.uk/">Case studies</a>  | 
             <a href="http://www.evocoenergy.co.uk/">Owners' area</a>  | -->
                            <a href="http://www.evocoenergy.co.uk/contactus.php">Contact us</a> </span>
                        <br />
                        <!--Copyright 2013 - <a href="#" class="active">Evoco.com</a>. All rights are reserved.--->
                        Designed &amp; Powered by <a href="http://MyWebDesigner.com" target="blank">MyWebDesigner.com</a>
                        | Copyright 2013 - <a href="#">PRIVACY POLICY</a> | <a href="#">TERMS OF USE</a></div>
                </div>
                <div style="clear: both;">
                </div>
            </div>
        </div>
    </div>
</body>
</html>
