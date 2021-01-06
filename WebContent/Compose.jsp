<%@page import="user.User"%>
<%String userName = (String)request.getParameter("userName"); 
User u = (User)session.getAttribute("user");%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <script src="/Script/jsapi.js"></script>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/app.min.js"></script>
    <script src="assets/js/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="assets/js/layout.js"></script>
    <script src="assets/js/.validate.min.js"></script>
    <script src="assets/js/unobtrusive.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/angular.js"></script>
    <script src="assets/js/app.js"></script>
    <script src="assets/js/bsAlerts.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
	
    <link href="assets/css/simple-line-icons.min.css" rel="stylesheet" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/bootstrap-switch.min.css" rel="stylesheet" />
    <link href="assets/css/daterangepicker.min.css" rel="stylesheet" />
    <link href="assets/css/morris.css" rel="stylesheet" />
    <link href="assets/css/fullcalendar.min.css" rel="stylesheet" />
    <link href="assets/css/jqvmap.css" rel="stylesheet" />
    <link href="assets/css/components.min.css" rel="stylesheet" />
    <link href="assets/css/plugins.min.css" rel="stylesheet" />
    <link href="assets/css/layout.min.css" rel="stylesheet" />
    <link href="assets/css/default.min.css" rel="stylesheet" />
    <link href="assets/css/custom.min.css" rel="stylesheet" />
    <link href="assets/css/light.min.css" rel="stylesheet" />
    <link href="assets/css/CustomTheme.css" rel="stylesheet" />
    
    <style>
    .bootstrap-timepicker-widget table td input {
        width: 40px;
    }
</style>
<script>
    google.load("elements", "1", { packages: "transliteration" });
    //var transliterationControl;

    function changeLanguage() {
        var options = {
            sourceLanguage: 'en',
            destinationLanguage: ['hi', 'bn', 'gu', 'kn', 'ml', 'mr', 'ne', 'or', 'pa',
                'sa', 'si', 'ta', 'te', 'ur','am', 'el', 'fa', 'ru', 'sr', 'zh', 'ar','ti'],
            transliterationEnabled: false,
            shortcutKey: 'ctrl+g'
        };
        // Create an instance on TransliterationControl with the required options.
        transliterationControl = new google.elements.transliteration.TransliterationControl(options);

        // Enable transliteration in the textfields with the given ids.
        transliterationControl.makeTransliteratable(['Message']);
    }

    // Handler for dropdown option change event. Calls setLanguagePair to set the new language.
    function languageChangeHandler() {
        var dropdown = document.getElementById('uniCodeLanguage');
        if (dropdown.value != 'en') {
            if (!transliterationControl.isTransliterationEnabled()) {
                transliterationControl.enableTransliteration();
            }
            transliterationControl.setLanguagePair(google.elements.transliteration.LanguageCode.ENGLISH, dropdown.value);
        } else if (transliterationControl.isTransliterationEnabled()) {
            transliterationControl.disableTransliteration();
        }
    }
    google.setOnLoadCallback(changeLanguage);
</script>


    <script>
        $(function () {
            var timezoneval = $("#TimeZone").val();
            var actualDateTime = null;
             try {
                actualDateTime = new Date().toLocaleString("en-US", { timeZone: timezoneval });
                actualDateTime = new Date(actualDateTime);
            }
            catch (err) {
               actualDateTime = new Date('1/8/20 8:57:33 AM');
            }

        var hours = actualDateTime.getHours();
        var minutes = actualDateTime.getMinutes();

            $("#ScheduleDate").datepicker({
            autoclose: true,
            todayHighlight: true,
            //startDate: '1/8/20 8:57:33 AM',
            startDate: actualDateTime
        }).datepicker('update', new Date());
        $('#ScheduleTime').timepicker({
            showMeridian: false,
            defaultTime: hours + ":" + minutes,
            icons: {
                up: 'fa fa-chevron-up',
                down: 'fa fa-chevron-down'
            }
        });
    });

    $("#lblRemainingSpace").on("input", function () {
        debugger;
        if (document.getElementById("lblRemainingSpace").textContent == "0") {
            alert("adasdasdasdasd");
        }

    })
    $('#lblRemainingSpace').change({



    });

</script>
    
</head>
<body  class="page-container-bg-solid page-header-fixed page-sidebar-closed-hide-logo" ng-app="app">
 <div class="page-header navbar navbar-fixed-top">

		<style>
/*#imgCompanyLogo {
        height: 125% !important;
        margin-top: -2% !important;
    }*/
.defaultAlert {
	float: left;
	/* margin-left: 10px; */
	white-space: normal;
}

.DefaultLogo {
	width: 75%;
}

.page-header.navbar .top-menu .navbar-nav>li.dropdown-notification .dropdown-menu .dropdown-menu-list>li a .details .label-icon i
	{
	margin-right: 4px;
}
</style>

		<script type="text/javascript">

    $(document).ready(function () {
        debugger;
        var img = $("#ImageSpan  > img");
        if ($("#ImageSpan > img").length > 0) {
            if (img[0].alt != "") {
                $("#ImageTextSpan").html(img[0].alt);
                $("#ImageSpan").hide();
                $("#ImageTextSpan").css('display', 'block');
                $("#divMenuToggle").hide();
            }
            else {
                $("#ImageSpan").show();
                $("#ImageTextSpan").hide();
                $("#divMenuToggle").hide();
            }
        } else {
            if (img[0] != "" && img[0] != undefined) {
                $("#ImageTextSpan").html(img[0].alt);
                $("#ImageSpan").hide();
                $("#ImageTextSpan").css('display', 'block')
            } else {
                $("#ImageSpan").hide();
                $("#ImageTextSpan").hide();
                $("#divMenuToggle").show();
            }
        }

        $('#header_inbox_bar').on('click', function () {
            
        });
    });


    function HideColumns() {
        var IsSeenByUser = getCookie("Notificationseen");
        if (IsSeenByUser == "false") {
            setCookie("Notificationseen", "true");
            $('#spnAlretCounts').text("0");
            // ViewData["AlertsCount"] = 0;
        }
        else {
            $('#spnAlretCounts').text("0");
        }
    }

    function getCookie(cname) {
        var name = cname + "=";
        var ca = document.cookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') {
                c = c.substring(1);
            }
            if (c.indexOf(name) == 0) {
                return c.substring(name.length, c.length);
            }
        }
        return "";
    }

    function setCookie(cname, cvalue) {
        var d = new Date();
        //d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
        //var expires = "expires=" + d.toUTCString();
        document.cookie = cname + "=" + cvalue + ";path=/";
    }
</script>

		<div class="page-header-inner ">
			<div class="page-logo" style="width: 35% !important">
				<span class="float-left" href="#"> <span id="ImageTextSpan"
					style="color: rgb(214, 214, 214); margin-top: 8px; font-size: 27px; min-width: 185px; display: block;">SMS24HOURS</span>
					<span class="logo-default text-success"
					style="color: rgb(214, 214, 214); display: none;" id="ImageSpan">
						<img alt="SMS24HOURS"
						style="vertical-align: middle; height: 55px; margin-top: 3px; font-size: 30px;">
				</span>
				</span>
				<div class="menu-toggler sidebar-toggler pull-left"
					id="divMenuToggle"
					style="z-index: 10000 !important; display: none;"></div>
			</div>
			<a href="#" class="menu-toggler responsive-toggler"
				data-toggle="collapse" data-target=".page-sidebar"> </a>
			<div class="page-top">
				<div class="top-menu">
					<ul class="nav navbar-nav pull-right">
						<li class="separator hide"></li>
						
						<li class="separator hide"></li>
						<!-- END INBOX DROPDOWN -->
						<li class="separator hide"></li>
						
						<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
						<li class="dropdown dropdown-user" style="padding: 0;"><a
							href="javascript:void(0);" class="dropdown-toggle"
							data-toggle="dropdown" data-hover="dropdown"
							data-close-others="true"> <span
								class="username username-hide-on-mobile"> <i
									class="fa fa-user"></i> <span class="hidden-xs"><i
										class="fa fa-angle-down"></i></span>
							</span>
						</a>
							<ul class="dropdown-menu dropdown-menu-default">
								<li><a href="#"> Welcome,
										ravinder <br> <span
										style="font-size: 11px; padding-left: 24px;"> {
											1234567890 }</span> <br> <span
										style="font-size: 11px; padding-left: 24px;">Last Login
											IP: 122.180.29.172</span> <br> <span
										style="font-size: 11px; padding-left: 24px;">Last Login
											Date: 01/08/2020 11:43:14</span>

								</a></li>
								<li class="divider"></li>
								<li><a href=""> 
										My Profile
								</a></li>
								<li class="divider"></li>
								<li><a href="">  Change Password
								</a></li>
								<li class="divider"></li>
								<li><a href="index.jsp">
										Log Out
								</a></li>
							</ul></li>


					</ul>
				</div>
				<!-- END TOP NAVIGATION MENU -->
			</div>
			<!-- END PAGE TOP -->
		</div>

	</div>
    <div class="clearfix"> </div>

    
<style>
    .TopMenu > li {
        margin-left: 9px;
        border: 1px solid #a79d9d;
        padding: 10px;
        text-decoration: none;
    }
    i.fa.fa-line-chart {
        color: white;
        margin: 0 auto 6px;
        height: 36px;
        width: 37px !important;
        font-size: 20px;
        padding: 8px 7px;
        display: block !important;
        -moz-border-radius: 100px;
        -webkit-border-radius: 100px;
        /* border-radius: 100px; */
        border-radius: 20px;
        border: 1px solid #36c6d3;
        background: #36c6d3;
    }
</style>

<div class="Main_Menu">
    <div class="page-header-menu">
        <div class="container">
            <div class="hor-menu">
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav ">

                        <li class="active">
                            <a href="UserDashboard.jsp" data-toggle="pills" class="0">
                                <i class="fa fa-line-chart DisplayIcon"></i>
                                <span class="title">
                                    DASHBOARD
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#" data-toggle="pills" class="1">
                                <i class="fa fa-paper-plane" aria-hidden="true"></i><br>
                                <span class="title">
                                    SMS MT
                                </span>
                            </a>
                        </li>                        



                            <li>
                            <%if(u!=null){
                            	if(u.getUserType().equals("admin")){%>
                            		<a href="Administration.jsp" data-toggle="pills" class="5">
                            	<%}else{%>
                            		<a href="" data-toggle="pills" class="5">
                            	<%}%>
                            <%}%>
                                
                                    <i class="fa fa-user" aria-hidden="true"></i><br>
                                    <span class="title">
                                        ADMINISTRATION
                                    </span>
                                </a>
                            </li>
                            <li>
                <a href="#" data-toggle="pills" class="6">
                    <i class="fa fa-unlock-alt" aria-hidden="true"></i><br>
                    <span class="title">
                        PERMISSION
                    </span>
                </a>
            </li>
                        <li>
                            <a href="#" data-toggle="pills" class="3">
                                <i class="fa fa-share-square-o" aria-hidden="true"></i><br>
                                <span class="title">
                                    DEVELOPER API
                                </span>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>

            <div class="visible-xs Mhor-menu" style="overflow: auto;">
                <ul class="TopMenu" style="display: inline-flex;list-style: none;text-align: center;padding-left: 0;margin-top: 10px;font-size: 10px;">
                    <li class="active" style="border: 1px solid rgb(30, 136, 229);">
                        <a href="#" data-toggle="pills" class="0">
                            <i class="icon-bar-chart DisplayIcon"></i>
                            <span class="title">
                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_self" data-toggle="pills" class="1">
                            <i class="icon-envelope-open DisplayIcon"></i>
                            <span class="title">
                            </span>
                        </a>
                    </li>

                        <li>
                            <a href="#" data-toggle="pills" class="5">
                                <i class="icon-user DisplayIcon"></i>
                                <span class="title">
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#" data-toggle="pills" class="6" style="display:none">
                                <i class="icon-lock DisplayIcon"></i>
                                <span class="title">
                                </span>
                            </a>
                        </li>
                    <li>
                        <a href="#" data-toggle="pills" class="3">
                            <i class="icon-docs DisplayIcon"></i>
                            <span class="title">
                            </span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>


<style>
    .navbar-default .navbar-nav > .active > a, .navbar-default .navbar-nav > .active > a:hover,
    .navbar-default .navbar-nav > .active > a:focus {
        color: #555;
        background-color: #f9f9f9;
    }
</style>


    <div class="page-container">
        <!-- END SIDEBAR -->
        <!-- BEGIN CONTENT -->
        

<div class="page-sidebar-wrapper">
    <div class="page-sidebar navbar-collapse collapse">       
            <ul id="1" class="page-sidebar-menu" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                <li class="nav-item">
                    <a href="javascript:;" class="nav-link nav-toggle">
                        <i class="fa fa-send-o fa-lg"></i>
                        <span class="title">SMS</span>                       
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item">
                            <a href="#" target="_self" class="1">
                                <i class="fa fa-envelope"></i>
                                <span class="title">Compose SMS</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" target="_self" class="1">
                                <i class="fa fa-file-excel-o"></i>
                                <span class="title">SMS From Excel</span>
                            </a>
                        </li>
                        <li class="nav-item start-li" style="display:none">
                            <a href="#" class="1">
                                <i class="fa fa-file-excel-o"></i>
                                <span class="title">SMS From Excel</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="1">
                                <i class="fa fa-newspaper-o"></i>
                                <span class="title">Manage Sender ID</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="1">
                                <i class="fa fa-file"></i>
                                <span class="title">Manage Template</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item ">
                    <a href="" class="nav-link nav-toggle">
                        <i class="fa fa-group fa-lg"></i>
                        <span class="title">Contacts</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li id="liManageGrp" class="nav-item">
                            <a href="#" class="1">
                                <i class="fa fa-group"></i>
                                <span class="title">Manage Groups</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="1">
                                <i class="fa fa-download"></i>
                                <span class="title">Import Contacts</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="1">
                                <i class="fa fa-upload"></i>
                                <span class="title">Export Contacts</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item  ">
                    <a href="" class="nav-link nav-toggle">
                        <i class="fa fa-file-text-o fa-lg"></i>
                        <span class="title">Reports</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item">
                            <a href="#" class="1">
                                <i class="fa fa-newspaper-o"></i>
                                <span class="title">Campaign Report</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="1">
                                <i class="fa fa-hourglass-half"></i>
                                <span class="title">My Schedule</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="1">
                                <i class="fa fa-calculator"></i>
                                <span class="title">Message Count</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="1">
                                <i class="fa fa-file-excel-o"></i>
                                <span class="title">Download Report</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item  ">
                    <a href="" class="nav-link nav-toggle">
                        <i class="fa fa-shopping-cart"></i>
                        <span class="title">Application Bar</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item">
                            <a href="#" class="1">
                                <i class=" fa fa-money"></i>
                                <span class="title">My Rate Plan</span>
                            </a>
                        </li>                        
                        <li class="nav-item">
                            <a href="#" class="1">
                                <i class=" fa fa-exchange"></i>
                                <span class="title">My Transaction</span>
                            </a>
                        </li>
                    </ul>                    
                </li>
                <li class="nav-item  ">
                    <a href="" class="nav-link nav-toggle">
                        <i class="fa fa-cogs fa-lg"></i>
                        <span class="title">Settings</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item">
                            <a href="#" class="1">
                                <i class="fa fa-user"></i>
                                <span class="title"> My Profile</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="1">
                                <i class="fa fa-cog"></i>      
                                <span class="title">Change Password</span>
                            </a>
                        </li>
                    </ul>
                </li>
            
            </ul>
            <ul id="3" style="display:none" class="page-sidebar-menu" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                <li class="nav-item start ">

                    <a href="" class="nav-link nav-toggle">
                        <i class="fa fa-file-text-o fa-lg"></i>
                        <span class="title">API Documents</span>
                        <span class="selected"></span>
                        <span class="arrow down open"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item">
                            <a href="" class="3">
                                <i class="fa fa-file-text"></i>
                                <span class="title">API Document</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>

            <!-- END SIDEBAR MENU -->
</div>

    <!-- END SIDEBAR -->
</div>



        <div class="page-content-wrapper">
            <div class="page-content">
                <div class="page-head">
                    <div class="page-title">

                        <h1>
                            Compose SMS
                        </h1>

                    </div>
                </div>
                

<style>
    .hide {
        display: none;
        visibility: hidden;
    }

    .unhide {
        display: block;
        visibility: visible
    }

    .bootstrap-select > .dropdown-toggle.bs-placeholder, .bootstrap-select > .dropdown-toggle.bs-placeholder:hover, .bootstrap-select > .dropdown-toggle.bs-placeholder:focus, .bootstrap-select > .dropdown-toggle.bs-placeholder:active {
        color: #fff !important;
    }

    [ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x- ng-cloak {
        display: none !important;
    }

    .tabs-reversed > li {
        float: left !important;
    }

    .btn-icon-only {
        height: 30px !important;
    }

    .btncolor {
        border-color: #3598dc !important;
        color: #3598dc !important;
        background: 0 0 !important;
        outline: 0 !important;
    }

    .bootstrap-select > .dropdown-toggle.bs-placeholder, .bootstrap-select > .dropdown-toggle.bs-placeholder:hover, .bootstrap-select > .dropdown-toggle.bs-placeholder:focus, .bootstrap-select > .dropdown-toggle.bs-placeholder:active {
        color: #3598dc !important;
    }

    .TableColor {
        background-color: #fbe1e3;
    }

    .label {
        font-size: 11px;
    }
    /*.btn.btn-outline.green {
        color: #32c5d2 !important;
    }
    .btn.btn-outline.green:hover {
        background-color: white !important;
    }*/
    /*.nav-tabs > li.active > a, .nav-tabs > li.active > a:focus, .nav-tabs > li.active > a:hover {
        border: 2px solid #1e88e5 !important;
        border-bottom-color: none transparent !important;
    }
    .nav-tabs {
        border-bottom: 2px solid #1e88e5 !important;
    }*/
</style>

<div class="padding-md" ng-controller="composesmsCtrl" ng-init="init({&quot;_message&quot;:&quot;&quot;,&quot;_messageText&quot;:&quot;&quot;,&quot;ScheduleTime&quot;:&quot;0001-01-01T00:00:00&quot;,&quot;ContactNumber&quot;:null,&quot;UniqueMobileMessageList&quot;:false,&quot;SiteUserId&quot;:0,&quot;Channel&quot;:0,&quot;InterfaceType&quot;:0,&quot;MobileNumbers&quot;:null,&quot;NoString&quot;:null,&quot;TimeZone&quot;:&quot;Asia/Kolkata&quot;,&quot;IsTransactionalUser&quot;:false,&quot;IsPromotionalUser&quot;:false,&quot;IsOptinUser&quot;:false,&quot;CampaignName&quot;:&quot;Camp_08-Jan-2020 14:27&quot;,&quot;Message&quot;:&quot;&quot;,&quot;MessageText&quot;:&quot;&quot;,&quot;MessageString&quot;:null,&quot;UploadedFileNumber&quot;:null,&quot;ScheduleDate&quot;:&quot;0001-01-01T00:00:00&quot;,&quot;Schedule&quot;:false,&quot;SenderId&quot;:null,&quot;GroupIds&quot;:null,&quot;RemoveDuplicateNumbers&quot;:false,&quot;MessageFormat&quot;:0,&quot;UnicodeMessage&quot;:false,&quot;DataCoding&quot;:0,&quot;Flash&quot;:false,&quot;MessageList&quot;:null,&quot;MessageandNumber&quot;:null,&quot;IsSelected&quot;:false,&quot;IdList&quot;:null,&quot;HeaderMobileNumber&quot;:null,&quot;HeaderSMSText&quot;:null,&quot;ProductId&quot;:0,&quot;IsDNCheck&quot;:false,&quot;IsPreview&quot;:false,&quot;IsAddCountryCode&quot;:false,&quot;MessageValue&quot;:null})" style="padding-top:0 !important;">
    <div class="row">
        <div class="col-md-12">
            <div data-alerts="alerts" class="AlertCss"></div>
            <div class="row">
                <div class="col-md-7">
                    <div class="portlet light bordered">

                        <div class="panel-body">
                            <div class="tab-content">
                                <div class="tab-pane fade in active">
                                    <form action="UserController" method="POST" name="uForm">
                                    	<input type="hidden" name="userAction" value="13">
                                    	<input type="hidden" name="userName" value="<%=userName%>">
                                    	
                                        <div class="form-group">
                                            <label for="Campaign Name">Campaign Name</label>
                                            <input class="form-control input-sm" data-val="true" data-val-length="The field CampaignName must be a string with a maximum length of 50." data-val-length-max="50" data-val-required="Campaign name is required" id="CampaignName" maxlength="50" name="CampaignName" ng-model="ComposeSMS.CampaignName" type="text" value="Camp_05-Jan-2021" />
                                            <span class="field-validation-valid text-danger" data-valmsg-for="CampaignName" data-valmsg-replace="true"></span>
                                        </div>

                                            <div class="form-group ng-cloak" id="divProduct" style="display:none;">
                                                <label for="Campaign Name">Plan</label>
                                                <div>
                                                    <select id="ProductId" name="ProductId" class="bs-select form-control" data-show-subtext="true" data-live-search="true" ng-model="ComposeSMS.ProductModel" ng-options="Products as Products.ProductName for Products in ListAllProductInUser" ng-change="TabProductSelectionClick()">

                                                        <option value="">Select Plan</option>
                                                    </select>
                                                </div>
                                                <span class="field-validation-valid text-danger" data-valmsg-for="ProductId" data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="form-group ng-cloak">
                                                <label for="Campaign Name" ng-hide="hidelblSenderId">SenderId</label>
                                                <div>
                                                    <input class="form-control input-sm" data-val="true" data-val-length="The field SenderId must be a string with a maximum length of 20." data-val-length-max="20" data-val-required="Sender Id required" id="SenderId" maxlength="20" name="SenderId" ng-disabled="DisabledControll" ng-hide="HidetxtSenderId" ng-model="ComposeSMS.SenderId" type="text" value="" />
                                                  <!--   <select class="form-control input-sm" ng-model="ComposeSMS.SenderId" ng-disabled="DisabledControll" ng-options="sender.SenderId as sender.SenderId for sender in ListProductSenderId" ng-hide="HideddlSenderId">
                                                        <option ng-show="ListProductSenderId.length == 0" value="">Select SenderId</option>
                                                    </select> -->
                                                </div>

                                                <span class="field-validation-valid text-danger" data-valmsg-for="SenderId" data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="form-group">
                                                <label for="Campaign Name">Contacts</label>
                                               <!--  <div class="col-md-12 ng-cloak" id="ulSelectedGroupInfo" ng-hide="HideUlSelectedGroupInfo" style="padding: 0; margin: 5px 0;">
                                                    <h5>Group(s) :</h5>
                                                    <div class="tag-wrapper">
                                                        <a class="blog-tag" href="#" ng-repeat="item in SelectedGridGroup">
                                                            {{item.GroupName}}
                                                            <span ng-click="RemoveSelectedGroup(item)">
                                                                <i class="fa fa-times" title='Click to remove this item'></i>
                                                            </span>
                                                        </a>
                                                    </div>
                                                </div> -->
                                               <!--  <div class="col-md-12 ng-cloak" id="ulSelectedFileInfo" ng-hide="HideUlSelectedFileInfo" style="padding: 0; margin: 10px 0;">
                                                    <h5>File :</h5>
                                                    <div class="tag-wrapper">
                                                        <a class="blog-tag" href="#">
                                                            {{SelectedFileName}}   <span ng-click="RemoveSelectedFile()">
                                                                <i class="fa fa-times" title='Click to remove this item'></i>
                                                            </span>
                                                        </a>
                                                    </div>
                                                </div> -->

                                                <textarea class="form-control" columns="10" id="ContactNumber" name="ContactNumber" ng-blur="Managenumbers()" ng-click="ShowHideFileOrGroupsAndMessage(&#x27;group&#x27;)" ng-disabled="DisabledControll" ng-model="ComposeSMS.ContactNumber" ng-paste="handlePaste($event.originalEvent.clipboardData.getData(&#x27;text/plain&#x27;))" rows="3">
</textarea>

                                                <!-- <span class="field-validation-valid text-danger" data-valmsg-for="ContactNumber" data-valmsg-replace="true"></span>
                                                <div class="text-right hidden-xs" style="padding: 5px 0;">
                                                    <div>
                                                        <a data-toggle="modal" ng-click="ShowHideFileOrGroupsAndMessage('group')" href="#GroupContactModal" class="btn btn-circle btn-icon-only btn-default visible-xs">
                                                            <i class="icon-cloud-upload"></i>
                                                        </a>


                                                        <div class="form-group" style="padding: 2px; background: white;">

                                                            <label class="mt-checkbox mt-checkbox-outline pull-left" style="float:left">
                                                                <input type="checkbox" ng-model="ComposeSMS.IsAddCountryCode">Auto Add Country Code(91)
                                                                <span></span>
                                                            </label>

                                                            Import contacts :
                                                            <a href="" ng-click="ShowHideFileOrGroupsAndMessage('group')" style="cursor: pointer; color: #3c8dbc"><b>Groups</b></a> <span class="reddivider">| </span>
                                                            <a href="" ng-click="ShowHideFileOrGroupsAndMessage('file')" style="cursor: pointer; color: #3c8dbc"><b>File</b>(Excel, CSV, Text)</a>
                                                        </div>

                                                    </div>
                                                </div>

                                                <div class="visible-xs">

                                                    <div class="text-right">
                                                        <a data-toggle="modal" ng-click="ShowHideFileOrGroupsAndMessage('group')" href="#GroupContactModal" style="text-decoration: none;color: #333">
                                                            Import contacts :&nbsp;<div class="btn btn-circle btn-icon-only btn-default" style="margin-top: 5px;"><i class="icon-cloud-upload"></i></div>
                                                        </a>
                                                    </div>
                                                </div> -->
                                            </div>
                                           <!--  <div class="text-left visible-xs" style="padding: 5px; background: white;">
                                                <label class="mt-checkbox mt-checkbox-outline pull-left" style="float:left">
                                                    <input type="checkbox" ng-model="ComposeSMS.IsAddCountryCode">Auto Add Country Code(91)
                                                    <span></span>
                                                </label>
                                                <br />
                                            </div>
                                            <div class="form-group" style="padding: 5px; background: white;">
                                                <div style="display: inline-block;">
                                                    <label class="mt-checkbox mt-checkbox-outline" style="margin-bottom: 0;">
                                                        <input type="checkbox" id="RemoveDuplicateNumbers" ng-model="ComposeSMS.RemoveDuplicateNumbers" checked="checked" />
                                                        <span style="border: 1px solid #a29f9f;"></span>Remove duplicate
                                                    </label>
                                                </div>
                                            </div> -->
                                            <div class="form-group">
                                               <div class="form-inline">

                                                    <label for="Campaign Name">Enter Message</label>


                                                    <div class="row" style="margin: 0px -15px 10px -15px;">
                                                        <div class="col-md-4">
                                                            <a id="aChangeDrafts" class="btn btn-circle btn-icon-only btn-default btn-outline green" title="Select Drafts" data-toggle="modal" href="#DraftSelection" ng-hide="DisabledControll">
                                                                <i class="fa fa-file-o"></i>
                                                            </a>
                                                            <a id="aChangeTemplate" class="btn btn-circle btn-icon-only btn-default btn-outline green" title="Select Template" data-toggle="modal" href="#TemplateSelection" ng-hide="HideBtnTemplateSelection">
                                                                <i class="fa fa-clone"></i>
                                                            </a>
                                                        </div>


                         <!--                                <div class="col-md-8 text-right">
                                                            <label class="label-checkbox" style="width: 45%; display: inline-block">
                                                                <input type="checkbox" id="chkIsUnicodeMessage" ng-model="ComposeSMS.UnicodeMessage" ng-change="ShowHideUniCodeLanguage()">
                                                                <span class="custom-checkbox"></span>
                                                                <b>Unicode</b> <span style="font-size: 8px">(Language SMS)</span>
                                                            </label>
                                                            <select id="uniCodeLanguage" ng-hide="HideUniCodeLanguage" class="form-control input-sm" style="width: 40%; display: inline-block" onchange="javascript:languageChangeHandler();">

                                                                <option value="">
                                                                    SELECT LANG
                                                                </option>
                                                                <option value="hi">
                                                                    HINDI
                                                                </option>
                                                                <option value="bn">
                                                                    BENGALI
                                                                </option>
                                                                <option value="gu">
                                                                    GUJARATI
                                                                </option>
                                                                <option value="kn">
                                                                    KANNADA
                                                                </option>
                                                                <option value="ml">
                                                                    MALAYALAM
                                                                </option>
                                                                <option value="mr">
                                                                    MARATHI
                                                                </option>
                                                                <option value="ne">
                                                                    NEPALI
                                                                </option>
                                                                <option value="or">
                                                                    ORIYA
                                                                </option>
                                                                <option value="pa">
                                                                    PUNJABI
                                                                </option>
                                                                <option value="sa">
                                                                    SANSKRIT
                                                                </option>
                                                                <option value="si">
                                                                    SINHALESE
                                                                </option>
                                                                <option value="ta">
                                                                    TAMIL
                                                                </option>
                                                                <option value="te">
                                                                    TELUGU
                                                                </option>
                                                                <option value="ur">
                                                                    URDU
                                                                </option>                                                              
                                                                <option value="ar">ARABIC</option>
                                                                <option value="am">AMHARIC</option>
                                                                <option value="el">GREEK</option>
                                                                <option value="fa">PERSIAN</option>
                                                                <option value="ru">RUSSIAN</option>
                                                                <option value="sr">SERBIAN</option>
                                                                <option value="zh">CHINESE</option>
                                                                <option value="ar">HEBREW</option>
                                                                <option value="ti">TIGRINYA</option>
                                                            </select>
                                                        </div> -->
                                                    </div>
                                                </div> 
                                                <textarea class="form-control" columns="10" data-val="true" data-val-required="Message is required" id="Message" maxlength="{{MaxLength}}" name="Message" ng-change="ChangeMessage()" ng-click="ShowHideFileOrGroupsAndMessage(&#x27;message&#x27;)" ng-disabled="DisabledControll" ng-keyup="ChangeMessage()" ng-Model="ComposeSMS.Message" ng-trim="false" rows="5">
</textarea>
                                                <span class="field-validation-valid text-danger" data-valmsg-for="Message" data-valmsg-replace="true"></span>
                                               <!--  <div class="form-inline help-block" ng-cloak>
                                                    <div class="form-group">
                                                        <span id="lblcharacteruserd">Used : </span><strong><span id="lblTotalSpace">{{ComposeSMS.Message.length == null ? 0 : ComposeSMS.textLength  }}</span>&nbsp; </strong><span style="color: Red; font-weight: bold;">|</span>&nbsp;
                                                        <span id="lnlchatacteleft">Left : </span><strong><span id="lblRemainingSpace">{{TotalSpace - ComposeSMS.textLength}}</span>&nbsp; </strong><span style="color: Red; font-weight: bold;">|</span>&nbsp;
                                                        <span id="lblSmsCountinfo">SMS Count : </span><strong>
                                                            <span id="lblSMSCount">{{SMSCount}}</span>&nbsp;
                                                        </strong>
                                                    </div>

                                                    <div style="float: right;">
                                                        <label class="label-checkbox" style="display: inline;">
                                                            <input type="checkbox" class="uniform_on" font-size="Smaller" id="chkboxIsFlash" ng-model="ComposeSMS.Flash">
                                                            <span class="custom-checkbox"></span>
                                                            Flash
                                                        </label>
                                                        <i class="fa fa-question-circle" title="For sending flash message" aria-hidden="true"></i>
                                                    </div>
                                                </div> -->
                                            </div>
                                            <div class="form-inline">
                                                <!-- <div class=" form-group">
                                                    <label class="label-checkbox">
                                                        <input type="checkbox" id="chkSchedule" ng-change="HideShowDatetimeSchedule()" ng-disabled="isDisabled" ng-model="ChkSchedule" />
                                                        <span class="custom-checkbox"></span>
                                                        Schedule<br>
                                                    </label>
                                                </div> -->
                                               <!--  <div class="input-group col-xs-12 col-md-3" ng-hide="HideDatetimeSchedule" style="margin-bottom: 2px;">
                                                    <input type="text" class="form-control timepicker timepicker-no-seconds" id="ScheduleDate">
                                                    <span class="input-group-btn"><button class="btn default" type="button"><i class="fa fa-calendar"></i></button></span>
                                                </div> -->
                                               <!--  <div class="input-group fadeInDown col-xs-12 col-md-3" ng-hide="HideDatetimeSchedule" style="margin-bottom: 2px;">
                                                    <input class="form-control timepicker timepicker-no-seconds" id="ScheduleTime" type="text">
                                                    <span class="input-group-btn"><button class="btn default" type="button"><i class="fa fa-clock-o"></i></button></span>
                                                </div> -->
                                                <div class="input-group fadeInDown col-xs-12 col-md-4" ng-hide="HideDatetimeSchedule">
                                                    <label for="Campaign Name">Select Time Zone</label>
                                                    <select style="width: 300%" class="form-control" id="TimeZone" name="TimeZone"><option value="Pacific/Niue">(UTC -11:0) Pacific/Niue</option>
<option value="Pacific/Midway">(UTC -11:0) Pacific/Midway</option>
<option value="Pacific/Pago_Pago">(UTC -11:0) Pacific/Pago_Pago</option>
<option value="Pacific/Rarotonga">(UTC -10:0) Pacific/Rarotonga</option>
<option value="America/Adak">(UTC -10:0) America/Adak</option>
<option value="Pacific/Honolulu">(UTC -10:0) Pacific/Honolulu</option>
<option value="Pacific/Tahiti">(UTC -10:0) Pacific/Tahiti</option>
<option value="Pacific/Marquesas">(UTC -9:-30) Pacific/Marquesas</option>
<option value="America/Nome">(UTC -9:0) America/Nome</option>
<option value="America/Yakutat">(UTC -9:0) America/Yakutat</option>
<option value="America/Sitka">(UTC -9:0) America/Sitka</option>
<option value="America/Juneau">(UTC -9:0) America/Juneau</option>
<option value="America/Anchorage">(UTC -9:0) America/Anchorage</option>
<option value="Pacific/Gambier">(UTC -9:0) Pacific/Gambier</option>
<option value="America/Metlakatla">(UTC -9:0) America/Metlakatla</option>
<option value="America/Los_Angeles">(UTC -8:0) America/Los_Angeles</option>
<option value="America/Tijuana">(UTC -8:0) America/Tijuana</option>
<option value="America/Vancouver">(UTC -8:0) America/Vancouver</option>
<option value="America/Dawson">(UTC -8:0) America/Dawson</option>
<option value="America/Whitehorse">(UTC -8:0) America/Whitehorse</option>
<option value="Pacific/Pitcairn">(UTC -8:0) Pacific/Pitcairn</option>
<option value="America/Fort_Nelson">(UTC -7:0) America/Fort_Nelson</option>
<option value="America/Chihuahua">(UTC -7:0) America/Chihuahua</option>
<option value="America/Mazatlan">(UTC -7:0) America/Mazatlan</option>
<option value="America/Hermosillo">(UTC -7:0) America/Hermosillo</option>
<option value="America/Dawson_Creek">(UTC -7:0) America/Dawson_Creek</option>
<option value="America/Cambridge_Bay">(UTC -7:0) America/Cambridge_Bay</option>
<option value="America/Inuvik">(UTC -7:0) America/Inuvik</option>
<option value="America/Denver">(UTC -7:0) America/Denver</option>
<option value="America/Phoenix">(UTC -7:0) America/Phoenix</option>
<option value="America/Boise">(UTC -7:0) America/Boise</option>
<option value="America/Yellowknife">(UTC -7:0) America/Yellowknife</option>
<option value="America/Edmonton">(UTC -7:0) America/Edmonton</option>
<option value="America/Creston">(UTC -7:0) America/Creston</option>
<option value="America/Ojinaga">(UTC -7:0) America/Ojinaga</option>
<option value="America/North_Dakota/Beulah">(UTC -6:0) America/North_Dakota/Beulah</option>
<option value="America/North_Dakota/New_Salem">(UTC -6:0) America/North_Dakota/New_Salem</option>
<option value="America/Costa_Rica">(UTC -6:0) America/Costa_Rica</option>
<option value="America/Matamoros">(UTC -6:0) America/Matamoros</option>
<option value="America/Monterrey">(UTC -6:0) America/Monterrey</option>
<option value="America/Belize">(UTC -6:0) America/Belize</option>
<option value="America/North_Dakota/Center">(UTC -6:0) America/North_Dakota/Center</option>
<option value="America/Merida">(UTC -6:0) America/Merida</option>
<option value="America/Winnipeg">(UTC -6:0) America/Winnipeg</option>
<option value="America/Rainy_River">(UTC -6:0) America/Rainy_River</option>
<option value="America/Resolute">(UTC -6:0) America/Resolute</option>
<option value="America/Rankin_Inlet">(UTC -6:0) America/Rankin_Inlet</option>
<option value="America/Regina">(UTC -6:0) America/Regina</option>
<option value="America/Swift_Current">(UTC -6:0) America/Swift_Current</option>
<option value="America/Mexico_City">(UTC -6:0) America/Mexico_City</option>
<option value="America/Indiana/Knox">(UTC -6:0) America/Indiana/Knox</option>
<option value="America/Menominee">(UTC -6:0) America/Menominee</option>
<option value="America/Indiana/Tell_City">(UTC -6:0) America/Indiana/Tell_City</option>
<option value="America/Bahia_Banderas">(UTC -6:0) America/Bahia_Banderas</option>
<option value="America/Managua">(UTC -6:0) America/Managua</option>
<option value="America/Tegucigalpa">(UTC -6:0) America/Tegucigalpa</option>
<option value="America/Chicago">(UTC -6:0) America/Chicago</option>
<option value="America/Guatemala">(UTC -6:0) America/Guatemala</option>
<option value="America/El_Salvador">(UTC -6:0) America/El_Salvador</option>
<option value="Pacific/Easter">(UTC -6:0) Pacific/Easter</option>
<option value="Pacific/Galapagos">(UTC -6:0) Pacific/Galapagos</option>
<option value="America/Eirunepe">(UTC -5:0) America/Eirunepe</option>
<option value="America/Rio_Branco">(UTC -5:0) America/Rio_Branco</option>
<option value="America/Grand_Turk">(UTC -5:0) America/Grand_Turk</option>
<option value="America/Bogota">(UTC -5:0) America/Bogota</option>
<option value="America/Havana">(UTC -5:0) America/Havana</option>
<option value="America/Pangnirtung">(UTC -5:0) America/Pangnirtung</option>
<option value="America/Iqaluit">(UTC -5:0) America/Iqaluit</option>
<option value="America/Indiana/Winamac">(UTC -5:0) America/Indiana/Winamac</option>
<option value="America/Nipigon">(UTC -5:0) America/Nipigon</option>
<option value="America/Toronto">(UTC -5:0) America/Toronto</option>
<option value="America/Indiana/Vincennes">(UTC -5:0) America/Indiana/Vincennes</option>
<option value="America/Cancun">(UTC -5:0) America/Cancun</option>
<option value="America/Indiana/Marengo">(UTC -5:0) America/Indiana/Marengo</option>
<option value="America/Indiana/Indianapolis">(UTC -5:0) America/Indiana/Indianapolis</option>
<option value="America/Indiana/Vevay">(UTC -5:0) America/Indiana/Vevay</option>
<option value="America/Jamaica">(UTC -5:0) America/Jamaica</option>
<option value="America/Atikokan">(UTC -5:0) America/Atikokan</option>
<option value="America/Thunder_Bay">(UTC -5:0) America/Thunder_Bay</option>
<option value="America/Nassau">(UTC -5:0) America/Nassau</option>
<option value="America/Kentucky/Monticello">(UTC -5:0) America/Kentucky/Monticello</option>
<option value="America/Kentucky/Louisville">(UTC -5:0) America/Kentucky/Louisville</option>
<option value="America/Detroit">(UTC -5:0) America/Detroit</option>
<option value="America/Panama">(UTC -5:0) America/Panama</option>
<option value="America/New_York">(UTC -5:0) America/New_York</option>
<option value="America/Indiana/Petersburg">(UTC -5:0) America/Indiana/Petersburg</option>
<option value="America/Port-au-Prince">(UTC -5:0) America/Port-au-Prince</option>
<option value="America/Cayman">(UTC -5:0) America/Cayman</option>
<option value="America/Guayaquil">(UTC -5:0) America/Guayaquil</option>
<option value="America/Lima">(UTC -5:0) America/Lima</option>
<option value="America/Boa_Vista">(UTC -4:0) America/Boa_Vista</option>
<option value="America/Porto_Velho">(UTC -4:0) America/Porto_Velho</option>
<option value="America/Manaus">(UTC -4:0) America/Manaus</option>
<option value="America/Campo_Grande">(UTC -4:0) America/Campo_Grande</option>
<option value="America/Cuiaba">(UTC -4:0) America/Cuiaba</option>
<option value="America/Marigot">(UTC -4:0) America/Marigot</option>
<option value="America/Martinique">(UTC -4:0) America/Martinique</option>
<option value="America/Lower_Princes">(UTC -4:0) America/Lower_Princes</option>
<option value="America/Dominica">(UTC -4:0) America/Dominica</option>
<option value="America/St_Kitts">(UTC -4:0) America/St_Kitts</option>
<option value="America/Thule">(UTC -4:0) America/Thule</option>
<option value="America/Curacao">(UTC -4:0) America/Curacao</option>
<option value="America/Guadeloupe">(UTC -4:0) America/Guadeloupe</option>
<option value="America/Port_of_Spain">(UTC -4:0) America/Port_of_Spain</option>
<option value="America/St_Lucia">(UTC -4:0) America/St_Lucia</option>
<option value="America/Santo_Domingo">(UTC -4:0) America/Santo_Domingo</option>
<option value="America/Montserrat">(UTC -4:0) America/Montserrat</option>
<option value="America/Grenada">(UTC -4:0) America/Grenada</option>
<option value="America/Goose_Bay">(UTC -4:0) America/Goose_Bay</option>
<option value="America/Puerto_Rico">(UTC -4:0) America/Puerto_Rico</option>
<option value="America/St_Vincent">(UTC -4:0) America/St_Vincent</option>
<option value="America/Barbados">(UTC -4:0) America/Barbados</option>
<option value="America/St_Barthelemy">(UTC -4:0) America/St_Barthelemy</option>
<option value="America/Tortola">(UTC -4:0) America/Tortola</option>
<option value="America/Aruba">(UTC -4:0) America/Aruba</option>
<option value="America/Kralendijk">(UTC -4:0) America/Kralendijk</option>
<option value="America/St_Thomas">(UTC -4:0) America/St_Thomas</option>
<option value="America/Anguilla">(UTC -4:0) America/Anguilla</option>
<option value="Atlantic/Bermuda">(UTC -4:0) Atlantic/Bermuda</option>
<option value="America/Blanc-Sablon">(UTC -4:0) America/Blanc-Sablon</option>
<option value="America/Antigua">(UTC -4:0) America/Antigua</option>
<option value="America/Moncton">(UTC -4:0) America/Moncton</option>
<option value="America/Halifax">(UTC -4:0) America/Halifax</option>
<option value="America/Glace_Bay">(UTC -4:0) America/Glace_Bay</option>
<option value="America/La_Paz">(UTC -4:0) America/La_Paz</option>
<option value="America/Santiago">(UTC -4:0) America/Santiago</option>
<option value="America/Guyana">(UTC -4:0) America/Guyana</option>
<option value="America/Asuncion">(UTC -4:0) America/Asuncion</option>
<option value="America/Caracas">(UTC -4:0) America/Caracas</option>
<option value="America/St_Johns">(UTC -3:-30) America/St_Johns</option>
<option value="America/Argentina/Ushuaia">(UTC -3:0) America/Argentina/Ushuaia</option>
<option value="America/Argentina/Rio_Gallegos">(UTC -3:0) America/Argentina/Rio_Gallegos</option>
<option value="America/Argentina/San_Juan">(UTC -3:0) America/Argentina/San_Juan</option>
<option value="America/Argentina/La_Rioja">(UTC -3:0) America/Argentina/La_Rioja</option>
<option value="America/Argentina/Catamarca">(UTC -3:0) America/Argentina/Catamarca</option>
<option value="America/Argentina/Tucuman">(UTC -3:0) America/Argentina/Tucuman</option>
<option value="America/Argentina/Jujuy">(UTC -3:0) America/Argentina/Jujuy</option>
<option value="America/Argentina/Cordoba">(UTC -3:0) America/Argentina/Cordoba</option>
<option value="America/Argentina/Buenos_Aires">(UTC -3:0) America/Argentina/Buenos_Aires</option>
<option value="America/Argentina/Mendoza">(UTC -3:0) America/Argentina/Mendoza</option>
<option value="America/Argentina/Salta">(UTC -3:0) America/Argentina/Salta</option>
<option value="America/Araguaina">(UTC -3:0) America/Araguaina</option>
<option value="America/Sao_Paulo">(UTC -3:0) America/Sao_Paulo</option>
<option value="America/Bahia">(UTC -3:0) America/Bahia</option>
<option value="America/Maceio">(UTC -3:0) America/Maceio</option>
<option value="America/Recife">(UTC -3:0) America/Recife</option>
<option value="America/Santarem">(UTC -3:0) America/Santarem</option>
<option value="America/Belem">(UTC -3:0) America/Belem</option>
<option value="America/Fortaleza">(UTC -3:0) America/Fortaleza</option>
<option value="Antarctica/Palmer">(UTC -3:0) Antarctica/Palmer</option>
<option value="Atlantic/Stanley">(UTC -3:0) Atlantic/Stanley</option>
<option value="America/Cayenne">(UTC -3:0) America/Cayenne</option>
<option value="America/Punta_Arenas">(UTC -3:0) America/Punta_Arenas</option>
<option value="Antarctica/Rothera">(UTC -3:0) Antarctica/Rothera</option>
<option value="America/Miquelon">(UTC -3:0) America/Miquelon</option>
<option value="America/Paramaribo">(UTC -3:0) America/Paramaribo</option>
<option value="America/Montevideo">(UTC -3:0) America/Montevideo</option>
<option value="America/Godthab">(UTC -3:0) America/Godthab</option>
<option value="America/Argentina/San_Luis">(UTC -3:0) America/Argentina/San_Luis</option>
<option value="America/Noronha">(UTC -2:0) America/Noronha</option>
<option value="Atlantic/South_Georgia">(UTC -2:0) Atlantic/South_Georgia</option>
<option value="Atlantic/Azores">(UTC -1:0) Atlantic/Azores</option>
<option value="Atlantic/Cape_Verde">(UTC -1:0) Atlantic/Cape_Verde</option>
<option value="America/Scoresbysund">(UTC -1:0) America/Scoresbysund</option>
<option value="Africa/Bissau">(UTC &#x2B; 0:0) Africa/Bissau</option>
<option value="Africa/Bamako">(UTC &#x2B; 0:0) Africa/Bamako</option>
<option value="Europe/Isle_of_Man">(UTC &#x2B; 0:0) Europe/Isle_of_Man</option>
<option value="Africa/Lome">(UTC &#x2B; 0:0) Africa/Lome</option>
<option value="Atlantic/Reykjavik">(UTC &#x2B; 0:0) Atlantic/Reykjavik</option>
<option value="Europe/Jersey">(UTC &#x2B; 0:0) Europe/Jersey</option>
<option value="Atlantic/St_Helena">(UTC &#x2B; 0:0) Atlantic/St_Helena</option>
<option value="Antarctica/Troll">(UTC &#x2B; 0:0) Antarctica/Troll</option>
<option value="Africa/Monrovia">(UTC &#x2B; 0:0) Africa/Monrovia</option>
<option value="Africa/Nouakchott">(UTC &#x2B; 0:0) Africa/Nouakchott</option>
<option value="Africa/Conakry">(UTC &#x2B; 0:0) Africa/Conakry</option>
<option value="Africa/Dakar">(UTC &#x2B; 0:0) Africa/Dakar</option>
<option value="Africa/Banjul">(UTC &#x2B; 0:0) Africa/Banjul</option>
<option value="America/Danmarkshavn">(UTC &#x2B; 0:0) America/Danmarkshavn</option>
<option value="Africa/Abidjan">(UTC &#x2B; 0:0) Africa/Abidjan</option>
<option value="Africa/Ouagadougou">(UTC &#x2B; 0:0) Africa/Ouagadougou</option>
<option value="Africa/Accra">(UTC &#x2B; 0:0) Africa/Accra</option>
<option value="Europe/Guernsey">(UTC &#x2B; 0:0) Europe/Guernsey</option>
<option value="Africa/Freetown">(UTC &#x2B; 0:0) Africa/Freetown</option>
<option value="Europe/London">(UTC &#x2B; 0:0) Europe/London</option>
<option value="Africa/Sao_Tome">(UTC &#x2B; 0:0) Africa/Sao_Tome</option>
<option value="Atlantic/Faroe">(UTC &#x2B; 0:0) Atlantic/Faroe</option>
<option value="Atlantic/Madeira">(UTC &#x2B; 0:0) Atlantic/Madeira</option>
<option value="Europe/Lisbon">(UTC &#x2B; 0:0) Europe/Lisbon</option>
<option value="Atlantic/Canary">(UTC &#x2B; 0:0) Atlantic/Canary</option>
<option value="Europe/Prague">(UTC &#x2B; 1:0) Europe/Prague</option>
<option value="Europe/Busingen">(UTC &#x2B; 1:0) Europe/Busingen</option>
<option value="Europe/Berlin">(UTC &#x2B; 1:0) Europe/Berlin</option>
<option value="Africa/Algiers">(UTC &#x2B; 1:0) Africa/Algiers</option>
<option value="Europe/Copenhagen">(UTC &#x2B; 1:0) Europe/Copenhagen</option>
<option value="Arctic/Longyearbyen">(UTC &#x2B; 1:0) Arctic/Longyearbyen</option>
<option value="Europe/San_Marino">(UTC &#x2B; 1:0) Europe/San_Marino</option>
<option value="Europe/Belgrade">(UTC &#x2B; 1:0) Europe/Belgrade</option>
<option value="Europe/Luxembourg">(UTC &#x2B; 1:0) Europe/Luxembourg</option>
<option value="Europe/Ljubljana">(UTC &#x2B; 1:0) Europe/Ljubljana</option>
<option value="Europe/Stockholm">(UTC &#x2B; 1:0) Europe/Stockholm</option>
<option value="Europe/Malta">(UTC &#x2B; 1:0) Europe/Malta</option>
<option value="Europe/Tirane">(UTC &#x2B; 1:0) Europe/Tirane</option>
<option value="Europe/Skopje">(UTC &#x2B; 1:0) Europe/Skopje</option>
<option value="Europe/Vaduz">(UTC &#x2B; 1:0) Europe/Vaduz</option>
<option value="Europe/Bratislava">(UTC &#x2B; 1:0) Europe/Bratislava</option>
<option value="Africa/Tunis">(UTC &#x2B; 1:0) Africa/Tunis</option>
<option value="Europe/Monaco">(UTC &#x2B; 1:0) Europe/Monaco</option>
<option value="Europe/Madrid">(UTC &#x2B; 1:0) Europe/Madrid</option>
<option value="Europe/Andorra">(UTC &#x2B; 1:0) Europe/Andorra</option>
<option value="Europe/Gibraltar">(UTC &#x2B; 1:0) Europe/Gibraltar</option>
<option value="Europe/Vatican">(UTC &#x2B; 1:0) Europe/Vatican</option>
<option value="Europe/Zagreb">(UTC &#x2B; 1:0) Europe/Zagreb</option>
<option value="Europe/Sarajevo">(UTC &#x2B; 1:0) Europe/Sarajevo</option>
<option value="Europe/Budapest">(UTC &#x2B; 1:0) Europe/Budapest</option>
<option value="Europe/Amsterdam">(UTC &#x2B; 1:0) Europe/Amsterdam</option>
<option value="Europe/Vienna">(UTC &#x2B; 1:0) Europe/Vienna</option>
<option value="Europe/Warsaw">(UTC &#x2B; 1:0) Europe/Warsaw</option>
<option value="Europe/Podgorica">(UTC &#x2B; 1:0) Europe/Podgorica</option>
<option value="Europe/Paris">(UTC &#x2B; 1:0) Europe/Paris</option>
<option value="Europe/Brussels">(UTC &#x2B; 1:0) Europe/Brussels</option>
<option value="Europe/Oslo">(UTC &#x2B; 1:0) Europe/Oslo</option>
<option value="Europe/Rome">(UTC &#x2B; 1:0) Europe/Rome</option>
<option value="Europe/Zurich">(UTC &#x2B; 1:0) Europe/Zurich</option>
<option value="Africa/Ceuta">(UTC &#x2B; 1:0) Africa/Ceuta</option>
<option value="Europe/Dublin">(UTC &#x2B; 1:0) Europe/Dublin</option>
<option value="Africa/Ndjamena">(UTC &#x2B; 1:0) Africa/Ndjamena</option>
<option value="Africa/Kinshasa">(UTC &#x2B; 1:0) Africa/Kinshasa</option>
<option value="Africa/Bangui">(UTC &#x2B; 1:0) Africa/Bangui</option>
<option value="Africa/Porto-Novo">(UTC &#x2B; 1:0) Africa/Porto-Novo</option>
<option value="Africa/Luanda">(UTC &#x2B; 1:0) Africa/Luanda</option>
<option value="Africa/Douala">(UTC &#x2B; 1:0) Africa/Douala</option>
<option value="Africa/Niamey">(UTC &#x2B; 1:0) Africa/Niamey</option>
<option value="Africa/Libreville">(UTC &#x2B; 1:0) Africa/Libreville</option>
<option value="Africa/Lagos">(UTC &#x2B; 1:0) Africa/Lagos</option>
<option value="Africa/Brazzaville">(UTC &#x2B; 1:0) Africa/Brazzaville</option>
<option value="Africa/Malabo">(UTC &#x2B; 1:0) Africa/Malabo</option>
<option value="Africa/El_Aaiun">(UTC &#x2B; 1:0) Africa/El_Aaiun</option>
<option value="Africa/Casablanca">(UTC &#x2B; 1:0) Africa/Casablanca</option>
<option value="Africa/Blantyre">(UTC &#x2B; 2:0) Africa/Blantyre</option>
<option value="Africa/Maputo">(UTC &#x2B; 2:0) Africa/Maputo</option>
<option value="Africa/Harare">(UTC &#x2B; 2:0) Africa/Harare</option>
<option value="Africa/Kigali">(UTC &#x2B; 2:0) Africa/Kigali</option>
<option value="Africa/Lubumbashi">(UTC &#x2B; 2:0) Africa/Lubumbashi</option>
<option value="Africa/Gaborone">(UTC &#x2B; 2:0) Africa/Gaborone</option>
<option value="Africa/Bujumbura">(UTC &#x2B; 2:0) Africa/Bujumbura</option>
<option value="Africa/Lusaka">(UTC &#x2B; 2:0) Africa/Lusaka</option>
<option value="Africa/Khartoum">(UTC &#x2B; 2:0) Africa/Khartoum</option>
<option value="Europe/Helsinki">(UTC &#x2B; 2:0) Europe/Helsinki</option>
<option value="Asia/Nicosia">(UTC &#x2B; 2:0) Asia/Nicosia</option>
<option value="Europe/Athens">(UTC &#x2B; 2:0) Europe/Athens</option>
<option value="Asia/Amman">(UTC &#x2B; 2:0) Asia/Amman</option>
<option value="Asia/Damascus">(UTC &#x2B; 2:0) Asia/Damascus</option>
<option value="Europe/Zaporozhye">(UTC &#x2B; 2:0) Europe/Zaporozhye</option>
<option value="Europe/Tallinn">(UTC &#x2B; 2:0) Europe/Tallinn</option>
<option value="Europe/Uzhgorod">(UTC &#x2B; 2:0) Europe/Uzhgorod</option>
<option value="Europe/Sofia">(UTC &#x2B; 2:0) Europe/Sofia</option>
<option value="Europe/Kiev">(UTC &#x2B; 2:0) Europe/Kiev</option>
<option value="Africa/Cairo">(UTC &#x2B; 2:0) Africa/Cairo</option>
<option value="Asia/Gaza">(UTC &#x2B; 2:0) Asia/Gaza</option>
<option value="Europe/Chisinau">(UTC &#x2B; 2:0) Europe/Chisinau</option>
<option value="Africa/Tripoli">(UTC &#x2B; 2:0) Africa/Tripoli</option>
<option value="Europe/Kaliningrad">(UTC &#x2B; 2:0) Europe/Kaliningrad</option>
<option value="Europe/Mariehamn">(UTC &#x2B; 2:0) Europe/Mariehamn</option>
<option value="Europe/Vilnius">(UTC &#x2B; 2:0) Europe/Vilnius</option>
<option value="Asia/Beirut">(UTC &#x2B; 2:0) Asia/Beirut</option>
<option value="Europe/Riga">(UTC &#x2B; 2:0) Europe/Riga</option>
<option value="Europe/Bucharest">(UTC &#x2B; 2:0) Europe/Bucharest</option>
<option value="Asia/Hebron">(UTC &#x2B; 2:0) Asia/Hebron</option>
<option value="Asia/Famagusta">(UTC &#x2B; 2:0) Asia/Famagusta</option>
<option value="Asia/Jerusalem">(UTC &#x2B; 2:0) Asia/Jerusalem</option>
<option value="Africa/Maseru">(UTC &#x2B; 2:0) Africa/Maseru</option>
<option value="Africa/Mbabane">(UTC &#x2B; 2:0) Africa/Mbabane</option>
<option value="Africa/Johannesburg">(UTC &#x2B; 2:0) Africa/Johannesburg</option>
<option value="Africa/Windhoek">(UTC &#x2B; 2:0) Africa/Windhoek</option>
<option value="Asia/Qatar">(UTC &#x2B; 3:0) Asia/Qatar</option>
<option value="Asia/Baghdad">(UTC &#x2B; 3:0) Asia/Baghdad</option>
<option value="Asia/Aden">(UTC &#x2B; 3:0) Asia/Aden</option>
<option value="Asia/Riyadh">(UTC &#x2B; 3:0) Asia/Riyadh</option>
<option value="Asia/Bahrain">(UTC &#x2B; 3:0) Asia/Bahrain</option>
<option value="Asia/Kuwait">(UTC &#x2B; 3:0) Asia/Kuwait</option>
<option value="Indian/Mayotte">(UTC &#x2B; 3:0) Indian/Mayotte</option>
<option value="Africa/Djibouti">(UTC &#x2B; 3:0) Africa/Djibouti</option>
<option value="Indian/Antananarivo">(UTC &#x2B; 3:0) Indian/Antananarivo</option>
<option value="Indian/Comoro">(UTC &#x2B; 3:0) Indian/Comoro</option>
<option value="Africa/Dar_es_Salaam">(UTC &#x2B; 3:0) Africa/Dar_es_Salaam</option>
<option value="Africa/Kampala">(UTC &#x2B; 3:0) Africa/Kampala</option>
<option value="Africa/Nairobi">(UTC &#x2B; 3:0) Africa/Nairobi</option>
<option value="Africa/Mogadishu">(UTC &#x2B; 3:0) Africa/Mogadishu</option>
<option value="Africa/Addis_Ababa">(UTC &#x2B; 3:0) Africa/Addis_Ababa</option>
<option value="Africa/Juba">(UTC &#x2B; 3:0) Africa/Juba</option>
<option value="Africa/Asmara">(UTC &#x2B; 3:0) Africa/Asmara</option>
<option value="Europe/Istanbul">(UTC &#x2B; 3:0) Europe/Istanbul</option>
<option value="Europe/Minsk">(UTC &#x2B; 3:0) Europe/Minsk</option>
<option value="Europe/Kirov">(UTC &#x2B; 3:0) Europe/Kirov</option>
<option value="Europe/Moscow">(UTC &#x2B; 3:0) Europe/Moscow</option>
<option value="Europe/Simferopol">(UTC &#x2B; 3:0) Europe/Simferopol</option>
<option value="Antarctica/Syowa">(UTC &#x2B; 3:0) Antarctica/Syowa</option>
<option value="Asia/Tehran">(UTC &#x2B; 3:30) Asia/Tehran</option>
<option value="Asia/Yerevan">(UTC &#x2B; 4:0) Asia/Yerevan</option>
<option value="Asia/Baku">(UTC &#x2B; 4:0) Asia/Baku</option>
<option value="Europe/Astrakhan">(UTC &#x2B; 4:0) Europe/Astrakhan</option>
<option value="Europe/Saratov">(UTC &#x2B; 4:0) Europe/Saratov</option>
<option value="Europe/Ulyanovsk">(UTC &#x2B; 4:0) Europe/Ulyanovsk</option>
<option value="Asia/Tbilisi">(UTC &#x2B; 4:0) Asia/Tbilisi</option>
<option value="Asia/Dubai">(UTC &#x2B; 4:0) Asia/Dubai</option>
<option value="Asia/Muscat">(UTC &#x2B; 4:0) Asia/Muscat</option>
<option value="Indian/Mauritius">(UTC &#x2B; 4:0) Indian/Mauritius</option>
<option value="Europe/Volgograd">(UTC &#x2B; 4:0) Europe/Volgograd</option>
<option value="Indian/Reunion">(UTC &#x2B; 4:0) Indian/Reunion</option>
<option value="Europe/Samara">(UTC &#x2B; 4:0) Europe/Samara</option>
<option value="Indian/Mahe">(UTC &#x2B; 4:0) Indian/Mahe</option>
<option value="Asia/Kabul">(UTC &#x2B; 4:30) Asia/Kabul</option>
<option value="Asia/Qyzylorda">(UTC &#x2B; 5:0) Asia/Qyzylorda</option>
<option value="Indian/Kerguelen">(UTC &#x2B; 5:0) Indian/Kerguelen</option>
<option value="Asia/Atyrau">(UTC &#x2B; 5:0) Asia/Atyrau</option>
<option value="Indian/Maldives">(UTC &#x2B; 5:0) Indian/Maldives</option>
<option value="Antarctica/Mawson">(UTC &#x2B; 5:0) Antarctica/Mawson</option>
<option value="Asia/Karachi">(UTC &#x2B; 5:0) Asia/Karachi</option>
<option value="Asia/Dushanbe">(UTC &#x2B; 5:0) Asia/Dushanbe</option>
<option value="Asia/Ashgabat">(UTC &#x2B; 5:0) Asia/Ashgabat</option>
<option value="Asia/Tashkent">(UTC &#x2B; 5:0) Asia/Tashkent</option>
<option value="Asia/Samarkand">(UTC &#x2B; 5:0) Asia/Samarkand</option>
<option value="Asia/Aqtobe">(UTC &#x2B; 5:0) Asia/Aqtobe</option>
<option value="Asia/Aqtau">(UTC &#x2B; 5:0) Asia/Aqtau</option>
<option value="Asia/Oral">(UTC &#x2B; 5:0) Asia/Oral</option>
<option value="Asia/Yekaterinburg">(UTC &#x2B; 5:0) Asia/Yekaterinburg</option>
<option selected="selected" value="Asia/Kolkata">(UTC &#x2B; 5:30) Asia/Kolkata</option>
<option value="Asia/Colombo">(UTC &#x2B; 5:30) Asia/Colombo</option>
<option value="Asia/Kathmandu">(UTC &#x2B; 5:45) Asia/Kathmandu</option>
<option value="Asia/Dhaka">(UTC &#x2B; 6:0) Asia/Dhaka</option>
<option value="Asia/Thimphu">(UTC &#x2B; 6:0) Asia/Thimphu</option>
<option value="Asia/Almaty">(UTC &#x2B; 6:0) Asia/Almaty</option>
<option value="Asia/Qostanay">(UTC &#x2B; 6:0) Asia/Qostanay</option>
<option value="Asia/Urumqi">(UTC &#x2B; 6:0) Asia/Urumqi</option>
<option value="Indian/Chagos">(UTC &#x2B; 6:0) Indian/Chagos</option>
<option value="Asia/Bishkek">(UTC &#x2B; 6:0) Asia/Bishkek</option>
<option value="Asia/Omsk">(UTC &#x2B; 6:0) Asia/Omsk</option>
<option value="Antarctica/Vostok">(UTC &#x2B; 6:0) Antarctica/Vostok</option>
<option value="Indian/Cocos">(UTC &#x2B; 6:30) Indian/Cocos</option>
<option value="Asia/Yangon">(UTC &#x2B; 6:30) Asia/Yangon</option>
<option value="Indian/Christmas">(UTC &#x2B; 7:0) Indian/Christmas</option>
<option value="Antarctica/Davis">(UTC &#x2B; 7:0) Antarctica/Davis</option>
<option value="Asia/Barnaul">(UTC &#x2B; 7:0) Asia/Barnaul</option>
<option value="Asia/Tomsk">(UTC &#x2B; 7:0) Asia/Tomsk</option>
<option value="Asia/Hovd">(UTC &#x2B; 7:0) Asia/Hovd</option>
<option value="Asia/Bangkok">(UTC &#x2B; 7:0) Asia/Bangkok</option>
<option value="Asia/Vientiane">(UTC &#x2B; 7:0) Asia/Vientiane</option>
<option value="Asia/Phnom_Penh">(UTC &#x2B; 7:0) Asia/Phnom_Penh</option>
<option value="Asia/Ho_Chi_Minh">(UTC &#x2B; 7:0) Asia/Ho_Chi_Minh</option>
<option value="Asia/Novokuznetsk">(UTC &#x2B; 7:0) Asia/Novokuznetsk</option>
<option value="Asia/Krasnoyarsk">(UTC &#x2B; 7:0) Asia/Krasnoyarsk</option>
<option value="Asia/Novosibirsk">(UTC &#x2B; 7:0) Asia/Novosibirsk</option>
<option value="Asia/Jakarta">(UTC &#x2B; 7:0) Asia/Jakarta</option>
<option value="Asia/Pontianak">(UTC &#x2B; 7:0) Asia/Pontianak</option>
<option value="Antarctica/Casey">(UTC &#x2B; 8:0) Antarctica/Casey</option>
<option value="Australia/Perth">(UTC &#x2B; 8:0) Australia/Perth</option>
<option value="Asia/Brunei">(UTC &#x2B; 8:0) Asia/Brunei</option>
<option value="Asia/Makassar">(UTC &#x2B; 8:0) Asia/Makassar</option>
<option value="Asia/Macau">(UTC &#x2B; 8:0) Asia/Macau</option>
<option value="Asia/Shanghai">(UTC &#x2B; 8:0) Asia/Shanghai</option>
<option value="Asia/Choibalsan">(UTC &#x2B; 8:0) Asia/Choibalsan</option>
<option value="Asia/Hong_Kong">(UTC &#x2B; 8:0) Asia/Hong_Kong</option>
<option value="Asia/Irkutsk">(UTC &#x2B; 8:0) Asia/Irkutsk</option>
<option value="Asia/Kuala_Lumpur">(UTC &#x2B; 8:0) Asia/Kuala_Lumpur</option>
<option value="Asia/Kuching">(UTC &#x2B; 8:0) Asia/Kuching</option>
<option value="Asia/Manila">(UTC &#x2B; 8:0) Asia/Manila</option>
<option value="Asia/Singapore">(UTC &#x2B; 8:0) Asia/Singapore</option>
<option value="Asia/Taipei">(UTC &#x2B; 8:0) Asia/Taipei</option>
<option value="Asia/Ulaanbaatar">(UTC &#x2B; 8:0) Asia/Ulaanbaatar</option>
<option value="Australia/Eucla">(UTC &#x2B; 8:45) Australia/Eucla</option>
<option value="Asia/Dili">(UTC &#x2B; 9:0) Asia/Dili</option>
<option value="Asia/Jayapura">(UTC &#x2B; 9:0) Asia/Jayapura</option>
<option value="Asia/Chita">(UTC &#x2B; 9:0) Asia/Chita</option>
<option value="Asia/Tokyo">(UTC &#x2B; 9:0) Asia/Tokyo</option>
<option value="Asia/Pyongyang">(UTC &#x2B; 9:0) Asia/Pyongyang</option>
<option value="Asia/Seoul">(UTC &#x2B; 9:0) Asia/Seoul</option>
<option value="Pacific/Palau">(UTC &#x2B; 9:0) Pacific/Palau</option>
<option value="Asia/Khandyga">(UTC &#x2B; 9:0) Asia/Khandyga</option>
<option value="Asia/Yakutsk">(UTC &#x2B; 9:0) Asia/Yakutsk</option>
<option value="Australia/Adelaide">(UTC &#x2B; 9:30) Australia/Adelaide</option>
<option value="Australia/Darwin">(UTC &#x2B; 9:30) Australia/Darwin</option>
<option value="Australia/Broken_Hill">(UTC &#x2B; 9:30) Australia/Broken_Hill</option>
<option value="Australia/Brisbane">(UTC &#x2B; 10:0) Australia/Brisbane</option>
<option value="Australia/Lindeman">(UTC &#x2B; 10:0) Australia/Lindeman</option>
<option value="Australia/Melbourne">(UTC &#x2B; 10:0) Australia/Melbourne</option>
<option value="Australia/Currie">(UTC &#x2B; 10:0) Australia/Currie</option>
<option value="Australia/Hobart">(UTC &#x2B; 10:0) Australia/Hobart</option>
<option value="Australia/Sydney">(UTC &#x2B; 10:0) Australia/Sydney</option>
<option value="Pacific/Guam">(UTC &#x2B; 10:0) Pacific/Guam</option>
<option value="Pacific/Saipan">(UTC &#x2B; 10:0) Pacific/Saipan</option>
<option value="Pacific/Chuuk">(UTC &#x2B; 10:0) Pacific/Chuuk</option>
<option value="Antarctica/DumontDUrville">(UTC &#x2B; 10:0) Antarctica/DumontDUrville</option>
<option value="Pacific/Port_Moresby">(UTC &#x2B; 10:0) Pacific/Port_Moresby</option>
<option value="Asia/Vladivostok">(UTC &#x2B; 10:0) Asia/Vladivostok</option>
<option value="Asia/Ust-Nera">(UTC &#x2B; 10:0) Asia/Ust-Nera</option>
<option value="Australia/Lord_Howe">(UTC &#x2B; 10:30) Australia/Lord_Howe</option>
<option value="Asia/Srednekolymsk">(UTC &#x2B; 11:0) Asia/Srednekolymsk</option>
<option value="Pacific/Bougainville">(UTC &#x2B; 11:0) Pacific/Bougainville</option>
<option value="Pacific/Kosrae">(UTC &#x2B; 11:0) Pacific/Kosrae</option>
<option value="Antarctica/Macquarie">(UTC &#x2B; 11:0) Antarctica/Macquarie</option>
<option value="Asia/Magadan">(UTC &#x2B; 11:0) Asia/Magadan</option>
<option value="Pacific/Noumea">(UTC &#x2B; 11:0) Pacific/Noumea</option>
<option value="Pacific/Norfolk">(UTC &#x2B; 11:0) Pacific/Norfolk</option>
<option value="Pacific/Pohnpei">(UTC &#x2B; 11:0) Pacific/Pohnpei</option>
<option value="Asia/Sakhalin">(UTC &#x2B; 11:0) Asia/Sakhalin</option>
<option value="Pacific/Guadalcanal">(UTC &#x2B; 11:0) Pacific/Guadalcanal</option>
<option value="Pacific/Efate">(UTC &#x2B; 11:0) Pacific/Efate</option>
<option value="Pacific/Fiji">(UTC &#x2B; 12:0) Pacific/Fiji</option>
<option value="Pacific/Tarawa">(UTC &#x2B; 12:0) Pacific/Tarawa</option>
<option value="Asia/Anadyr">(UTC &#x2B; 12:0) Asia/Anadyr</option>
<option value="Pacific/Kwajalein">(UTC &#x2B; 12:0) Pacific/Kwajalein</option>
<option value="Pacific/Majuro">(UTC &#x2B; 12:0) Pacific/Majuro</option>
<option value="Pacific/Nauru">(UTC &#x2B; 12:0) Pacific/Nauru</option>
<option value="Pacific/Auckland">(UTC &#x2B; 12:0) Pacific/Auckland</option>
<option value="Antarctica/McMurdo">(UTC &#x2B; 12:0) Antarctica/McMurdo</option>
<option value="Asia/Kamchatka">(UTC &#x2B; 12:0) Asia/Kamchatka</option>
<option value="Pacific/Funafuti">(UTC &#x2B; 12:0) Pacific/Funafuti</option>
<option value="Pacific/Wake">(UTC &#x2B; 12:0) Pacific/Wake</option>
<option value="Pacific/Wallis">(UTC &#x2B; 12:0) Pacific/Wallis</option>
<option value="Pacific/Chatham">(UTC &#x2B; 12:45) Pacific/Chatham</option>
<option value="Pacific/Apia">(UTC &#x2B; 13:0) Pacific/Apia</option>
<option value="Pacific/Enderbury">(UTC &#x2B; 13:0) Pacific/Enderbury</option>
<option value="Pacific/Fakaofo">(UTC &#x2B; 13:0) Pacific/Fakaofo</option>
<option value="Pacific/Tongatapu">(UTC &#x2B; 13:0) Pacific/Tongatapu</option>
<option value="Pacific/Kiritimati">(UTC &#x2B; 14:0) Pacific/Kiritimati</option>
</select>
                                                </div>
                                                <div class="form-inline help-block" ng-hide="HideDatetimeSchedule">
                                                    <span><strong>Note :  </strong>Your messages will be scheduled according to the selected TimeZone.</span>
                                                </div>

                                                <div style="float: right;">
                                                    <button type="button" class="btn btn-sm btn-info btnsave " ><i class="fa fa-file-o"></i>&nbsp; Save As Draft</button>
                                                    <button type="submit" class="btn btn-sm btn-success btnsaveschedule " ><i class="fa fa-clock-o"></i>&nbsp;Schedule</button>
                                                    <button type="button" onclick="submitForm()" class="btn btn-sm btn-success btnsave " ><i class="fa fa-envelope"></i>&nbsp; Send</button>
                                                    <!-- <span id="processing" ng-show="IsProcessShow"><i class="fa fa-spinner fa-spin"></i></span> -->
                                                </div>
                                            </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /panel -->

    <!--             <div class="col-md-5 hidden-xs" ng-cloak>
                    <div class="portlet light bordered" ng-hide="HideImportFromFileOrGroups">
                        <div class=" tabbable-line">
                            <ul class="nav nav-tabs">

                                <li class="active"><a href="#groups" data-toggle="tab" id="linktabgroups"><i class="fa fa-users"></i>&nbsp;&nbsp;Groups</a></li>
                                <li><a href="#fromfile" data-toggle="tab" id="linktabfromfile"><i class="fa fa-file-text"></i>&nbsp;&nbsp;From File (.xls, .csv, .txt)</a></li>
                            </ul>
                        </div>
                        <div class="panel-body">
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="groups">
                                    <p>
                                        <span>Total Contacts Selected : </span>
                                        <label id="lblTotalContactsSelected">
                                            {{TotalContactsSelected}}
                                        </label>
                                    </p>
                                    <table class="table">
                                        <tr>
                                            <th>
                                                <input type="checkbox" id="chkselectAllGroups" ng-model="selectedAll" name="chkselectAllGroups" ng-change="ChkSelectAllGroups()" />
                                                <span class="custom-checkbox"></span>
                                            </th>
                                            <th>
                                                Group Name
                                            </th>
                                        </tr>
                                        <tbody>
                                            <tr ng-hide="lateLoader"><td colspan="2"><img src="/Images/ajaxloader.gif" style="margin: 0px auto;display: block;" /></td></tr>
                                            <tr ng-repeat="item in ComposeSMS.ListGroup">
                                                <td>
                                                    <input type="checkbox" name="chkgroup" value="item.GroupId" ng-model="item.Selected" ng-checked="item.Selected" ng-change="ChkGroup(item)" />
                                                    <span class="custom-checkbox"></span>
                                                </td>
                                                <td>{{item.GroupName}} [{{item.ContactCount}}]</td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="fromfile">
                                    <div class="form-group">
                                        <input type="file" id="fileupInputFile" file-model="ImportContactsFile" />
                                    </div>
                                    <div class="form-group">
                                        <input type="button" ng-hide="btnImportContacts" id="btnImportContacts" class="btn btn-sm btn-success" value="Import Contacts" ng-click="UploadImportContacts()" />
                                        <img src="/Images/ajaxloader.gif" style="width: 24px;" class="ng-hide" ng-show="ContactLoader" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <table class="table table-hover ng-cloak" ng-hide="HideLastFiveMessage" style="background: #FFFFFF;margin-top: 100%;">
                        <thead>
                            <tr>
                                <th>Last Five Message</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="item in ComposeSMS.GridLastFiveMessage" style="cursor: pointer;">
                                <td ng-click="LastMessageAdd(item)" style="word-break: break-all;">
                                    {{item.Campaign}}
                                </td>
                            </tr>
                            <tr ng-show="ComposeSMS.GridLastFiveMessage.length == 0">
                                <td>
                                    No data available.
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div> -->

                <div class="modal fade" id="GroupContactModal" tabindex="-1" role="basic" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                <h4 class="modal-title">Manage Contacts</h4>
                            </div>
                            <div class="modal-body">
                                <div class="portlet light bordered" ng-hide="HideImportFromFileOrGroups" style="padding-bottom: 0px !important;padding-left: 10px;">
                                    <div class=" tabbable-line">
                                        <ul class="nav nav-tabs" style="display: -webkit-inline-box;border-bottom: 1px solid #ddd;">
                                            <li class="active"><a href="#Fromgroups" data-toggle="tab" id="linktabgroups"><i class="fa fa-users"></i>&nbsp;&nbsp;Groups</a></li>
                                            <li><a href="#fromfiles" data-toggle="tab" id="linktabfromfile"><i class="fa fa-file-text"></i>&nbsp;&nbsp;From File (.xls, .csv, .txt)</a></li>
                                        </ul>
                                    </div>
                                    <div class="panel-body" style="padding-bottom: 0px !important">
                                        <div class="tab-content">
                                            <div class="tab-pane fade in active" id="Fromgroups">
                                                <p>
                                                    <span>Total Contacts Selected : </span>
                                                    <label id="lblTotalContactsSelected">
                                                        {{TotalContactsSelected}}
                                                    </label>
                                                </p>
                                                <table class="table">
                                                    <tr>
                                                        <th>
                                                            <input type="checkbox" id="chkselectAllGroups" ng-model="selectedAll" name="chkselectAllGroups" ng-change="ChkSelectAllGroups()" />
                                                            <span class="custom-checkbox"></span>
                                                        </th>
                                                        <th>
                                                            Group Name
                                                        </th>
                                                    </tr>
                                                    <tbody>
                                                        <tr ng-hide="lateLoader"><td colspan="2"><img src="/Images/ajaxloader.gif" style="margin: 0px auto;display: block;" /></td></tr>
                                                        <tr ng-repeat="item in ComposeSMS.ListGroup">
                                                            <td>
                                                                <input type="checkbox" name="chkgroup" value="item.GroupId" ng-model="item.Selected" ng-checked="item.Selected" ng-change="ChkGroup(item)" />
                                                                <span class="custom-checkbox"></span>
                                                            </td>
                                                            <td>{{item.GroupName}} [{{item.ContactCount}}]</td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="tab-pane fade" id="fromfiles">
                                                <div class="form-group">
                                                    <input type="file" id="fileupInputFile" file-model="ImportContactsFile" />
                                                </div>
                                                <div class="form-group">
                                                    <input type="button" ng-hide="btnImportContacts" id="btnImportContacts" class="btn btn-sm btn-success" value="Import Contacts" ng-click="UploadImportContacts()" />
                                                    <img src="/Images/ajaxloader.gif" style="width: 24px;" class="ng-hide" ng-show="ContactLoader" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <table class="table table-hover ng-cloak" ng-hide="HideLastFiveMessage" style="background: #FFFFFF;">
                                    <thead>
                                        <tr>
                                            <th>Last Five Message</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr ng-repeat="item in ComposeSMS.GridLastFiveMessage" style="cursor: pointer;">
                                            <td ng-click="LastMessageAdd(item)" style="word-break: break-all;">
                                                {{item.Campaign}}
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn dark btn-outline" data-dismiss="modal">Ok</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>

                <div class="modal fade" id="TemplateSelection" data-backdrop="static" data-keyboard="false">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4>Templates</h4>
                            </div>
                            <div class="modal-body">
                                <table class="table table-bordered table-hover" id="TableTemplateString">
                                    <tbody>
                                        <tr ng-repeat="item in ComposeSMS.GridTemplatesMessage" style="cursor: pointer" ng-class="{'selected': $index == Selectedtr}" ng-click="TempltesAdd(item,$index)">
                                            <td>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        Select
                                                    </div>
                                                    <div class="col-md-9">
                                                        <span class="templetestring">{{item.MessageTemplate}} </span>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td ng-show="ComposeSMS.GridTemplatesMessage.length == 0">
                                                No template available.
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-sm btn-success" data-dismiss="modal" aria-hidden="true">Close</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>

                <div class="modal fade" id="DraftSelection" data-backdrop="static" data-keyboard="false">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4>Drafts</h4>
                            </div>
                            <div class="modal-body">
                                <table class="table table-bordered table-hover" id="DraftString">
                                    <tbody>
                                        <tr ng-repeat="item in ComposeSMS.GridDraftsMessage" style="cursor: pointer" ng-class="{'selected': $index == Selectedtr}" ng-click="DarftsAdd(item,$index)">
                                            <td>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        Select
                                                    </div>
                                                    <div class="col-md-9">
                                                        <span class="templetestring">{{item.Messagestring}} </span>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td ng-show="ComposeSMS.GridDraftsMessage.length == 0">
                                                No Drafts available.
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-sm btn-success" data-dismiss="modal" aria-hidden="true">Close</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>

                <div class="modal fade" id="MessagePreviews" data-backdrop="static" data-keyboard="false">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4>Message Preview</h4>
                            </div>
                            <div class="modal-body">
                                <table class="table table-striped table-bordered table-hover" style="width:100%;overflow: scroll;">
                                    <thead>
                                        <tr>
                                            <td>Country Name</td>
                                            <td>MCCMNC</td>
                                            <td>Cost Price</td>
                                            <td>Total Numbers</td>
                                            <td>Total Cost</td>
                                            <td>Gateway ID</td>
                                            <td>Error</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr ng-repeat="item in PreviewList">
                                            <td ng-class="{'TableColor': item.CountryCodeData == 'Not Found'}">{{item.CountryCodeData}}</td>
                                            <td ng-class="{'TableColor': item.CountryCodeData == 'Not Found'}">{{item.MCCMNC}}</td>
                                            <td ng-class="{'TableColor': item.CountryCodeData == 'Not Found'}">{{item.CostPrice}}</td>
                                            <td ng-class="{'TableColor': item.CountryCodeData == 'Not Found'}">{{item.TotalNumbers}}</td>
                                            <td ng-class="{'TableColor': item.CountryCodeData == 'Not Found'}">{{item.TotalCost}}</td>
                                            <td ng-class="{'TableColor': item.CountryCodeData == 'Not Found'}">{{item.RR_ID}}</td>
                                           <td ng-class="{'TableColor': item.CountryCodeData == 'Not Found'}">{{item.Error}}</td>
                                        </tr>
                                        <tr>
                                            <td colspan="7" style="text-align:right;"><b>Grand Total : {{GrandTotal}}</b></td>
                                        </tr>
                                        <tr>
                                            <td ng-show="PreviewList.length == 0">
                                                No Data available.
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-sm dark btn-outline" data-dismiss="modal">Close</button>

                                <button type="button" class="btn btn-sm btn-success btnsave "ng-show="IsShowSendData" ng-click="SaveComposeSMS('save')"><i class="fa fa-envelope"></i>&nbsp; Send</button>

                                <span id="processing" ng-show="IsSendProcessShow"><i class="fa fa-spinner fa-spin"></i></span>

                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
            </div>

        </div>
    </div>
    <!-- /.col -->
</div>



                <div class="modal fade" id="SessionformModal">
                    <div class="modal-dialog" style="max-width: 480px">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4>Session Expired</h4>
                            </div>
                            <form>
                                <div class="modal-body">

                                    <div class="form-horizontal">
                                        <div class="form-group">
                                            <div class="col-md-8">
                                                <span>Your session is expired.</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <div class="form-group text-right">
                                        <a href="/User/Login" class="btn btn-info">Ok</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="page-footer">
        <div class="page-footer-inner" style="margin-bottom:0px !important">
            © 2020 . All rights reserved.
                <span><b>Contact Us</b></span>
                            <span><i class="fa fa-envelope-o"></i> Email : support@sms24hours.com</span>
                            &nbsp;| &nbsp;<span><i class="fa fa-phone" aria-hidden="true"></i> Phone :&#x2B;91-9872363621</span>
        </div>
        <div class="scroll-to-top">
            <i class="icon-arrow-up"></i>
        </div>
    </div>
    <script>
    function submitForm(){
	document.uForm.submit();
    }
        $(document).ready(function () {

            $('#clickmewow').click(function () {
                $('#radio1003').attr('checked', 'checked');
            });
            if ($.fn.dataTable != undefined) {
                $.fn.dataTable.ext.errMode = 'none';
            }
            $(document).ajaxError(function (e, xhr) {
                debugger;
                if (xhr.status == 401) {
                    if (xhr.statusText == "/User/Login") {
                        window.location = xhr.statusText;
                    }
                    else {
                        $("#SessionformModal").modal();
                    }
                }
                if (xhr.status == 423) {
                    window.location = "/User/Login?UserLock=Account locked, Please contact Your Administrator";
                }
                if (xhr.status == 302) {
                    window.location = xhr.statusText;
                }
                else if (xhr.status == 403) {
                    alert("You have no enough permissions to request this resource.");
                }
            });
        })

        angular.module('app').config(['$httpProvider', function ($httpProvider) {
            $httpProvider.interceptors.push('LoadingInterceptor');
            $httpProvider.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
        }]);

        angular.module('app').
            service('LoadingInterceptor', ['$rootScope',
                function ($rootScope) {
                    'use strict';
                    return {
                        responseError: function (rejection) {

                            //$rootScope.loading = false;
                            if (rejection.status == 423) {
                                window.location = "/User/Login?UserLock=Account locked, Please contact Your Administrator";
                            }
                            else if (rejection.status == 401) {
                                if (rejection.statusText == "/User/Login") {
                                    window.location = rejection.statusText;
                                }
                                else {
                                    $("#SessionformModal").modal();
                                }
                            }
                            else if (rejection.status == 403) {
                                window.location = "/User/Login";
                            }
                            else if (rejection.status == 302) {

                                window.location = rejection.statusText;
                            }
                            else {
                                return rejection;
                            }
                        }
                    };
                }]);

        $(document).ready(function () {
            debugger;
            $("#CreditBalance").click(function () {
                $.ajax({
                    type: 'GET',
                    url: "/Layout/GetUserCredit",
                    success: function (data) {

                        $("#NormalBalance")[0].textContent = data.NormalBalance;
                        $("#TransactionalBalance")[0].textContent = data.TransactionalBalance;
                    }
                });
            });

            $('[data-toggle="tooltip"]').tooltip();
            $("#displaySelectTabName").html("SMS")
            $('.main-menu li').removeClass("active");
            $(".sidebarMenu_Content").children().eq(0).addClass("active in");
            $("#main-menu li").eq(0).addClass("active");
            $(".Mhor-menu li").eq(0).css({ 'border': '1px solid #1e88e5' });
            var pathname = window.location.pathname;

            $('.page-sidebar-menu li a').each(function () {
                var h = $(this).attr('href');
                if (pathname == h) {

                    $(".page-sidebar ul.page-sidebar-menu").hide();
                    $(this).parent().parent().parent().parent().show();
                    $(".page-sidebar-menu li").removeClass("active open");
                    $(this).parent().parent().parent().addClass("active open");

                    if ($(this).parent().hasClass("start-li")) {
                        $(this).parent().prev().addClass("active");
                    }
                    else {
                        $(this).parent().addClass("active");
                    }
                    //$(this).parent().addClass("active");
                    var TabClass = $(this)[0].className;
                    $(".hor-menu li").removeClass("active");
                    var Activeindex = 0;
                    $(".hor-menu li a").each(function (i, index) {
                        if (index.className == TabClass) {
                            Activeindex = i;
                            $(this).parent().addClass("active");
                            return false;
                        }
                    });
                    //For Mobile menu Active Class

                    $(".Mhor-menu li").css({ 'border': '1px solid #a79d9d' });

                    $(".Mhor-menu li").eq([Activeindex]).css({ 'border': '1px solid #3d5869' });
                    $(".Mhor-menu li").eq([Activeindex]).find('i').css({
                        'color': 'white',
                        'margin': '0 auto 6px',
                        'height': '36px',
                        'width': '37px',
                        'font-size': '20px',
                        'padding': '8px 7px',
                        'display': 'block',
                        '- moz - border - radius': '100px',
                        '-webkit - border - radius': '100px',
                        'border - radius': '20px',
                        'border': '1px solid #29b899',
                        'background': '#29b899'
                    });
                }
            });
        });
    </script>
</body>
</html>