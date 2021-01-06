
<%@page import="user.User"%>
<%User user = (User)request.getAttribute("user"); 
String message = (String)session.getAttribute("message"); 
String userName = (String)request.getAttribute("userName");
User u = (User)session.getAttribute("user");
if(userName == null){
	userName = u.getUserName();
}
%>
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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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


</head>
<body class="page-container-bg-solid page-header-fixed page-sidebar-closed-hide-logo ng-scope" ng-app="app">


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
                            <a href="#" data-toggle="pills" class="0">
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
                                <a href="#" data-toggle="pills" class="5">
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
                            <a href="Compose.jsp?userName=<%=userName%>" target="_self" class="1">
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
            <div class="page-content" style="min-height: 743px;">
                <div class="page-head">
                    <div class="page-title">

                        <h1>
                            
                        </h1>

                    </div>
                </div>
                



<div class="row">    
    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="dashboard-stat2 bordered">
            <div class="loading" style="z-index: 100; position: absolute; min-height: 100%; margin-top: 6px; left: 40%; top: 34%; display: none;">
                <i class="fa fa-spinner fa-spin fa-fw" style="font-size:50px; color:#ec9a9a;"></i>
            </div>
            <div style="height: 85px; display: none;" class="DisplaytempDiv"></div>
            <div class="display" style="">
                <div class="number">
                    <h3 class="font-green-sharp">
                        <span id="ToltalSMSSent" data-counter="counterup">16</span>
                    </h3>
                    <small>SMS Sent Today</small>
                </div>
                <div class="icon">
                    <i class="icon-envelope"></i>
                </div>
            </div>
            <div class="progress-info" style="">
                <div class="progress">
                    <span id="spnSMSSent" class="progress-bar progress-bar-success green-sharp" style="width: 100%;">

                    </span>
                </div>
                <div class="status">

                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="dashboard-stat2 bordered">
            <div class="loading" style="z-index: 100; position: absolute; min-height: 100%; margin-top: 6px; left: 40%; top: 34%; display: none;">
                <i class="fa fa-spinner fa-spin fa-fw" style="font-size:50px; color:#ec9a9a;"></i>
            </div>
            <div style="height: 85px; display: none;" class="DisplaytempDiv"></div>
            <div class="display" style="">
                <div class="number">
                    <h3 class="font-purple-soft">
                        <span data-counter="counterup" id="TodayDeliveredCount">100%</span>
                    </h3>
                    <small>Delivered Today</small>
                </div>
                <div class="icon">
                    <i class="icon-globe"></i>
                </div>
            </div>
            <div class="progress-info" style="">
                <div class="progress">
                    <span id="SpanTodayDeliverPerc" class="progress-bar progress-bar-success purple-soft" style="width: 100%;">

                    </span>
                </div>
                <div class="status">

                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="dashboard-stat2 bordered">
            <div class="loading" style="z-index: 100; position: absolute; min-height: 100%; margin-top: 6px; left: 40%; top: 34%; display: none;">
                <i class="fa fa-spinner fa-spin fa-fw" style="font-size:50px; color:#ec9a9a;"></i>
            </div>
            <div style="height: 85px; display: none;" class="DisplaytempDiv"></div>
            <div class="display" style="">
                <div class="number">
                    <h3 class="font-red-haze">
                        <span data-counter="counterup" id="YesterdaySentCount">41</span>
                    </h3>
                    <small>SMS Sent Yesterday</small>
                </div>
                <div class="icon">
                    <i class="icon-globe"></i>
                </div>
            </div>
            <div class="progress-info" style="">
                <div class="progress">
                    <span id="spnsmsSentYesterday" class="progress-bar progress-bar-success red-haze" style="width: 100%;">

                    </span>
                </div>
                <div class="status">

                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="dashboard-stat2 bordered">
            <div class="loading" style="z-index: 100; position: absolute; min-height: 100%; margin-top: 6px; left: 40%; top: 34%; display: none;">
                <i class="fa fa-spinner fa-spin fa-fw" style="font-size:50px; color:#ec9a9a;"></i>
            </div>
            <div style="height: 85px; display: none;" class="DisplaytempDiv"></div>
            <div class="display" style="">
                <div class="number">
                    <h3 class="font-blue-sharp">
                        <span data-counter="counterup" id="YesterdayDeliveredCount">100%</span>
                    </h3>
                    <small>Delivered Yesterday</small>
                </div>
                <div class="icon">
                    <i class="icon-globe"></i>
                </div>
            </div>
            <div class="progress-info" style="">
                <div class="progress">
                    <span id="SpanYesterdayDeliverPerc" class="progress-bar progress-bar-success blue-sharp" style="width: 100%;">

                    </span>
                </div>
                <div class="status">

                </div>
            </div>
        </div>
    </div>
</div>

<div class="portlet light bordered">
    <div class="portlet-title ">
        <div class="caption">
            <span class="caption-subject font-blue bold ">Traffic summary of last three days</span>
        </div>
    </div>
    <div class="portlet-title tabbable-line">
        <ul class="nav nav-tabs hidden-xs" style="float: left;display: block">
            <li class="active"><a href="#OverAll" data-toggle="tab"><b>Total Sent</b>&nbsp;<span id="CountOverAll">(16)</span></a></li>
            <li style="margin-top: 11px;color: red;">|</li>
            <li><a href="#Deliverd" data-toggle="tab"><b>Delivered</b>&nbsp;<span id="CountDeliverd">16</span><span id="DeliverdPercantage">(100%)</span></a></li>
            <li style="margin-top: 11px;color: red;">|</li>
            <li><a href="#Submitted" data-toggle="tab"><b>Submitted</b>&nbsp;<span id="CountSubmitted">0</span><span id="SubmittedPercantage">(0%)</span></a></li>
            <li style="margin-top: 11px;color: red;">|</li>
            <li><a href="#Rejected" data-toggle="tab"><b>Rejected</b>&nbsp;<span id="CountRejected">0</span><span id="RejectedPercantage">(0%)</span></a></li>
            <li style="margin-top: 11px;color: red;">|</li>
            <li><a href="#Undeliverd" data-toggle="tab"><b>Undelivered</b>&nbsp;<span id="CountUnDelivered">0</span><span id="UndeliverdPercantage">(0%)</span></a></li>
            <li style="margin-top: 11px;color: red;">|</li>
            <li><a href="#DND" data-toggle="tab"><b>DND</b>&nbsp;<span id="CountDND">0</span><span id="DNDPercantage">(0%)</span></a></li>
            <li style="margin-top: 11px;color: red;">|</li>
            <li><a href="#Others" data-toggle="tab"><b>Other</b>&nbsp;<span id="CountUnOther">0</span><span id="OtherPercantage">(0%)</span></a></li>
        </ul>
        <div class="visible-xs" style="float: left;display: inline-block">
            <div class="btn-group btn-group-devided" data-toggle="buttons">
                <a href="#OverAll" class="btn green btn-outline btn-circle btn-sm ButtonGroup active" data-toggle="tab"><b>Total Sent</b>&nbsp;<span id="CountOverAll"></span></a>
                <a class="btn green btn-outline btn-circle btn-sm ButtonGroup" href="#Deliverd" data-toggle="tab"><b>Delivered</b>&nbsp;<span id="CountDeliverd"></span><span id="DeliverdPercantage"></span></a>
                <a class="btn green btn-outline btn-circle btn-sm ButtonGroup" href="#Submitted" data-toggle="tab"><b>Submitted</b>&nbsp;<span id="CountSubmitted"></span><span id="SubmittedPercantage"></span></a>
                <br><br>
                <a class="btn green btn-outline btn-circle btn-sm ButtonGroup" href="#DND" data-toggle="tab"><b>DND</b>&nbsp;<span id="CountDND"></span><span id="DNDPercantage"></span></a>
                <a class="btn green btn-outline btn-circle btn-sm ButtonGroup" href="#Rejected" data-toggle="tab"><b>Rejected</b>&nbsp;<span id="CountRejected"></span><span id="RejectedPercantage"></span></a>
                <a class="btn green btn-outline btn-circle btn-sm ButtonGroup" href="#Undeliverd" data-toggle="tab"><b>Undelivered</b>&nbsp;<span id="CountUnDelivered"></span><span id="UndeliverdPercantage"></span></a>
                <a class="btn green btn-outline btn-circle btn-sm ButtonGroup" href="#Others" data-toggle="tab"><b>Other</b>&nbsp;<span id="CountUnOther"></span><span id="OtherPercantage"></span></a>
                <br><br>
            </div>
        </div>
    </div>
    <div class="panel-body">
        <div class="tab-content">
            <div class="tab-pane drawChart fade in active" id="OverAll">
                <div id="loadingCircle" class="loading col-md-12" style="text-align: center; display: none;">
                    <i class="fa fa-spinner fa-spin fa-fw" style="font-size:50px; color:#ec9a9a;"></i>
                </div>
                <div id="OverAll_chart_div" class="hidden-xs" style="width: 100%; height: 350px"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 1012px; height: 350px;"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;" aria-label="A chart."><svg width="1012" height="350" aria-label="A chart." style="overflow: hidden;"><defs id="defs"><clipPath id="_ABSTRACT_RENDERER_ID_0"><rect x="100" y="50" width="708" height="216"></rect></clipPath></defs><rect x="0" y="0" width="1012" height="350" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><text text-anchor="start" x="100" y="29.9" font-family="Arial" font-size="14" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">Sent Message Details</text><rect x="100" y="18" width="708" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><rect x="822" y="50" width="176" height="129" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><rect x="822" y="50" width="176" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="855" y="61.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">Delivered</text></g><rect x="822" y="50" width="28" height="14" stroke="none" stroke-width="0" fill="#23b7e5"></rect></g><g><rect x="822" y="73" width="176" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="855" y="84.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">Submitted</text></g><rect x="822" y="73" width="28" height="14" stroke="none" stroke-width="0" fill="#5d9cec"></rect></g><g><rect x="822" y="96" width="176" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="855" y="107.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">Rejected</text></g><rect x="822" y="96" width="28" height="14" stroke="none" stroke-width="0" fill="#fb2f2f"></rect></g><g><rect x="822" y="119" width="176" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="855" y="130.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">Undelivered</text></g><rect x="822" y="119" width="28" height="14" stroke="none" stroke-width="0" fill="#8877a9"></rect></g><g><rect x="822" y="142" width="176" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="855" y="153.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">DND</text></g><rect x="822" y="142" width="28" height="14" stroke="none" stroke-width="0" fill="#f7d26f"></rect></g><g><rect x="822" y="165" width="176" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="855" y="176.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">Others</text></g><rect x="822" y="165" width="28" height="14" stroke="none" stroke-width="0" fill="#999999"></rect></g></g><g><rect x="100" y="50" width="708" height="216" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(http://spanel.sms24hours.com/Dashboard/Index#_ABSTRACT_RENDERER_ID_0)"><g><rect x="100" y="265" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="211" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="158" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="104" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="50" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect></g><g><rect x="146" y="201" width="23" height="64" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#23b7e5"></rect><rect x="381" y="179" width="24" height="86" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#23b7e5"></rect><rect x="617" y="224" width="23" height="41" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#23b7e5"></rect><rect x="170" y="265" width="23" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#5d9cec"></rect><rect x="406" y="265" width="23" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#5d9cec"></rect><rect x="641" y="265" width="24" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#5d9cec"></rect><rect x="194" y="265" width="24" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#fb2f2f"></rect><rect x="430" y="265" width="24" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#fb2f2f"></rect><rect x="666" y="265" width="23" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#fb2f2f"></rect><rect x="219" y="265" width="23" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#8877a9"></rect><rect x="455" y="265" width="23" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#8877a9"></rect><rect x="690" y="265" width="24" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#8877a9"></rect><rect x="243" y="265" width="24" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#f7d26f"></rect><rect x="479" y="265" width="23" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#f7d26f"></rect><rect x="715" y="265" width="23" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#f7d26f"></rect><rect x="268" y="265" width="23" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#999999"></rect><rect x="503" y="265" width="24" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#999999"></rect><rect x="739" y="70" width="23" height="195" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#999999"></rect></g></g><g></g><g><g><text text-anchor="middle" x="218.33333333333331" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">08/01/2020</text></g><g><text text-anchor="middle" x="454" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">07/01/2020</text></g><g><text text-anchor="middle" x="689.6666666666666" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">06/01/2020</text></g><g><text text-anchor="end" x="86" y="270.4" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">1</text></g><g><text text-anchor="end" x="86" y="216.65" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">10</text></g><g><text text-anchor="end" x="86" y="162.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">100</text></g><g><text text-anchor="end" x="86" y="109.15" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">1,000</text></g><g><text text-anchor="end" x="86" y="55.4" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">10,000</text></g></g></g><g><g><text text-anchor="middle" x="454" y="324.4" font-family="Arial" font-size="14" font-style="italic" stroke="none" stroke-width="0" fill="#008000">Message Status</text><rect x="100" y="312.5" width="708" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><text text-anchor="middle" x="26.4" y="158" font-family="Arial" font-size="14" font-style="italic" transform="rotate(-90 26.4 158)" stroke="none" stroke-width="0" fill="#222222">Message Count</text><path d="M14.499999999999995,266L14.500000000000007,50L28.500000000000007,50L28.499999999999993,266Z" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></path></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>Message Status</th><th>Delivered</th><th>Submitted</th><th>Rejected</th><th>Undelivered</th><th>DND</th><th>Others</th></tr></thead><tbody><tr><td>08/01/2020</td><td>16</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr><td>07/01/2020</td><td>41</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr><td>06/01/2020</td><td>6</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4,456</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 360px; left: 1022px; white-space: nowrap; font-family: Arial; font-size: 14px;">Others</div><div></div></div></div>
                <div id="OverAll_chart_div_xs" class="visible-xs" style="width: 100%; height: 350px"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 400px; height: 200px;"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;" aria-label="A chart."><svg width="400" height="200" aria-label="A chart." style="overflow: hidden;"><defs id="defs"><clipPath id="_ABSTRACT_RENDERER_ID_1"><rect x="70" y="50" width="280" height="124"></rect></clipPath></defs><rect x="0" y="0" width="400" height="200" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><text text-anchor="start" x="70" y="30.35" font-family="Arial" font-size="11" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">Sent Message Details</text><rect x="70" y="21" width="280" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><rect x="361" y="50" width="28" height="101" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><rect x="361" y="50" width="28" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="387" y="59.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">Delivered</text></g><rect x="361" y="50" width="22" height="11" stroke="none" stroke-width="0" fill="#23b7e5"></rect></g><g><rect x="361" y="68" width="28" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="387" y="77.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">Submitted</text></g><rect x="361" y="68" width="22" height="11" stroke="none" stroke-width="0" fill="#5d9cec"></rect></g><g><rect x="361" y="86" width="28" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="387" y="95.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">Rejected</text></g><rect x="361" y="86" width="22" height="11" stroke="none" stroke-width="0" fill="#fb2f2f"></rect></g><g><rect x="361" y="104" width="28" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="387" y="113.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">Undelivered</text></g><rect x="361" y="104" width="22" height="11" stroke="none" stroke-width="0" fill="#8877a9"></rect></g><g><rect x="361" y="122" width="28" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="387" y="131.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">DND</text></g><rect x="361" y="122" width="22" height="11" stroke="none" stroke-width="0" fill="#f7d26f"></rect></g><g><rect x="361" y="140" width="28" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="387" y="149.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">Others</text></g><rect x="361" y="140" width="22" height="11" stroke="none" stroke-width="0" fill="#999999"></rect></g></g><g><rect x="70" y="50" width="280" height="124" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(http://spanel.sms24hours.com/Dashboard/Index#_ABSTRACT_RENDERER_ID_1)"><g><rect x="70" y="173" width="280" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="70" y="142" width="280" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="70" y="112" width="280" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="70" y="81" width="280" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="70" y="50" width="280" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect></g><g><rect x="88" y="137" width="9" height="36" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#23b7e5"></rect><rect x="181" y="124" width="9" height="49" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#23b7e5"></rect><rect x="274" y="150" width="9" height="23" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#23b7e5"></rect><rect x="98" y="173" width="9" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#5d9cec"></rect><rect x="191" y="173" width="9" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#5d9cec"></rect><rect x="284" y="173" width="9" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#5d9cec"></rect><rect x="108" y="173" width="8" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#fb2f2f"></rect><rect x="201" y="173" width="8" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#fb2f2f"></rect><rect x="294" y="173" width="8" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#fb2f2f"></rect><rect x="117" y="173" width="9" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#8877a9"></rect><rect x="210" y="173" width="9" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#8877a9"></rect><rect x="303" y="173" width="9" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#8877a9"></rect><rect x="127" y="173" width="9" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#f7d26f"></rect><rect x="220" y="173" width="9" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#f7d26f"></rect><rect x="313" y="173" width="9" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#f7d26f"></rect><rect x="137" y="173" width="9" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#999999"></rect><rect x="230" y="173" width="9" height="0.5" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#999999"></rect><rect x="323" y="62" width="9" height="111" stroke="none" stroke-width="0" fill-opacity="0.8" fill="#999999"></rect></g></g><g></g><g><g><text text-anchor="end" x="59" y="177.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">1</text></g><g><text text-anchor="end" x="59" y="146.6" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">10</text></g><g><text text-anchor="end" x="59" y="115.85" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">100</text></g><g><text text-anchor="end" x="59" y="85.1" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">1,000</text></g><g><text text-anchor="end" x="59" y="54.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">10,000</text></g></g></g><g><g><text text-anchor="middle" x="210" y="190.85" font-family="Arial" font-size="11" font-style="italic" stroke="none" stroke-width="0" fill="#008000">Message Status</text><rect x="70" y="181.5" width="280" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><text text-anchor="middle" x="33.35" y="112" font-family="Arial" font-size="11" font-style="italic" transform="rotate(-90 33.35 112)" stroke="none" stroke-width="0" fill="#222222">Message Count</text><path d="M23.999999999999996,174L24.000000000000004,50L35.00000000000001,50L35,174Z" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></path></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>Message Status</th><th>Delivered</th><th>Submitted</th><th>Rejected</th><th>Undelivered</th><th>DND</th><th>Others</th></tr></thead><tbody><tr><td>08/01/2020</td><td>16</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr><td>07/01/2020</td><td>41</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr><td>06/01/2020</td><td>6</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4,456</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 210px; left: 410px; white-space: nowrap; font-family: Arial; font-size: 11px;">Others</div><div></div></div></div>
            </div>
            <div class="tab-pane drawChart fade" id="Deliverd">
                <div id="Deliverd_chart_div" style="width: 100%; height: 350px"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 1012px; height: 350px;"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;" aria-label="A chart."><svg width="1012" height="350" aria-label="A chart." style="overflow: hidden;"><defs id="defs"><clipPath id="_ABSTRACT_RENDERER_ID_2"><rect x="100" y="50" width="708" height="216"></rect></clipPath></defs><rect x="0" y="0" width="1012" height="350" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><text text-anchor="start" x="100" y="29.9" font-family="Arial" font-size="14" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">Message Delivered</text><rect x="100" y="18" width="708" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><rect x="822" y="50" width="176" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><rect x="822" y="50" width="176" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="855" y="61.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">Delivered</text></g><path d="M822,57L850,57" stroke="#0088cc" stroke-width="2" fill-opacity="1" fill="none"></path><circle cx="836" cy="57" r="5" stroke="none" stroke-width="0" fill="#0088cc"></circle></g></g><g><rect x="100" y="50" width="708" height="216" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(http://spanel.sms24hours.com/Dashboard/Index#_ABSTRACT_RENDERER_ID_2)"><g><rect x="100" y="265" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="211" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="158" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="104" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="50" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect></g><g><rect x="100" y="265" width="708" height="1" stroke="none" stroke-width="0" fill="#333333"></rect></g><g><path d="M218.33333333333331,196.7L454,89.20000000000002L689.6666666666666,239.7" stroke="#0088cc" stroke-width="2" fill-opacity="1" fill="none"></path></g></g><g><circle cx="218.33333333333331" cy="196.7" r="5" stroke="none" stroke-width="0" fill="#0088cc"></circle><circle cx="454" cy="89.20000000000002" r="5" stroke="none" stroke-width="0" fill="#0088cc"></circle><circle cx="689.6666666666666" cy="239.7" r="5" stroke="none" stroke-width="0" fill="#0088cc"></circle></g><g><g><text text-anchor="middle" x="218.33333333333331" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">08/01/2020</text></g><g><text text-anchor="middle" x="454" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">07/01/2020</text></g><g><text text-anchor="middle" x="689.6666666666666" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">06/01/2020</text></g><g><text text-anchor="end" x="86" y="270.4" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">0.0</text></g><g><text text-anchor="end" x="86" y="216.65" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">12.5</text></g><g><text text-anchor="end" x="86" y="162.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">25.0</text></g><g><text text-anchor="end" x="86" y="109.15" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">37.5</text></g><g><text text-anchor="end" x="86" y="55.4" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">50.0</text></g></g></g><g><g><text text-anchor="middle" x="454" y="324.4" font-family="Arial" font-size="14" font-style="italic" stroke="none" stroke-width="0" fill="#008000">Date</text><rect x="100" y="312.5" width="708" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><text text-anchor="middle" x="34.4" y="158" font-family="Arial" font-size="14" font-style="italic" transform="rotate(-90 34.4 158)" stroke="none" stroke-width="0" fill="#222222">Message Count</text><path d="M22.49999999999999,266L22.500000000000004,50L36.50000000000001,50L36.49999999999999,266Z" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></path></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>Message Status</th><th>Delivered</th></tr></thead><tbody><tr><td>08/01/2020</td><td>16</td></tr><tr><td>07/01/2020</td><td>41</td></tr><tr><td>06/01/2020</td><td>6</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 360px; left: 1022px; white-space: nowrap; font-family: Arial; font-size: 14px;">Delivered</div><div></div></div></div>
            </div>
            <div class="tab-pane drawChart fade" id="Submitted">
                <div id="Submitted_chart_div" style="width: 100%; height: 350px"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 1012px; height: 350px;"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;" aria-label="A chart."><svg width="1012" height="350" aria-label="A chart." style="overflow: hidden;"><defs id="defs"><clipPath id="_ABSTRACT_RENDERER_ID_3"><rect x="100" y="50" width="708" height="216"></rect></clipPath></defs><rect x="0" y="0" width="1012" height="350" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><text text-anchor="start" x="100" y="29.9" font-family="Arial" font-size="14" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">Message Submitted</text><rect x="100" y="18" width="708" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><rect x="822" y="50" width="176" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><rect x="822" y="50" width="176" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="855" y="61.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">Submitted</text></g><path d="M822,57L850,57" stroke="#2ab4c0" stroke-width="2" fill-opacity="1" fill="none"></path><circle cx="836" cy="57" r="5" stroke="none" stroke-width="0" fill="#2ab4c0"></circle></g></g><g><rect x="100" y="50" width="708" height="216" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(http://spanel.sms24hours.com/Dashboard/Index#_ABSTRACT_RENDERER_ID_3)"><g><rect x="100" y="265" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="211" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="158" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="104" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="50" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect></g><g><rect x="100" y="158" width="708" height="1" stroke="none" stroke-width="0" fill="#333333"></rect></g><g><path d="M218.33333333333331,158L454,158L689.6666666666666,158" stroke="#2ab4c0" stroke-width="2" fill-opacity="1" fill="none"></path></g></g><g><circle cx="218.33333333333331" cy="158" r="5" stroke="none" stroke-width="0" fill="#2ab4c0"></circle><circle cx="454" cy="158" r="5" stroke="none" stroke-width="0" fill="#2ab4c0"></circle><circle cx="689.6666666666666" cy="158" r="5" stroke="none" stroke-width="0" fill="#2ab4c0"></circle></g><g><g><text text-anchor="middle" x="218.33333333333331" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">08/01/2020</text></g><g><text text-anchor="middle" x="454" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">07/01/2020</text></g><g><text text-anchor="middle" x="689.6666666666666" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">06/01/2020</text></g><g><text text-anchor="end" x="86" y="270.4" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">-1.0</text></g><g><text text-anchor="end" x="86" y="216.65" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">-0.5</text></g><g><text text-anchor="end" x="86" y="162.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">0.0</text></g><g><text text-anchor="end" x="86" y="109.15" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">0.5</text></g><g><text text-anchor="end" x="86" y="55.4" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">1.0</text></g></g></g><g><g><text text-anchor="middle" x="454" y="324.4" font-family="Arial" font-size="14" font-style="italic" stroke="none" stroke-width="0" fill="#008000">Date</text><rect x="100" y="312.5" width="708" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><text text-anchor="middle" x="35.9" y="158" font-family="Arial" font-size="14" font-style="italic" transform="rotate(-90 35.9 158)" stroke="none" stroke-width="0" fill="#222222">Message Count</text><path d="M23.99999999999999,266L24.000000000000004,50L38.00000000000001,50L37.99999999999999,266Z" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></path></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>Message Status</th><th>Submitted</th></tr></thead><tbody><tr><td>08/01/2020</td><td>0</td></tr><tr><td>07/01/2020</td><td>0</td></tr><tr><td>06/01/2020</td><td>0</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 360px; left: 1022px; white-space: nowrap; font-family: Arial; font-size: 14px;">Submitted</div><div></div></div></div>
            </div>
            <div class="tab-pane drawChart fade" id="Rejected">
                <div id="Rejected_chart_div" style="width: 100%; height: 350px"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 1012px; height: 350px;"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;" aria-label="A chart."><svg width="1012" height="350" aria-label="A chart." style="overflow: hidden;"><defs id="defs"><clipPath id="_ABSTRACT_RENDERER_ID_4"><rect x="100" y="50" width="708" height="216"></rect></clipPath></defs><rect x="0" y="0" width="1012" height="350" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><text text-anchor="start" x="100" y="29.9" font-family="Arial" font-size="14" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">Message Rejected</text><rect x="100" y="18" width="708" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><rect x="822" y="50" width="176" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><rect x="822" y="50" width="176" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="855" y="61.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">Rejected</text></g><path d="M822,57L850,57" stroke="#fb2f2f" stroke-width="2" fill-opacity="1" fill="none"></path><circle cx="836" cy="57" r="5" stroke="none" stroke-width="0" fill="#fb2f2f"></circle></g></g><g><rect x="100" y="50" width="708" height="216" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(http://spanel.sms24hours.com/Dashboard/Index#_ABSTRACT_RENDERER_ID_4)"><g><rect x="100" y="265" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="211" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="158" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="104" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="50" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect></g><g><rect x="100" y="158" width="708" height="1" stroke="none" stroke-width="0" fill="#333333"></rect></g><g><path d="M218.33333333333331,158L454,158L689.6666666666666,158" stroke="#fb2f2f" stroke-width="2" fill-opacity="1" fill="none"></path></g></g><g><circle cx="218.33333333333331" cy="158" r="5" stroke="none" stroke-width="0" fill="#fb2f2f"></circle><circle cx="454" cy="158" r="5" stroke="none" stroke-width="0" fill="#fb2f2f"></circle><circle cx="689.6666666666666" cy="158" r="5" stroke="none" stroke-width="0" fill="#fb2f2f"></circle></g><g><g><text text-anchor="middle" x="218.33333333333331" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">08/01/2020</text></g><g><text text-anchor="middle" x="454" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">07/01/2020</text></g><g><text text-anchor="middle" x="689.6666666666666" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">06/01/2020</text></g><g><text text-anchor="end" x="86" y="270.4" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">-1.0</text></g><g><text text-anchor="end" x="86" y="216.65" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">-0.5</text></g><g><text text-anchor="end" x="86" y="162.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">0.0</text></g><g><text text-anchor="end" x="86" y="109.15" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">0.5</text></g><g><text text-anchor="end" x="86" y="55.4" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">1.0</text></g></g></g><g><g><text text-anchor="middle" x="454" y="324.4" font-family="Arial" font-size="14" font-style="italic" stroke="none" stroke-width="0" fill="#008000">Date</text><rect x="100" y="312.5" width="708" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><text text-anchor="middle" x="35.9" y="158" font-family="Arial" font-size="14" font-style="italic" transform="rotate(-90 35.9 158)" stroke="none" stroke-width="0" fill="#222222">Message Count</text><path d="M23.99999999999999,266L24.000000000000004,50L38.00000000000001,50L37.99999999999999,266Z" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></path></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>Message Status</th><th>Rejected</th></tr></thead><tbody><tr><td>08/01/2020</td><td>0</td></tr><tr><td>07/01/2020</td><td>0</td></tr><tr><td>06/01/2020</td><td>0</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 360px; left: 1022px; white-space: nowrap; font-family: Arial; font-size: 14px;">Rejected</div><div></div></div></div>
            </div>
            <div class="tab-pane drawChart fade" id="Undeliverd">
                <div id="Undeliverd_chart_div" style="width: 100%; height: 350px"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 1012px; height: 350px;"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;" aria-label="A chart."><svg width="1012" height="350" aria-label="A chart." style="overflow: hidden;"><defs id="defs"><clipPath id="_ABSTRACT_RENDERER_ID_5"><rect x="100" y="50" width="698" height="216"></rect></clipPath></defs><rect x="0" y="0" width="1012" height="350" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><text text-anchor="start" x="100" y="29.9" font-family="Arial" font-size="14" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">Message UnDelivered</text><rect x="100" y="18" width="698" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><rect x="812" y="50" width="186" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><rect x="812" y="50" width="186" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="845" y="61.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">UnDelivered</text></g><path d="M812,57L840,57" stroke="#8877a9" stroke-width="2" fill-opacity="1" fill="none"></path><circle cx="826" cy="57" r="5" stroke="none" stroke-width="0" fill="#8877a9"></circle></g></g><g><rect x="100" y="50" width="698" height="216" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(http://spanel.sms24hours.com/Dashboard/Index#_ABSTRACT_RENDERER_ID_5)"><g><rect x="100" y="265" width="698" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="211" width="698" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="158" width="698" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="104" width="698" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="50" width="698" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect></g><g><rect x="100" y="158" width="698" height="1" stroke="none" stroke-width="0" fill="#333333"></rect></g><g><path d="M216.66666666666669,158L449,158L681.3333333333334,158" stroke="#8877a9" stroke-width="2" fill-opacity="1" fill="none"></path></g></g><g><circle cx="216.66666666666669" cy="158" r="5" stroke="none" stroke-width="0" fill="#8877a9"></circle><circle cx="449" cy="158" r="5" stroke="none" stroke-width="0" fill="#8877a9"></circle><circle cx="681.3333333333334" cy="158" r="5" stroke="none" stroke-width="0" fill="#8877a9"></circle></g><g><g><text text-anchor="middle" x="216.66666666666669" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">08/01/2020</text></g><g><text text-anchor="middle" x="449" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">07/01/2020</text></g><g><text text-anchor="middle" x="681.3333333333334" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">06/01/2020</text></g><g><text text-anchor="end" x="86" y="270.4" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">-1.0</text></g><g><text text-anchor="end" x="86" y="216.65" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">-0.5</text></g><g><text text-anchor="end" x="86" y="162.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">0.0</text></g><g><text text-anchor="end" x="86" y="109.15" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">0.5</text></g><g><text text-anchor="end" x="86" y="55.4" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">1.0</text></g></g></g><g><g><text text-anchor="middle" x="449" y="324.4" font-family="Arial" font-size="14" font-style="italic" stroke="none" stroke-width="0" fill="#008000">Date</text><rect x="100" y="312.5" width="698" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><text text-anchor="middle" x="35.9" y="158" font-family="Arial" font-size="14" font-style="italic" transform="rotate(-90 35.9 158)" stroke="none" stroke-width="0" fill="#222222">Message Count</text><path d="M23.99999999999999,266L24.000000000000004,50L38.00000000000001,50L37.99999999999999,266Z" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></path></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>Message Status</th><th>UnDelivered</th></tr></thead><tbody><tr><td>08/01/2020</td><td>0</td></tr><tr><td>07/01/2020</td><td>0</td></tr><tr><td>06/01/2020</td><td>0</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 360px; left: 1022px; white-space: nowrap; font-family: Arial; font-size: 14px;">UnDelivered</div><div></div></div></div>
            </div>
            <div class="tab-pane drawChart fade" id="DND">
                <div id="DND_chart_div" style="width: 100%; height: 350px"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 1012px; height: 350px;"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;" aria-label="A chart."><svg width="1012" height="350" aria-label="A chart." style="overflow: hidden;"><defs id="defs"><clipPath id="_ABSTRACT_RENDERER_ID_6"><rect x="100" y="50" width="708" height="216"></rect></clipPath></defs><rect x="0" y="0" width="1012" height="350" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><text text-anchor="start" x="100" y="29.9" font-family="Arial" font-size="14" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">Message DND</text><rect x="100" y="18" width="708" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><rect x="822" y="50" width="176" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><rect x="822" y="50" width="176" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="855" y="61.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">DND</text></g><path d="M822,57L850,57" stroke="#f7d26f" stroke-width="2" fill-opacity="1" fill="none"></path><circle cx="836" cy="57" r="5" stroke="none" stroke-width="0" fill="#f7d26f"></circle></g></g><g><rect x="100" y="50" width="708" height="216" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(http://spanel.sms24hours.com/Dashboard/Index#_ABSTRACT_RENDERER_ID_6)"><g><rect x="100" y="265" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="211" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="158" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="104" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="50" width="708" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect></g><g><rect x="100" y="158" width="708" height="1" stroke="none" stroke-width="0" fill="#333333"></rect></g><g><path d="M218.33333333333331,158L454,158L689.6666666666666,158" stroke="#f7d26f" stroke-width="2" fill-opacity="1" fill="none"></path></g></g><g><circle cx="218.33333333333331" cy="158" r="5" stroke="none" stroke-width="0" fill="#f7d26f"></circle><circle cx="454" cy="158" r="5" stroke="none" stroke-width="0" fill="#f7d26f"></circle><circle cx="689.6666666666666" cy="158" r="5" stroke="none" stroke-width="0" fill="#f7d26f"></circle></g><g><g><text text-anchor="middle" x="218.33333333333331" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">08/01/2020</text></g><g><text text-anchor="middle" x="454" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">07/01/2020</text></g><g><text text-anchor="middle" x="689.6666666666666" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">06/01/2020</text></g><g><text text-anchor="end" x="86" y="270.4" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">-1.0</text></g><g><text text-anchor="end" x="86" y="216.65" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">-0.5</text></g><g><text text-anchor="end" x="86" y="162.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">0.0</text></g><g><text text-anchor="end" x="86" y="109.15" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">0.5</text></g><g><text text-anchor="end" x="86" y="55.4" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">1.0</text></g></g></g><g><g><text text-anchor="middle" x="454" y="324.4" font-family="Arial" font-size="14" font-style="italic" stroke="none" stroke-width="0" fill="#008000">Date</text><rect x="100" y="312.5" width="708" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><text text-anchor="middle" x="35.9" y="158" font-family="Arial" font-size="14" font-style="italic" transform="rotate(-90 35.9 158)" stroke="none" stroke-width="0" fill="#222222">Message Count</text><path d="M23.99999999999999,266L24.000000000000004,50L38.00000000000001,50L37.99999999999999,266Z" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></path></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>Message Status</th><th>DND</th></tr></thead><tbody><tr><td>08/01/2020</td><td>0</td></tr><tr><td>07/01/2020</td><td>0</td></tr><tr><td>06/01/2020</td><td>0</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 360px; left: 1022px; white-space: nowrap; font-family: Arial; font-size: 14px;">DND</div><div></div></div></div>
            </div>
            <div class="tab-pane drawChart fade" id="Others">
                <div id="Other_chart_div" style="width: 100%; height: 350px"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 1012px; height: 350px;"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;" aria-label="A chart."><svg width="1012" height="350" aria-label="A chart." style="overflow: hidden;"><defs id="defs"><clipPath id="_ABSTRACT_RENDERER_ID_7"><rect x="100" y="50" width="698" height="216"></rect></clipPath></defs><rect x="0" y="0" width="1012" height="350" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><text text-anchor="start" x="100" y="29.9" font-family="Arial" font-size="14" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">Message Other</text><rect x="100" y="18" width="698" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><rect x="812" y="50" width="186" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><rect x="812" y="50" width="186" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="start" x="845" y="61.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">Other</text></g><path d="M812,57L840,57" stroke="#f7d26f" stroke-width="2" fill-opacity="1" fill="none"></path><circle cx="826" cy="57" r="5" stroke="none" stroke-width="0" fill="#f7d26f"></circle></g></g><g><rect x="100" y="50" width="698" height="216" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(http://spanel.sms24hours.com/Dashboard/Index#_ABSTRACT_RENDERER_ID_7)"><g><rect x="100" y="265" width="698" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="211" width="698" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="158" width="698" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="104" width="698" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="100" y="50" width="698" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect></g><g><rect x="100" y="265" width="698" height="1" stroke="none" stroke-width="0" fill="#333333"></rect></g><g><path d="M216.66666666666669,265.5L449,265.5L681.3333333333334,73.89200000000002" stroke="#f7d26f" stroke-width="2" fill-opacity="1" fill="none"></path></g></g><g><circle cx="216.66666666666669" cy="265.5" r="5" stroke="none" stroke-width="0" fill="#f7d26f"></circle><circle cx="449" cy="265.5" r="5" stroke="none" stroke-width="0" fill="#f7d26f"></circle><circle cx="681.3333333333334" cy="73.89200000000002" r="5" stroke="none" stroke-width="0" fill="#f7d26f"></circle></g><g><g><text text-anchor="middle" x="216.66666666666669" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">08/01/2020</text></g><g><text text-anchor="middle" x="449" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">07/01/2020</text></g><g><text text-anchor="middle" x="681.3333333333334" y="286.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#222222">06/01/2020</text></g><g><text text-anchor="end" x="86" y="270.4" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">0</text></g><g><text text-anchor="end" x="86" y="216.65" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">1,250</text></g><g><text text-anchor="end" x="86" y="162.9" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">2,500</text></g><g><text text-anchor="end" x="86" y="109.15" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">3,750</text></g><g><text text-anchor="end" x="86" y="55.40000000000003" font-family="Arial" font-size="14" stroke="none" stroke-width="0" fill="#444444">5,000</text></g></g></g><g><g><text text-anchor="middle" x="449" y="324.4" font-family="Arial" font-size="14" font-style="italic" stroke="none" stroke-width="0" fill="#008000">Date</text><rect x="100" y="312.5" width="698" height="14" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><text text-anchor="middle" x="30.4" y="158" font-family="Arial" font-size="14" font-style="italic" transform="rotate(-90 30.4 158)" stroke="none" stroke-width="0" fill="#222222">Message Count</text><path d="M18.49999999999999,266L18.500000000000004,50L32.50000000000001,50L32.49999999999999,266Z" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></path></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>Message Status</th><th>Other</th></tr></thead><tbody><tr><td>08/01/2020</td><td>0</td></tr><tr><td>07/01/2020</td><td>0</td></tr><tr><td>06/01/2020</td><td>4,456</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 360px; left: 1022px; white-space: nowrap; font-family: Arial; font-size: 14px;">Other</div><div></div></div></div>
            </div>
        </div>
        <!-- /tab-content -->
    </div>
</div>



                <div class="modal fade" id="SessionformModal">
                    <div class="modal-dialog" style="max-width: 480px">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">Ã—</button>
                                <h4>Session Expired</h4>
                            </div>
                            <form class="ng-pristine ng-valid">
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
            Â© 2020 . All rights reserved.
                <span><b>Contact Us</b></span>
                            <span><i class="fa fa-envelope-o"></i> Email : support@sms24hours.com</span>
                            &nbsp;| &nbsp;<span><i class="fa fa-phone" aria-hidden="true"></i> Phone :+91-9872363621</span>
        </div>
        <div class="scroll-to-top">
            <i class="icon-arrow-up"></i>
        </div>
    </div>
    <script>
		    <%if(message!=null){%>
			alert("<%=message%>");
		<% session.removeAttribute("message");}%>
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