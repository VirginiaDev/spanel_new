<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8" />
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
    <title>ViewUserTreeList</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="Preview page of Metronic Admin Theme #4 for statistics, charts, recent events and reports" name="description" />
    <meta content="" name="author" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/
font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" 
crossorigin="anonymous">
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
    <link href="assets/css/CustomTheme.css" rel="stylesheet" />
    <link href="assets/css/light.min.css" rel="stylesheet" />
    <!--<link href="/css/AssistanceSystem.css" rel="stylesheet" />-->
	<link href="assets/css/angularcu.css" rel="stylesheet" />
    <link href="/css/AssistanceSystem.css" rel="stylesheet" />
 <style>
        [ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak {
            display: none !important;
        }

        .TopMenu > li {
            margin-left: 9px;
            border: 1px solid #a79d9d;
            padding: 10px;
            text-decoration: none;
        }
    </style>
</head>
<body class="page-container-bg-solid page-header-fixed page-sidebar-closed-hide-logo" ng-app="app">
 <div class="page-header navbar navbar-fixed-top">

<style>
    #imgCompanyLogo {
        height: 43px !important;
    }

    .defaultAlert {
        float: left;
        /* margin-left: 10px; */
        white-space: normal;
    }

    .DefaultLogo {
        width: 75%;
    }
</style>

<script type="text/javascript">
    $(document).ready(function () {
       
        var img = $("#ImageSpan > img");
        if ($("#ImageSpan > img").length > 0) {
            if (img[0].alt != "") {
                $("#ImageTextSpan").html(img[0].alt);
                $("#ImageSpan").hide();
                $("#ImageTextSpan").css('display', 'block')
            }
            else {
                $("#ImageSpan").show();
                $("#ImageTextSpan").hide();
            }
        }
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
						


					</ul>
				</div>
				<!-- END TOP NAVIGATION MENU -->
			</div>
			<!-- END PAGE TOP -->
		</div>

	</div>
	<div class="clearfix"></div>


	<style>
.TopMenu>li {
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
				 <nav class="navbar">
                    <div class="container-fluid">
                        <div class="hor-menu">
                            <div id="navbarMenu" class="navbar-collapse collapse">
                                <ul class="nav navbar-nav">
                                    <li><a href="Administration.jsp" data-toggle="pills" class="2"><i class="fa fa-user" aria-hidden="true"></i><br> ADMINISTRATION</a></li>
                                    <li><a href="#" data-toggle="pills" class="3"><i class="fa fa-cog" aria-hidden="true"></i><br>CONFIGURATION</a></li>

                                    <li><a href="#" data-toggle="pills" class="5"><i class="fa fa-unlock-alt" aria-hidden="true"></i><br>PERMISSION</a></li>
                                    <li><a href="LiveTrafficReport.jsp" data-toggle="pills" class="6"><i class="fa fa-dropbox" aria-hidden="true"></i><br>REPORTING</a></li>
                                    <li><a href="#" data-toggle="pills" class="7"><i class="fa fa-television" aria-hidden="true"></i><br>MONITORING</a></li>
                                    <li><a href="#" data-toggle="pills" class="8"><i class="fa fa-credit-card-alt" aria-hidden="true"></i><br>BILLING</a></li>
                                    <li><a href="#" data-toggle="pills" class="12"><i class="fa fa-folder-open" aria-hidden="true"></i><br>UTILITY</a></li>
                                </ul>
                            </div><!--/.nav-collapse -->
                        </div><!--/.container-fluid -->
                    </div>
                    <div class="visible-xs Mhor-menu" style="overflow: auto;">
                        <ul class="TopMenu" style="display: inline-flex;list-style: none;text-align: center;padding-left: 0;margin-top: 10px;font-size: 10px;">
                            <li><a href="#" data-toggle="pills" class="2"><i class="icon-user DisplayIcon"></i></a></li>
                            <li><a href="#" data-toggle="pills" class="3"><i class="icon-settings DisplayIcon"></i></a></li>
                            <li><a href="#" data-toggle="pills" class="4"><i class="icon-docs DisplayIcon"></i></a></li>
                            <li><a href="#" data-toggle="pills" class="5" style="display:none"><i class="icon-lock DisplayIcon"></i></a></li>
                            <li><a href="#" data-toggle="pills" class="6"><i class="icon-layers DisplayIcon"></i></a></li>
                            <li><a href="#" data-toggle="pills" class="7"><i class="icon-screen-desktop DisplayIcon"></i></a></li>
                            <li><a href="#" data-toggle="pills" class="8"><i class="icon-wallet DisplayIcon"></i>&nbsp;BILLING</a></li>
                            <li><a href="#" data-toggle="pills" class="12"><i class="icon-doc DisplayIcon"></i>&nbsp;UTILITY</a></li>
                        </ul>
                    </div>

                </nav>

				<div class="visible-xs Mhor-menu" style="overflow: auto;">
					<ul class="TopMenu"
						style="display: inline-flex; list-style: none; text-align: center; padding-left: 0; margin-top: 10px; font-size: 10px;">
						<li class="active" style="border: 1px solid rgb(167, 157, 157);">
							<a href="/Dashboard/Index" data-toggle="pills" class="0"> <i
								class="icon-bar-chart DisplayIcon"></i> <span class="title">
							</span>
						</a>
						</li>
						<li style="border: 1px solid rgb(167, 157, 157);"><a
							href="/Management/ComposeSMS" target="_self" data-toggle="pills"
							class="1"> <i class="icon-envelope-open DisplayIcon"></i> <span
								class="title"> </span>
						</a></li>

						<li style="border: 1px solid rgb(61, 88, 105);"><a
							href="/Reseller/Administration/UserManagement"
							data-toggle="pills" class="5"> <i
								class="icon-user DisplayIcon"
								style="color: white; margin: 0px auto 6px; height: 36px; width: 37px; font-size: 20px; padding: 8px 7px; display: block; border: 1px solid rgb(41, 184, 153); background: rgb(41, 184, 153);"></i>
								<span class="title"> </span>
						</a></li>
						<li style="border: 1px solid rgb(167, 157, 157);"><a
							href="/Reseller/Permission/PermissionInRole" data-toggle="pills"
							class="6" style="display: none"> <i
								class="icon-lock DisplayIcon"></i> <span class="title"> </span>
						</a></li>
						<li style="border: 1px solid rgb(167, 157, 157);"><a
							href="/ApiDocument/ApiDocs" data-toggle="pills" class="3"> <i
								class="icon-docs DisplayIcon"></i> <span class="title"> </span>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>


	<style>
.navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.active>a:hover,
	.navbar-default .navbar-nav>.active>a:focus {
	color: #555;
	background-color: #f9f9f9;
}
</style>

        <div class="page-container">
            <div class="page-sidebar-wrapper">
                <div class="page-sidebar navbar-collapse collapse">
                    <ul class="page-sidebar-menu" id="2" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                        <li class="nav-item start active open">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="fa fa-folder-open" aria-hidden="true"></i>
                                <span class="title">SMPP Reporting</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">

                                <li class="nav-item start active open">
                                    <a href="#" class="6">
                                        <i class="fa fa-paper-plane" aria-hidden="true"></i>
                                        <span class="title">Live Web Traffic Report</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>

                                <li class="nav-item start active open">
                                    <a href="#" class="6">
                                       <i class="fa fa-folder-open" aria-hidden="true"></i>
                                        <span class="title">Gateway Queue</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>

                                <li class="nav-item start active open">
                                    <a href="getMessageList.jsp" class="6">
                                        <i class="fa fa-folder-open" aria-hidden="true"></i>
                                        <span class="title">Sent Report</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li class="nav-item start active open">
                                    <a href="#" class="6">
                                        <i class="fa fa-paper-plane" aria-hidden="true"></i>
                                        <span class="title">Sent Count</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li class="nav-item start active open">
                                    <a href="#" class="6">
                                        <i class="fa fa-download"></i>
                                        <span class="title">Download Report</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item start">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                 <i class="fa fa-folder-open" aria-hidden="true"></i>
                                <span class="title">ESME Reporting</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>

                        <li class="nav-item start">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                 <i class="fa fa-folder-open" aria-hidden="true"></i>
                                <span class="title">Business Insight</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                          
                        </li>

                        <li class="nav-item start">
                            <a href="#" class="6">
                                 <i class="fa fa-folder-open" aria-hidden="true"></i>
                                <span class="title">View Alert(s)</span>
                                <span class="selected"></span>
                            </a>
                        </li>
                    </ul>

                    <ul class="page-sidebar-menu" id="3" style="display:none" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                        <li class="nav-item start active open">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-list"></i>
                                <span class="title">Gateway Configuration</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item start active open">
                                    <a href="ManageSmppGateway.html" class="3">
                                        <i class="fa fa-sliders"></i>
                                        <span class="title">Manage Gateway/Handler</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li class="nav-item start ">
                                    <a href="ManageGatewayErrorCodes.html" class="3">
                                        <i class="fa fa-code"></i>
                                        <span class="title"> Mange Gateway Error Codes</span>
                                    </a>
                                </li>

                                <li class="nav-item start ">
                                    <a href="index.html" class="3">
                                        <i class="fa fa-gavel"></i>
                                        <span class="title"> OA/DA Normalization Rules</span>
                                    </a>
                                </li>


                            </ul>
                        </li>
                            <li class="nav-item start ">
                                <a href="javascript:;" class="nav-link nav-toggle">
                                    <i class="icon-list"></i>
                                    <span class="title"> Interface Configuration</span>
                                    <span class="selected"></span>
                                    <span class="arrow open"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-item start active open">
                                        <a href="index.html" class="3">
                                            <i class="icon-user"></i>
                                            <span class="title"> Manage Interface</span>
                                            <span class="selected"></span>
                                        </a>
                                    </li>
                                    <li class="nav-item start active">
                                        <a href="EsmeBlackListRule.html" class="3">
                                            <i class="icon-lock"></i>
                                            <span class="title"> Esme Blacklist Rule</span>
                                            <span class="selected"></span>
                                        </a>
                                    </li>
                                    <li class="nav-item start active">
                                        <a href="EsmeClientList.html" class="3">
                                            <i class="icon-user"></i>
                                            <span class="title"> Esme Client List</span>
                                            <span class="selected"></span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        <li class="nav-item start ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-list"></i>
                                <span class="title">Routing Rule Manager</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item ">
                                    <a href="ManageMtRules.html" class="8">
                                        <i class="icon-paper-plane"></i>
                                        <span class="title"> MT Routing Rules </span>
                                        <span class="selected"></span>
                                    </a>

                                    <ul>
                                        <li class="nav-item start-li" style="display:none">
                                            <a href="AddNewMtRule.html" class="8">
                                                <i class="icon-paper-plane"></i>
                                                <span class="title"> Add New MT Rule</span>
                                                <span class="selected"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="nav-item ">
                                    <a href="FindRoutes.html" class="8">
                                        <i class="icon-magnifier"></i>
                                        <span class="title"> Routing Rules Simulator </span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item start ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-list"></i>
                                <span class="title"> Deamon/Services</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item start ">
                                    <a href="ManageService.html" class="3">
                                        <i class="icon-settings"></i>
                                        <span class="title">  Manage Services</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item start" style="display:none">
                            <a href="QuickConfiguration.html" class="8">
                                <i class="icon-wrench"></i>
                                <span class="title">Quick Configuration</span>
                                <span class="selected"></span>
                            </a>
                        </li>
                        <li class="nav-item start">
                            <a href="Housekeeping.html" class="8">
                                <i class="icon-notebook"></i>
                                <span class="title">Housekeeping</span>
                                <span class="selected"></span>
                            </a>
                        </li>
                    </ul>

                    <ul class="page-sidebar-menu" id="4" style="display:none" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                        <li class="nav-item start active open">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-layers"></i>
                                <span class="title">Documents</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item start active open">
                                    <a href="ApiDocs" class="4">
                                        <i class="icon-doc"></i>
                                        <span class="title">  API Documents</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>


                    



                    <ul class="page-sidebar-menu" id="7" style="display:none" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                        <li class="nav-item start active open">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-list"></i>
                                <span class="title">SMPP Client</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item start active open">
                                    <a href="ClientServerLogs.html" class="7">
                                        <i class="icon-docs"></i>
                                        <span class="title">  PDU Logs</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>


                                <li class="nav-item start active open">
                                    <a href="ClientSystemLogs.html" class="7">
                                        <i class="icon-notebook"></i>
                                        <span class="title">  Event Viewer(Client)</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li class="nav-item start active open">
                                    <a href="DlrSystemLogs.html" class="7">
                                        <i class="icon-notebook"></i>
                                        <span class="title">  Event Viewer(DLR)</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                            <li class="nav-item start">
                                <a href="javascript:;" class="nav-link nav-toggle">
                                    <i class="icon-list"></i>
                                    <span class="title">SMPP Server</span>
                                    <span class="selected"></span>
                                    <span class="arrow open"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-item start">
                                        <a href="ServerLogs.html" class="7">
                                            <i class="icon-docs"></i>
                                            <span class="title">  PDU Logs</span>
                                            <span class="selected"></span>
                                        </a>
                                    </li>
                                    <li class="nav-item start active open">
                                        <a href="ServerSystemLogs.html" class="7">
                                            <i class="icon-notebook"></i>
                                            <span class="title">  Event Viewer(Server)</span>
                                            <span class="selected"></span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        <li class="nav-item">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="fa fa-wrench"></i>
                                <span class="title">Debug Tools</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item">
                                    <a href="LastError.html" class="7">
                                        <i class="icon-globe"></i>
                                        <span class="title">  Last Error</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="AuditLogs.html" class="7">
                                        <i class="icon-clock"></i>
                                        <span class="title">  Audit Logs</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="WebLogs.html" class="7">
                                        <i class="icon-layers"></i>
                                        <span class="title"> Client Web Logs</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>

                    <ul class="page-sidebar-menu" id="8" style="display:none" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">


                        <li class="nav-item start active open">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-list"></i>
                                <span class="title"> Master Data Manager</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item start">
                                    <a href="ManageCountry.html" class="8">
                                        <i class="icon-globe"></i>
                                        <span class="title"> Manage Countries </span>
                                        <span class="selected"></span>
                                    </a>
                                    <ul>
                                        <li class="nav-item start-li" style="display:none">
                                            <a href="ImportCountries.html" class="8">
                                                <i class="icon-globe"></i>
                                                <span class="title"> Import Countries </span>
                                                <span class="selected"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="nav-item start ">
                                    <a href="ManageMCCMNC.html" class="8">
                                        <i class="icon-pointer"></i>
                                        <span class="title"> Manage MCC/MNC </span>
                                    </a>
                                    <ul>
                                        <li class="nav-item start-li" style="display:none">
                                            <a href="ImportMCCMNC.html" class="8">
                                                <i class="icon-pointer"></i>
                                                <span class="title"> Import MCC/MNC </span>
                                                <span class="selected"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item start">
                                    <a href="ManagePrefix.html" class="8">
                                        <i class="icon-layers"></i>
                                        <span class="title"> Manage Prefix </span>
                                    </a>
                                    <ul>
                                        <li class="nav-item start-li" style="display:none">
                                            <a href="ImportPrefix.html" class="8">
                                                <i class="icon-globe"></i>
                                                <span class="title"> Import Prefix </span>
                                                <span class="selected"></span>
                                            </a>
                                        </li>
                                        <li class="nav-item start-li" style="display:none">
                                            <a href="VerifyPrefix.html" class="8">
                                                <i class="icon-globe"></i>
                                                <span class="title"> Verify Prefix </span>
                                                <span class="selected"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item ">
                                    <a href="ManageGatewayPrice.html" class="8">
                                        <i class="icon-note"></i>
                                        <span class="title"> Manage Gateway Price </span>
                                    </a>
                                    <ul>
                                        <li class="nav-item start-li" style="display:none">
                                            <a href="ImportGatewayPrice.html" class="8">
                                                <i class="icon-note"></i>
                                                <span class="title"> Import Gateway Price </span>
                                                <span class="selected"></span>
                                            </a>
                                        </li>
                                        <li class="nav-item start-li" style="display:none">
                                            <a href="ViewGatewayDetails.html" class="8">
                                                <i class="icon-note"></i>
                                                <span class="title"> View Gateway Details </span>
                                                <span class="selected"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item start ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-list"></i>
                                <span class="title">Rate Plan Manager</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item ">
                                    <a href="ManageRatePlans.html" class="8">
                                        <i class="icon-folder"></i>
                                        <span class="title"> Manage Rate Plans </span>
                                        <span class="selected"></span>
                                    </a>
                                    <ul>
                                        <li class="nav-item start-li" style="display:none">
                                            <a href="AddNewTemplate.html" class="8">
                                                <i class="icon-globe"></i>
                                                <span class="title"> Add Rate Plan Template</span>
                                                <span class="selected"></span>
                                            </a>
                                        </li>
                                        <li class="nav-item start-li" style="display:none">
                                            <a href="ViewTemplates.html" class="8">
                                                <i class="icon-globe"></i>
                                                <span class="title"> View Template Details</span>
                                                <span class="selected"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>



                        <li class="nav-item start">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-list"></i>
                                <span class="title">Currency Manager</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item ">
                                    <a href="ManageCurrency.html" class="8">
                                        <i class="icon-tag"></i>
                                        <span class="title"> Manage Currency </span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>

                    <ul class="page-sidebar-menu" id="9" style="display:none" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                        <li class="nav-item start active open">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-layers"></i>
                                <span class="title">Manage Api</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item start active open">
                                    <a href="index.html" class="9">
                                        <i class="icon-microphone"></i>
                                        <span class="title"> HTTP Voice Api</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>

                    <ul class="page-sidebar-menu" id="11" style="display:none" data-keep-expanded="false"
                        data-auto-scroll="true" data-slide-speed="200">
                        <li class="nav-item start active open">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="fa fa-group fa-lg"></i>
                                <span class="title">SDP</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item">
                                    <a href="ManageSDPAccount.html" class="4">
                                        <i class="fa fa-asterisk"></i>
                                        <span class="title">Manage SDP Account(s)</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="ManageSDPEndPoint.html" class="4">
                                        <i class="fa fa-bars"></i>
                                        <span class="title">Manage SDP Endpoint(s)</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="SDPService.html" class="4">
                                        <i class="fa fa-bars"></i>
                                        <span class="title">Manage SDP Service(s)</span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="nav-item start ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="fa fa-group fa-lg"></i>
                                <span class="title">Applications</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item">
                                    <a href="NotifyServiceApp.html" class="4">
                                        <i class="fa fa-asterisk"></i>
                                        <span class="title">Notify Service App</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="OrderSyncRelationApp.html" class="4">
                                        <i class="fa fa-bars"></i>
                                        <span class="title">Order Sync Relation App</span>
                                    </a>
                                </li>

                            </ul>
                        </li>

                        <li class="nav-item start ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="fa fa-group fa-lg"></i>
                                <span class="title">Reports</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item">
                                    <a href="SubscriptionList.html" class="4">
                                        <i class="fa fa-asterisk"></i>
                                        <span class="title">Subscription Report</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="page-sidebar-menu" style="display:none" id="12" data-keep-expanded="false"
                        data-auto-scroll="true" data-slide-speed="200">
                        <li class="nav-item active open">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="fa fa-trademark fa-lg"></i>
                                <span class="title">Message Queue</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item">
                                    <a href="QueueTransfer.html" class="12">
                                        <i class="fa fa-asterisk"></i>
                                        <span class="title">Manage Queue-Transfer</span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="nav-item start">
                            <a href="TraceMessage.html" class="12">
                                <i class="icon-eyeglasses"></i>
                                <span class="title">Message Trace</span>
                                <span class="selected"></span>
                            </a>
                        </li>
                        <li class="nav-item start">
                            <a href="Throughput.html" class="12">
                                <i class="icon-pie-chart"></i>
                                <span class="title">View Throughput</span>
                                <span class="selected"></span>
                            </a>
                        </li>
                    </ul>



                    <!-- END SIDEBAR MENU -->
                </div>
                <!-- END SIDEBAR -->
            </div>
            <!-- END SIDEBAR -->
            <!-- BEGIN CONTENT -->
			
			
         <div class="page-content-wrapper">
                <div class="page-content" style="min-height: 620px;">

                    <div id="mainContentDiv">
                        

<div class="portlet light bordered">
    <div class="portlet-title">
        <div class="caption">
            <span class="caption-subject font-blue sbold">Live Traffic Report</span>
        </div>
    </div>
    <div class="portlet-body">
        <pre><b>Note:&nbsp;1)&nbsp;</b>The Available Balance is visible in the Base Currency.
<b>      2)&nbsp;</b>The visible message count(s) are as per admin's timezone.
</pre>

        <br>
       <!--  <div style="position: absolute;margin-bottom: 0;right: 16px;width: 400px;margin-top: 6px;">
            <label class="mt-checkbox mt-checkbox-outline hidden-xs" style="z-index: 10000;">
                <input type="checkbox" id="ChkTopSenders"> Top 10 Senders <font style="color:red"> |</font>
                <span></span>
            </label>
        </div> -->
        <div id="ManageLiveTrafficReport_wrapper" class="dataTables_wrapper no-footer"><div class="row"><div class="col-md-6 col-sm-6"></div><div class="col-md-6 col-sm-6"><div id="ManageLiveTrafficReport_filter" class="dataTables_filter"><label>Search:<input type="search" class="" placeholder="" aria-controls="ManageLiveTrafficReport"></label></div></div><div id="ManageLiveTrafficReport_processing" class="dataTables_processing" style="display: none; background-color: transparent; border: transparent;"><img src="/Images/ajaxloader.gif"></div></div><div class="table-scrollable"><table id="ManageLiveTrafficReport" class="table table-striped table-hover table-bordered dataTable no-footer" cellspacing="0" width="100%" role="grid" aria-describedby="ManageLiveTrafficReport_info">
            <thead>
                <tr role="row"><th class="ui-state-default sorting_disabled" rowspan="1" colspan="1">Username</th><th class="ui-state-default sorting_disabled left" rowspan="1" colspan="1">Traffic [Balance]</th></tr>
            </thead>
        <tbody><tr role="row" class="odd"><td>VIRTUOSOFT <font color="Red">»</font> asjmedia <font color="Red">»</font> unisan02</td><td class=" left">7836  [21025.11]</td></tr></tbody></table></div><div class="row"><div class="col-md-5 col-sm-5"><div class="dataTables_info" id="ManageLiveTrafficReport_info" role="status" aria-live="polite">Showing 1 to 1 of 1 entries</div></div><div class="col-md-7 col-sm-7"></div></div></div>
    </div>
</div>


<script>
    $(document).ready(function () {
        LoadTable(false);
        function LoadTable(IsTopSenders) {
            $('#ManageLiveTrafficReport').dataTable({
                "processing": true,
                "serverSide": true,
                "bSort": false,
                "bPaginate": false,
                "bDestroy": true,
                "oLanguage": {
                    "sProcessing": "<img src='/Images/ajaxloader.gif'>"
                },
                "ajax": {
                    "url": "GetLiveTrafficReport",
                    "type": "POST",
                    "data":
                    {
                        "IsTopSenders": IsTopSenders
                    }
                },
                "columns": [
                    { "data": "UserNameHeirarchy", "orderable": false },
                    // { "data": "ProductName", "orderable": false },
                    {
                        "data": null,
                        "sClass": "left",
                        "mRender": function (data, type, full) {
                            return full.TrafficCount + "  [" + full.Balance + "]";
                        }
                    },
                    //{
                    //    "data": "LastName",
                    //    "sClass": "left",
                    //    "mRender": function (data, type, full) {
                    //        return full.TransactionalSmsSent + "[" + full.TransactionalSmsUnit + "]";
                    //    }
                    //},
                ],
                "order": [[0, "asc"]],
                "aaSorting": [[2, "desc"]],
                "bJQueryUI": true,
                "bAutoWidth": false,
                sPaginationType: "full_numbers",
            });
            $("#ManageLiveTrafficReport_processing").css('background-color', 'transparent').css('border', 'transparent');
        }

        $('#ChkTopSenders').change(function () {

            var IsTopSenders = $(this).is(":checked");
            LoadTable(IsTopSenders)
        });

    });


</script>

                    </div>





                    <div class="modal fade" id="SessionformModal">
                        <div class="modal-dialog" style="max-width: 480px">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
                <div class="page-content" style="min-height: 620px;">

                    <div id="mainContentDiv">


<!-- <div class="row">
    <div class="col-lg-12 col-xs-12 col-sm-12">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <span class="caption-subject bold font-blue">Manage Permissions</span>
                </div>
            </div>
            <div class="portlet-body">
                <div class="col-lg-12 m-tb">
                    You can give selected privillages to any <code>Executive</code> based on their work area. You can also create more than one <code>Executive</code> role(s)
                </div><br>
                <div class="panel-body m-b-100">
                    <div id="dvMessage" class="m-t-15">
                    </div>
                    <div class="form-inline" role="form">
                        <div class="form-group">
                            <label class="sr-only" for="exampleInputEmail22">Email address</label>
                            <div>
                                <span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span><select class="form-control  ui-autocomplete-input" id="txtUserNames" name="SiteUserList" style="width: 240px; display: none;" autocomplete="off"><option value="">Select User Name</option>
<option value="169">testexe</option>
</select><div class="chosen-container chosen-container-single" style="width: 240px;" title="" id="txtUserNames_chosen"><a class="chosen-single" tabindex="-1"><span>Select User Name</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off"></div><ul class="chosen-results"></ul></div></div>
                            </div>
                        </div>
                        <button type="submit" id="btnViewPermission" class="btn btn-sm btn-success"><i class="fa fa-check"></i>&nbsp;View</button>
                    </div>
                    <div id="" class="dataTables_wrapper" role="grid">
                        <div id="dtUserPermissions_wrapper" class="dataTables_wrapper no-footer">

                        </div>
                        <div class="widget-content padded clearfix">
                            <div class="table-responsive">
                                <table id="dtManageUserPermissions" style="margin-top: 15px;display:none" class="table table-striped table-bordered table-hover table-checkable order-column dataTable no-footer" width="100%">
                                    <thead>
                                        <tr role="row">
                                            <th></th>
                                            <th role="columnheader" tabindex="0" aria-controls="datatable-editable" style="width: 175px;">
                                                Menu
                                            </th>
                                            <th role="columnheader" tabindex="0" aria-controls="datatable-editable" style="width: 175px;">
                                                View
                                            </th>
                                            <th role="columnheader" tabindex="0" aria-controls="datatable-editable" style="width: 175px;">
                                                Update
                                            </th>
                                            <th role="columnheader" tabindex="0" aria-controls="datatable-editable" style="width: 175px;">
                                                Delete
                                            </th>
                                            <th role="columnheader" tabindex="0" aria-controls="datatable-editable" style="width: 175px;">
                                                Full Control
                                            </th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                        <div style="display: none" class="dataTables_wrapper" role="grid">
                            <div class="table-responsive">
                                <table id="detailsTable" class="table table-bordered  dataTable no-footer">
                                    <thead>
                                        <tr role="row">
                                            <th></th>
                                            <th role="columnheader" tabindex="0" aria-controls="datatable-editable" style="width: 175px;">
                                                Menu
                                            </th>
                                            <th role="columnheader" tabindex="0" aria-controls="datatable-editable" style="width: 175px;">
                                                View
                                            </th>
                                            <th role="columnheader" tabindex="0" aria-controls="datatable-editable" style="width: 175px;">
                                                Update
                                            </th>
                                            <th role="columnheader" tabindex="0" aria-controls="datatable-editable" style="width: 175px;">
                                                Delete
                                            </th>
                                            <th role="columnheader" tabindex="0" aria-controls="datatable-editable" style="width: 175px;">
                                                Full Control
                                            </th>
                                        </tr>
                                    </thead>

                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="form-group" style="display:none" id="DisplyButton">
                        <div class="col-md-2" style="padding-left: 0;top: 13px;">
                            <input class="btn btn-primary" id="btnSavePermissions" type="submit" value="Save">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> -->


<script type="text/javascript">
    var iTableCounter = 1;
    var oTable;
    var oInnerTable;
    var oInnerSubMenuTable;
    var detailsTableHtml;
    var oTable;
    $(function () {
        $('#txtUserNames').autocomplete({
            source: function (request, response) {
                var searchBy = "UserName";
                $.getJSON("GetUserList?requsetTerm=" + request.term + "",
                    function (data) {

                        response(data);
                    });
            },
            minLength: 1,
            delay: 100
        });

    });

    $(document).find(".dataTables_length").css("dispalay", "none");
    $(document).find(".dataTables_filter").css("dispalay", "none");

    $(document).ready(function () {
        $("#txtUserNames").chosen();
        $(window).scrollTop(0);

        $(document).on('click', "input[name='IsRead'],input[name='IsDelete'],input[name='IsWrite'],input[name='IsFullControll']", function () {
            var tableId = $(this).closest('table').attr("id");
            var tr = $(this).closest('table tr');
            var tblSub = $("#" + tableId).DataTable();
            var permissionType = $(this).attr("name");
            var row = tblSub.row(tr);
            var detailsRowData = row.data();
            if ($(this).prop('checked')) {
                if (permissionType == "IsRead")
                    detailsRowData.Read = 1;
                else if (permissionType == "IsWrite") {
                    detailsRowData.Write = 1;
                    detailsRowData.Read = 1;
                    detailsRowData.Write = 1;
                    tr.find("input[name='IsRead']").prop('checked', 'checked');
                    tr.find("input[name='IsWrite']").prop('checked', 'checked');
                }
                else if (permissionType == "IsFullControll") {
                    detailsRowData.FullControll = 1;
                    detailsRowData.Read = 1;
                    detailsRowData.Write = 1;
                    tr.find("input[name='IsRead']").prop('checked', 'checked');
                    tr.find("input[name='IsWrite']").prop('checked', 'checked');
                    tr.find("input[name='IsDelete']").prop('checked', 'checked');

                }
                else if (permissionType == "IsDelete") {
                    tr.find("input[name='IsDelete']").prop('checked', 'checked');
                    detailsRowData.Delete = 1;
                }
            }
            else {
                if (permissionType == "IsRead") {
                    detailsRowData.Read = 0;
                    tr.find("input[name='IsDelete']").removeProp('checked');
                    tr.find("input[name='IsFullControll']").removeProp('checked');
                    tr.find("input[name='IsWrite']").removeProp('checked');
                    tr.find("input[name='IsRead']").removeProp('checked');
                }

                else if (permissionType == "IsWrite") {
                    detailsRowData.Write = 0;
                    tr.find("input[name='IsFullControll']").removeProp('checked');
                }

                else if (permissionType == "IsDelete") {
                    detailsRowData.Delete = 0;
                    tr.find("input[name='IsFullControll']").prremovePropop('checked');
                }

                else if (permissionType == "IsFullControll") {
                    detailsRowData.FullControll = 0;
                    tr.find("input[name='IsFullControll']").removeProp('checked');
                }
            }
        })

        $('#txtSearch').on('keyup', function () {
            table.column(1).search(this.value, true, false).draw();
        });

        $(document).on("click", "input[name='IsFullControll']", function () {
        })
    });

    function Check(index) {
        var row = $(this).closest('tr');
        row.addClass('selected');
        var tblPermissions = $('#dtManageUserPermissions').DataTable();
        var name = $("#dtManageUserPermissions tr").eq(index).children('td').eq(1).text();
    }

    //$('#btnViewPermission').click(function () {
    //    $("#dtManageUserPermissions").show();
    //    $("#DisplyButton").show();
    //    var name = $('#txtUserNames').val();
    //    detailsTableHtml = $("#detailsTable").html();
    //    $.fn.dataTable.ext.errMode = 'none';
    //    oTable = $('#dtManageUserPermissions').DataTable({
    //        "bPaginate": false,
    //        "searching": false,
    //        "bDestroy": true,
    //        "processing": true,
    //        "serverSide": true,
    //        "lengthMenu": [[10, 20, 50, 100], [10, 20, 50, 100]],
    //        "oLanguage": {
    //            "sProcessing": "<img src='/Images/ajaxloader.gif'>"
    //        },
    //        "ajax": {
    //            "url": "/WebAdmin/Permission/GetPermissions",
    //            "data": { "userName": $('#txtUserNames').val() },
    //            "type": "POST",
    //            "dataSrc": function (json) {

    //                return json.data;
    //            }
    //        },

    //        "columns": [
    //            {
    //                data: null,
    //                "bSortable": false,
    //                "data": null,
    //                "sWidth": "1%",
    //                defaultContent: '',
    //            },
    //            { "data": "MenuName", "bSortable": false, "bSearchable": true, "bFilter": true },
    //            {
    //                "data": "Read", "bSortable": false,
    //                render: function (data, type, row) {
    //                    if (type == 'display') {
    //                        return '<label class="mt-checkbox mt-checkbox-outline"><input name="IsRead" type="checkbox" id=' + "'" + row.MenuId + "'" + '><span></span></label>';
    //                    }
    //                    else {
    //                        return '<label class="mt-checkbox mt-checkbox-outline"><input type="checkbox" name="IsRead" id=' + "'" + row.MenuId + "'" + '><span></span></label>';
    //                    }
    //                    return row;
    //                },
    //            },
    //            {
    //                "data": "Write", "bSortable": false,
    //                render: function (data, type, row) {
    //                    if (type == 'display') {
    //                        return '<label class="mt-checkbox mt-checkbox-outline"><input name="IsWrite" type="checkbox" id=' + "'" + row.MenuId + "'" + '><span></span></label>';
    //                    }
    //                    else {
    //                        return '<label class="mt-checkbox mt-checkbox-outline"><input type="checkbox" name="IsWrite" id=' + "'" + row.MenuId + "'" + '><span></span></label>';
    //                    }
    //                    return row;
    //                },
    //            },
    //            {
    //                "data": "Delete", "bSortable": false,
    //                render: function (data, type, row) {
    //                    if (type == 'display') {
    //                        return '<label class="mt-checkbox mt-checkbox-outline"><input name="IsDelete" type="checkbox" id=' + "'" + row.MenuId + "'" + '><span></span></label>';
    //                    }
    //                    else {
    //                        return '<label class="mt-checkbox mt-checkbox-outline"><input type="checkbox" name="IsDelete" id=' + "'" + row.MenuId + "'" + '><span></span></label>';
    //                    }
    //                    return row;
    //                },
    //            },
    //            {
    //                "data": "FullControll", "bSortable": false,
    //                render: function (data, type, row) {
    //                    if (type == 'display') {
    //                        return '<label class="mt-checkbox mt-checkbox-outline"><input name="IsFullControll" type="checkbox" id=' + "'" + row.MenuId + "'" + '><span></span></label>';
    //                    }
    //                    else {
    //                        return '<label class="mt-checkbox mt-checkbox-outline"><input name="IsFullControll" type="checkbox" id=' + "'" + row.MenuId + "'" + '><span></span></label>';
    //                    }
    //                    return row;
    //                }
    //            },
    //        ],
    //        rowCallback: function (row, data, meta) {
    //            // Set the checked state of the checkbox in the table
    //            $("input[name='IsRead']", row).prop('checked', data.Read == 1);
    //            $("input[name='IsWrite']", row).prop('checked', data.Write == 1);
    //            $("input[name='IsDelete']", row).prop('checked', data.Delete == 1);
    //            $("input[name='IsFullControll']", row).prop('checked', data.FullControll == 1);

    //        },
    //    });
    //});

    $('#btnViewPermission').click(function () {
        var name = $('#txtUserNames :selected').text();
        $.ajax({
            url: "/WebAdmin/Permission/IsParent",
            type: "POST",
            //contentType: "application/json;",
            data: { "userName":  name  },
            success: function (data) {
                if (data == "Success") {
                    $("#dvPermission").removeClass("hideDiv");
                    $("#dvPermission").addClass("showDiv");

                    $("#dvMessage").removeClass("alert alert-danger");
                    $("#dvMessage").text("");
                    LoadPermissionTable();
                }
                else if (data == "Fail") {
                    $("#dvPermission").removeClass("showDiv");
                    $("#dvPermission").addClass("hideDiv");
                    $("#dtManageUserPermissions").DataTable().destroy();
                    $("#dvMessage").addClass("alert alert-danger");
                    $("#dvMessage").text("No user exist with this username. Please enter correct username.");
                }
            }
        });



    });

    function LoadPermissionTable() {
        $("#dtManageUserPermissions").show();
        $("#DisplyButton").show();
        var name = $('#txtUserNames :selected').text();
        detailsTableHtml = $("#detailsTable").html();
        $.fn.dataTable.ext.errMode = 'none';
        oTable = $('#dtManageUserPermissions').DataTable({
            "bPaginate": false,
            "searching": false,
            "bDestroy": true,
            "processing": true,
            "serverSide": true,
            "lengthMenu": [[10, 20, 50, 100], [10, 20, 50, 100]],
            "oLanguage": {
                "sProcessing": "<img src='/Images/ajaxloader.gif'>"
            },
            "ajax": {
                "url": "/WebAdmin/Permission/GetPermissions",
                "data": { "userName": name },
                "type": "POST",
                "dataSrc": function (json) {

                    return json.data;
                }
            },

            "columns": [
                {
                    data: null,
                    "bSortable": false,
                    "data": null,
                    "sWidth": "1%",
                    defaultContent: '',
                },
                { "data": "MenuName", "bSortable": false, "bSearchable": true, "bFilter": true },
                {
                    "data": "Read", "bSortable": false,
                    render: function (data, type, row) {
                        if (type == 'display') {
                            return '<label class="mt-checkbox mt-checkbox-outline"><input name="IsRead" type="checkbox" id=' + "'" + row.MenuId + "'" + '><span></span></label>';
                        }
                        else {
                            return '<label class="mt-checkbox mt-checkbox-outline"><input type="checkbox" name="IsRead" id=' + "'" + row.MenuId + "'" + '><span></span></label>';
                        }
                        return row;
                    },
                },
                {
                    "data": "Write", "bSortable": false,
                    render: function (data, type, row) {
                        if (type == 'display') {
                            return '<label class="mt-checkbox mt-checkbox-outline"><input name="IsWrite" type="checkbox" id=' + "'" + row.MenuId + "'" + '><span></span></label>';
                        }
                        else {
                            return '<label class="mt-checkbox mt-checkbox-outline"><input type="checkbox" name="IsWrite" id=' + "'" + row.MenuId + "'" + '><span></span></label>';
                        }
                        return row;
                    },
                },
                {
                    "data": "Delete", "bSortable": false,
                    render: function (data, type, row) {
                        if (row.MenuId == 1 || row.MenuId == 3) {
                            if (type == 'display') {
                                return '<label class="mt-checkbox mt-checkbox-outline"><input name="IsDelete" type="checkbox" id=' + "'" + row.MenuId + "'" + '><span></span></label>';
                            }
                            else {
                                return '<label class="mt-checkbox mt-checkbox-outline"><input type="checkbox" name="IsDelete" id=' + "'" + row.MenuId + "'" + '><span></span></label>';
                            }
                            return row;
                        } else {
                            //for those menu id where delete operation cannot be performed
                            return '<label style="display:none;" class="mt-checkbox mt-checkbox-outline"><input type="checkbox" name="IsDelete" id=' + "'" + row.MenuId + "'" + '><span></span></label><code>NA</code>';
                        }
                    },
                },
                {
                    "data": "FullControll", "bSortable": false,
                    render: function (data, type, row) {
                        if (type == 'display') {
                            return '<label class="mt-checkbox mt-checkbox-outline"><input name="IsFullControll" type="checkbox" id=' + "'" + row.MenuId + "'" + '><span></span></label>';
                        }
                        else {
                            return '<label class="mt-checkbox mt-checkbox-outline"><input name="IsFullControll" type="checkbox" id=' + "'" + row.MenuId + "'" + '><span></span></label>';
                        }
                        return row;
                    }
                },
            ],
            rowCallback: function (row, data, meta) {
                // Set the checked state of the checkbox in the table
                $("input[name='IsRead']", row).prop('checked', data.Read == 1);
                $("input[name='IsWrite']", row).prop('checked', data.Write == 1);
                $("input[name='IsDelete']", row).prop('checked', data.Delete == 1);
                $("input[name='IsFullControll']", row).prop('checked', data.FullControll == 1);

            },
        });
    }



    $("#dtManageUserPermissions_processing").css('background-color', 'transparent').css('border', 'transparent');

    $("#btnSavePermissions").click(function () {

        var tblPermissions = $('#dtManageUserPermissions').DataTable();
        var data = JSON.stringify(tblPermissions.rows().data().toArray());
        $.ajax({
            url: "/WebAdmin/Permission/AddUpdatePermission",
            type: "POST",
            contentType: "application/json;",
            data: data,
            success: function (data) {
                $("#dvMessage").removeAttr("class");
                $("#dvMessage").text("");

                if (data == true) {
                    $("#dtManageUserPermissions").DataTable().ajax.reload(null, false);

                    $("#dvMessage").addClass("alert alert-success m-t-15");
                    $("#dvMessage").text("User permissions updated successfully.");
                }
                else if (data == false) {
                    $("#dvMessage").addClass("alert alert-danger m-t-15");
                    $("#dvMessage").text("Some error has occurred.Please try after sometime.");
                }
                else {
                    $("#dvMessage").addClass("alert alert-danger m-t-15");
                    $("#dvMessage").text("You are unauthorized to update the User Permissions.");
                }
                $(window).scrollTop(0);
            }
        });
    });
</script>

                    </div>





                    <div class="modal fade" id="SessionformModal">
                        <div class="modal-dialog" style="max-width: 480px">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
                © 2020 sms24hours powered by Virtuoso NetSoft Pvt. Ltd.. All rights reserved.
                    <span><b>Contact Us</b></span>
                                    <span><i class="fa fa-envelope-o"></i> Email : support@sms24hours.com</span>
                                    &nbsp;| &nbsp;<span><i class="fa fa-phone" aria-hidden="true"></i> Phone :&#x2B;91-9872363621</span>
            </div>
            <div class="scroll-to-top">
                <i class="icon-arrow-up"></i>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/cookie.min.js"></script>
    <script src="assets/js/raphael-min.js"></script>
    <script src="assets/js/app.min.js"></script>
    <script src="assets/js/slimscroll.min.js" type="text/javascript"></script>
    <script src="assets/js/layout.min.js"></script>
    <script src="assets/js/demo.min.js"></script>
    <script src="assets/js/quick-sidebar.min.js"></script>
    <script src="assets/js/quick-nav.min.js"></script>
    <script src="assets/js/moment.min.js"></script>
    <!--<script src="/js/AssistanceSystem.js"></script>-->

    
    <script src="assets/js/jquery.blockui.min.js"></script>
    <!--<script src="/Scripts/jquery-ui_1.8.23.min.js"></script>
    <script src="/Scripts/bootstrap-multiselect.js"></script>
    <link href="/CSS/bootstrap-multiselect.css" rel="stylesheet" />-->
    <link href="assets/css/bootstrap-switch.css" rel="stylesheet" />
    <script src="assets/js/bootstrap-switch.js"></script>
    <link href="assets/css/jquery-ui.css" rel="stylesheet" />
    <script src="assets/js/validate.min.js"></script>
    <link href="assets/css/datatables.bootstrap.css" rel="stylesheet" />
    <link href="assets/css/datatables.min.css" rel="stylesheet" />
    <script src="assets/js/datatables.min.js"></script>
    <script src="assets/js/datatables.bootstrap.js"></script>
    <link href="assets/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <script src="assets/js/bootstrap-datepicker.min.js"></script>
    <link href="assets/css/daterangepicker.min.css" rel="stylesheet" />
    <script src="assets/js/daterangepicker.min.js"></script>
    <script src="assets/js/angular.js"></script>
    <script src="assets/js/app.js"></script>
    <script src="/Scripts/KeywordCtrl.js"></script>
    <link href="assets/css/bootstrap-select.css" rel="stylesheet" />
    <script src="assets/js/bootstrap-select.min.js"></script>
    <!--<script src="/Scripts/UserAdministration.js"></script>-->  


    <script>
        $(document).ready(function () {
            $('#clickmewow').click(function () {
                $('#radio1003').attr('checked', 'checked');
            });
        })


        $(document).ready(function () {

            $('[data-toggle="tooltip"]').tooltip();

            $("#displaySelectTabName").html("Administration")

            var pathname = window.location.pathname;
            $('.page-sidebar-menu li a').each(function () {
                var h = $(this).attr('href');

                if (pathname == h) {

                    $(".page-sidebar ul.page-sidebar-menu").hide();
                    $(this).closest(".page-sidebar-menu").show();
                    $(this).parent().parent().parent().parent().show();
                    $(".page-sidebar-menu li").removeClass("active open");
                    $(this).parent().parent().parent().addClass("active open");

                    if ($(this).parent().hasClass("start-li")) {
                        $(this).parent().parent().parent().parent().parent().addClass("active");
                    }
                    else {
                        $(this).parent().addClass("active");
                    }
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

            if ($.fn.dataTable != undefined) {
                $.fn.dataTable.ext.errMode = 'none';
            }
            $(document).ajaxError(function (e, xhr) {

                if (xhr.status == 401)
                    $("#SessionformModal").modal();
                //window.location = "/User/Login";
                else if (xhr.status == 403)
                    alert("You have no enough permissions to request this resource.");
            });
        });
    </script>
</body>
</html>