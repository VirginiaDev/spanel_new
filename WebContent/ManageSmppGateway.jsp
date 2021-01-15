<!DOCTYPE html>
<%@page import="user.Routes"%>
<%@page import="java.util.List"%>
<%@page import="manager.UserManager"%>
<%String message = (String)session.getAttribute("message"); %>
<html lang="en">
<head>
    <meta charset="utf-8" />
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
    <!-- <link href="http://49.50.86.152:6004/ProjectTheme/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="http://49.50.86.152:6004/ProjectTheme/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" />
    <link href="http://49.50.86.152:6004/ProjectTheme/layouts/layout4/css/themes/light.min.css" rel="stylesheet" /> -->
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
<!-- END HEAD -->

<body class="page-container-bg-solid page-header-fixed page-sidebar-closed-hide-logo" ng-app="app">
    	<!-- BEGIN HEADER -->
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
		<%
		if(message!=null){%>
			alert("<%=message%>");
		<%session.removeAttribute("message");}%>
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
                                    <li><a href="ManageSmppGateway.jsp" data-toggle="pills" class="3"><i class="fa fa-cog" aria-hidden="true"></i><br>CONFIGURATION</a></li>

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
                    <ul class="page-sidebar-menu" id="2" style="display: none" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                        <li class="nav-item start">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-user"></i>
                                <span class="title">User Administration</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item start">
                                    <a href="UserManagement.html" class="2">
                                        <i class="icon-users"></i>
                                        <span class="title"> User Management</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li class="nav-item start">
                                    <a href="ViewUserTreeList.html" class="2">
                                        <i class="icon-layers"></i>
                                        <span class="title">Site User Tree List</span>
                                    </a>
                                </li>
                                <li class="nav-item start">
                                    <a href="GetClientList.html" class="2">
                                        <i class="icon-users"></i>
                                        <span class="title">Client Detail List</span>
                                    </a>
                                </li>
                                <li class="nav-item start">
                                    <a href="ClientTransactions.html" class="2">
                                        <i class="icon-note"></i>
                                        <span class="title">Client Transactions</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item  ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-check"></i>
                                <span class="title">Approvals</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item  ">
                                    <a href="ManageSenderId.html" class="2">
                                        <i class="icon-call-in"></i>
                                        <span class="title">  All SenderId Request</span>
                                    </a>
                                </li>
                                <li class="nav-item  ">
                                    <a href="ManageTemplates.html" class="2">
                                        <i class="fa fa-clone"></i>
                                        <span class="title">  All Template Request</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item  ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-settings"></i>
                                <span class="title">Settings</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item  ">
                                    <a href="BlackListNumber.html" class="2">
                                        <i class="fa fa-ban"></i>
                                        <span class="title">  Black List Numbers</span>
                                    </a>
                                </li>
                                <li class="nav-item  ">
                                    <a href="ManageSpamKeyword.html" class="2">
                                        <i class="icon-key"></i>
                                        <span class="title">  Global Spam Keywords</span>
                                    </a>
                                </li>
                                <li class="nav-item  ">
                                    <a href="ManageUserSpamKeyword.html" class="2">
                                        <i class="icon-key"></i>
                                        <span class="title">  User Spam Keywords</span>
                                    </a>
                                </li>
                                <li class="nav-item  ">
                                    <a href="SiteBranding.html" class="2">
                                        <i class="icon-notebook"></i>
                                        <span class="title">  Site Branding</span>
                                    </a>
                                </li>
                                <li class="nav-item  ">
                                    <a href="ManageNotification.html" class="2">
                                        <i class="icon-info"></i>
                                        <span class="title">  Manage Notification</span>
                                    </a>
                                </li>
                                <li class="nav-item  ">
                                    <a href="ChangePassword.html" class="2">
                                        <i class="icon-note"></i>
                                        <span class="title">  Change Password</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item  ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-list"></i>
                                <span class="title">General Setting</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item ">
                                    <a href="GeneralSetting.html" class="2">
                                        <i class="icon-bag"></i>
                                        <span class="title">
                                            Manage General Setting
                                        </span>
                                    </a>
                                </li>
                                <li class="nav-item" style="display:none;">
                                    <a href="BusinessAccount.html" class="2">
                                        <i class="icon-bag"></i>
                                        <span class="title">
                                            Manage Business Account
                                        </span>
                                    </a>
                                </li>
                                <li class="nav-item  ">
                                    <a href="ForcePasswordChange.html" class="2">
                                        <i class="icon-close"></i>
                                        <span class="title">
                                            Force Password Change
                                        </span>
                                    </a>
                                </li>
                                <li class="nav-item  ">
                                    <a href="ForceLockDown.html" class="2">
                                        <i class="icon-lock"></i>
                                        <span class="title">
                                            Force Lock Down
                                        </span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                    </ul>

                    <ul class="page-sidebar-menu" id="3" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                        <li class="nav-item start active open">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="fa fa-list" aria-hidden="true"></i>
                                <span class="title">Gateway Configuration</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item start active open">
                                    <a href="#" class="3">
                                        <i class="fa fa-sliders"></i>
                                        <span class="title">Manage Gateway/Handler</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li class="nav-item start ">
                                    <a href="#" class="3">
                                        <i class="fa fa-code"></i>
                                        <span class="title"> Mange Gateway Error Codes</span>
                                    </a>
                                </li>

                                <li class="nav-item start ">
                                    <a href="#" class="3">
                                        <i class="fa fa-gavel"></i>
                                        <span class="title"> OA/DA Normalization Rules</span>
                                    </a>
                                </li>


                            </ul>
                        </li>
                            <li class="nav-item start ">
                                <a href="javascript:;" class="nav-link nav-toggle">
                                    <i class="fa fa-list" aria-hidden="true"></i>
                                    <span class="title"> Interface Configuration</span>
                                    <span class="selected"></span>
                                    <span class="arrow open"></span>
                                </a>
                               <!--  <ul class="sub-menu">
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
                                </ul> -->
                            </li>
                        <li class="nav-item start ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="fa fa-list" aria-hidden="true"></i>
                                <span class="title">Routing Rule Manager</span>
                                <span class="arrow "></span>
                            </a>
                          <!--   <ul class="sub-menu">
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
                            </ul> -->
                        </li>
                        <li class="nav-item start ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                               <i class="fa fa-list" aria-hidden="true"></i>
                                <span class="title"> Deamon/Services</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                           <!--  <ul class="sub-menu">
                                <li class="nav-item start ">
                                    <a href="ManageService.html" class="3">
                                        <i class="icon-settings"></i>
                                        <span class="title">  Manage Services</span>
                                    </a>
                                </li>
                            </ul> -->
                        </li>
                        <li class="nav-item start" style="display:none">
                            <a href="QuickConfiguration.html" class="8">
                                <i class="icon-wrench"></i>
                                <span class="title">Quick Configuration</span>
                                <span class="selected"></span>
                            </a>
                        </li>
                        <li class="nav-item start">
                            <a href="#" class="8">
                               <i class="fa fa-list" aria-hidden="true"></i>
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
                                    <a href="ApiDocs.html" class="4">
                                        <i class="icon-doc"></i>
                                        <span class="title">  API Documents</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>


                    <ul class="page-sidebar-menu" id="6" style="display:none" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                        <li class="nav-item start active open">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-doc"></i>
                                <span class="title">SMPP Reporting</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">

                                <li class="nav-item start active open">
                                    <a href="LiveTrafficReport.html" class="6">
                                        <i class="icon-graph"></i>
                                        <span class="title">Live Web Traffic Report</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>

                                <li class="nav-item start active open">
                                    <a href="GatewayMessageCount.html" class="6">
                                        <i class="icon-docs"></i>
                                        <span class="title">Gateway Queue</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>

                                <li class="nav-item start active open">
                                    <a href="index.html" class="6">
                                        <i class="icon-docs"></i>
                                        <span class="title">Sent Report</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li class="nav-item start active open">
                                    <a href="MessageUsageCount.html" class="6">
                                        <i class="icon-envelope-open"></i>
                                        <span class="title">Sent Count</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li class="nav-item start active open">
                                    <a href="DownloadReport.html" class="6">
                                        <i class="fa fa-download"></i>
                                        <span class="title">Download Report</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item start">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-docs"></i>
                                <span class="title">ESME Reporting</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item start active open">
                                    <a href="EsmeLiveTrafficReport.html" class="6">
                                        <i class="icon-graph"></i>
                                        <span class="title">Live Web Traffic Report</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li class="nav-item start active open">
                                    <a href="EsmeMessageUsageCount.html" class="6">
                                        <i class="icon-envelope-open"></i>
                                        <span class="title">Sent Count</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                            </ul>

                        <li class="nav-item start">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-docs"></i>
                                <span class="title">Business Insight</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">

                                <li class="nav-item start active open">
                                    <a href="Senders.html" class="6">
                                        <i class="icon-bar-chart"></i>
                                        <span class="title">Top 10 Senders</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>

                                <li class="nav-item start">
                                    <a href="GatewayReport.html" class="6">
                                        <i class="icon-calculator"></i>
                                        <span class="title">Gateway Wise Count</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>


                                <li class="nav-item start active open">
                                    <a href="GatewayWiseMarginReport.html" class="6">
                                        <i class="icon-docs"></i>
                                        <span class="title">Gateway Wise Profit</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>

                                <li class="nav-item start active open" style="display:none;">
                                    <a href="MarginDetailReport.html" class="6">
                                        <i class="icon-docs"></i>
                                        <span class="title">MarginDetailReport</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>


                                <li class="nav-item start active open">
                                    <a href="GatewayMessageReport.html" class="6">
                                        <i class="icon-docs"></i>
                                        <span class="title">Gateway Status Report</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>


                            </ul>
                        </li>

                        <li class="nav-item start">
                            <a href="AlertNotification.html" class="6">
                                <i class="icon-share-alt"></i>
                                <span class="title">View Alert(s)</span>
                                <span class="selected"></span>
                            </a>
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
                                    <a href="/WebAdmin/Billing/ManageCountry" class="8">
                                        <i class="icon-globe"></i>
                                        <span class="title"> Manage Countries </span>
                                        <span class="selected"></span>
                                    </a>
                                    <ul>
                                        <li class="nav-item start-li" style="display:none">
                                            <a href="/WebAdmin/Billing/ImportCountries" class="8">
                                                <i class="icon-globe"></i>
                                                <span class="title"> Import Countries </span>
                                                <span class="selected"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="nav-item start ">
                                    <a href="/WebAdmin/Billing/ManageMCCMNC" class="8">
                                        <i class="icon-pointer"></i>
                                        <span class="title"> Manage MCC/MNC </span>
                                    </a>
                                    <ul>
                                        <li class="nav-item start-li" style="display:none">
                                            <a href="/WebAdmin/Billing/ImportMCCMNC" class="8">
                                                <i class="icon-pointer"></i>
                                                <span class="title"> Import MCC/MNC </span>
                                                <span class="selected"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item start">
                                    <a href="/WebAdmin/Billing/ManagePrefix" class="8">
                                        <i class="icon-layers"></i>
                                        <span class="title"> Manage Prefix </span>
                                    </a>
                                    <ul>
                                        <li class="nav-item start-li" style="display:none">
                                            <a href="/WebAdmin/Billing/ImportPrefix" class="8">
                                                <i class="icon-globe"></i>
                                                <span class="title"> Import Prefix </span>
                                                <span class="selected"></span>
                                            </a>
                                        </li>
                                        <li class="nav-item start-li" style="display:none">
                                            <a href="/WebAdmin/Billing/VerifyPrefix" class="8">
                                                <i class="icon-globe"></i>
                                                <span class="title"> Verify Prefix </span>
                                                <span class="selected"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item ">
                                    <a href="/WebAdmin/Billing/ManageGatewayPrice" class="8">
                                        <i class="icon-note"></i>
                                        <span class="title"> Manage Gateway Price </span>
                                    </a>
                                    <ul>
                                        <li class="nav-item start-li" style="display:none">
                                            <a href="/WebAdmin/Billing/ImportGatewayPrice" class="8">
                                                <i class="icon-note"></i>
                                                <span class="title"> Import Gateway Price </span>
                                                <span class="selected"></span>
                                            </a>
                                        </li>
                                        <li class="nav-item start-li" style="display:none">
                                            <a href="/WebAdmin/Billing/ViewGatewayDetails" class="8">
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
                                    <a href="/WebAdmin/Billing/ManageRatePlans" class="8">
                                        <i class="icon-folder"></i>
                                        <span class="title"> Manage Rate Plans </span>
                                        <span class="selected"></span>
                                    </a>
                                    <ul>
                                        <li class="nav-item start-li" style="display:none">
                                            <a href="/WebAdmin/Billing/AddNewTemplate" class="8">
                                                <i class="icon-globe"></i>
                                                <span class="title"> Add Rate Plan Template</span>
                                                <span class="selected"></span>
                                            </a>
                                        </li>
                                        <li class="nav-item start-li" style="display:none">
                                            <a href="/WebAdmin/Billing/ViewTemplates" class="8">
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
                                    <a href="/WebAdmin/Billing/ManageCurrency" class="8">
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
                                    <a href="/WebAdmin/Voice/Index" class="9">
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
                                    <a href="/SDP/ManageSDPAccount" class="4">
                                        <i class="fa fa-asterisk"></i>
                                        <span class="title">Manage SDP Account(s)</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/SDP/ManageSDPEndPoint" class="4">
                                        <i class="fa fa-bars"></i>
                                        <span class="title">Manage SDP Endpoint(s)</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/SDP/SDPService" class="4">
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
                                    <a href="/Applications/NotifyServiceApp" class="4">
                                        <i class="fa fa-asterisk"></i>
                                        <span class="title">Notify Service App</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/Applications/OrderSyncRelationApp" class="4">
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
                                    <a href="/Reports/SubscriptionList" class="4">
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
                                    <a href="/WebAdmin/Utility/QueueTransfer" class="12">
                                        <i class="fa fa-asterisk"></i>
                                        <span class="title">Manage Queue-Transfer</span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="nav-item start">
                            <a href="/WebAdmin/Utility/TraceMessage" class="12">
                                <i class="icon-eyeglasses"></i>
                                <span class="title">Message Trace</span>
                                <span class="selected"></span>
                            </a>
                        </li>
                        <li class="nav-item start">
                            <a href="/WebAdmin/Utility/Throughput" class="12">
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
                <div class="page-content" style="min-height: 733px;">

                    <div id="mainContentDiv">
                        



<!-- <script src="http://49.50.86.152:6004/ProjectTheme/global/plugins/jquery.min.js"></script> -->

<style>
    .table > caption + thead > tr:first-child > td, .table > caption + thead > tr:first-child > th, .table > colgroup + thead > tr:first-child > td, .table > colgroup + thead > tr:first-child > th, .table > thead:first-child > tr:first-child > td, .table > thead:first-child > tr:first-child > th {
        vertical-align: middle;
    }

    .incdec {
        font-size: 18px;
        margin-top: 10px;
        -webkit-user-select: none;
    }

    .tdPadding {
        padding-right: 5px;
    }

    .thStyle {
        padding-left: 20px;
        font-size: 11px;
        width: 150px;
    }

    .bounceIn {
        font-size: 12px !important;
        font-weight: 700;
        height: 0px;
    }

    .pageDescription {
        font-size: 12px;
        margin-top: 20px;
        margin-bottom: 20px;
        padding: 5px;
        text-align: justify;
        border: 1px solid #f1f1f1;
    }
</style>


<div class="portlet light bordered">
    <div class="portlet-title">
        <div class="caption">
            <span class="caption-subject bold font-blue">Manage  Gateway/Handler</span>
        </div>

        <br>

        <div class="pageDescription">
            Manage Gateway/Handler links help yout to manage connectivity with external SMSC over SMPP and HTTP protocol. In case of SMPP protocol,
            MO/MT and DLR can be achieved on a single bind. However, in case of HTTP, you can add any third party RESTful API for MT and also
            create an HTTP handler for receiving MO/DLR from any SMSC, over HTTP protocol. It may be noted that HTTP gateway (MT) is remote end
            point and HTTP handler (MO) is a local endpoint.
        </div>

        <a class="btn btn-info btn-sm" style="float: right;" href="#" id="RefreshGateway"><i class="fa fa-refresh"></i>&nbsp;Refresh</a>
    </div>

    <div id="dvMessage"></div>
    <div class="portlet-body">

        <div class="tabbable-custom ">

            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#smppGateway" class="hidden-xs" data-toggle="tab"> SMPP Gateway (MT/MO) </a>
                </li>
               

            </ul>



            <div class="tab-content">
                <br>

                <div class="tab-pane active" id="smppGateway">

                    <div class="form-group col-sm-5" style="        display: none;
        padding: 0;
        font-size: 15px;">

                        <span class="col-sm-5 row" style="        margin-top: 5px;">
                            <span style="        font-size: inherit" class="text-success form-inline">Business-Account</span>
                        </span>
                        <span class="col-sm-2 row">
                            <span class="text-success bold form-inline" style="        font-size: small;">
                                <select id="ddBusinessType" name="gatewayFixed" class="form-control selectpickerFixed" data-live-search="true" data-show-subtext="true" data-size="3"></select>
                            </span>
                        </span>
                    </div>

                    <div class="form-group">
                        <a href="#" data-toggle="modal" data-target="#myModal" class="btn btn-success btn-sm" id="addGateway"><i class="fa fa-plus"></i>&nbsp;Add New</a>&nbsp;
                        <span> SMPP Gateway is a Connector which connects to an external SMSC (SMPP Server) over TCP </span>
                    </div>

                    <div id="Gateway_wrapper" class="dataTables_wrapper no-footer">
                    <div class="row">
                    <div class="col-sm-6">
                    <div class="dataTables_length" id="Gateway_length">
                    <label>Show 
                    <select name="Gateway_length" aria-controls="Gateway" class="">
                    <option value="10">10</option><option value="25">25</option>
                    <option value="50">50</option><option value="100">100</option>
                    </select> entries</label>
                    </div>
                    </div>
                    <div class="col-sm-6">
                    <div id="Gateway_filter" class="dataTables_filter">
                    <label>Search:
                    <input type="search" class="" placeholder="" aria-controls="Gateway">
                    </label>
                    </div>
                    </div>
                    </div>
                    <div class="row">
                    <div class="col-sm-12">
                    <table id="Gateway" class="table table-striped table-bordered dataTable table-hover no-footer" style="width: 100%; overflow: auto;" role="grid" aria-describedby="Gateway_info">
                        <thead>
                            <tr role="row">
                            <th rowspan="2" class="ui-state-default sorting_disabled" colspan="1">GId</th>
                            <th rowspan="2" class="ui-state-default sorting_disabled" colspan="1">Gateway Name</th>
                            <th rowspan="2" class="ui-state-default sorting_disabled" colspan="1">IP Address</th>
                            <th rowspan="2" class="ui-state-default sorting_disabled" colspan="1">System Id</th>
                            <th colspan="3" class="ui-state-default" rowspan="1"><div style="text-align: center">Port / Session</div></th>
                            <th rowspan="2" class="ui-state-default sorting_disabled" colspan="1">Default</th>
                            <th rowspan="2" class="ui-state-default sorting_disabled" colspan="1">Status</th>
                            <th rowspan="2" class="ui-state-default sorting_disabled" colspan="1">Tcp State</th>
                            <th rowspan="2" class="ui-state-default sorting_disabled" colspan="1">Action</th></tr>
                            <tr role="row"><th class="ui-state-default sorting_disabled" rowspan="1" colspan="1">Tx</th><th class="ui-state-default sorting_disabled" rowspan="1" colspan="1">Rx</th><th style="        border-right: 1px solid #e7ecf1;" class="ui-state-default sorting_disabled" rowspan="1" colspan="1">TxR</th></tr>
                        </thead>
                    <tbody>
                   
                    <%List<Routes> list = new UserManager().getRoutesList(); 
                    if(list.size()>0){
                    for(int i=0;i<list.size();i++){%>
                     <tr role="row" class="odd">
                    <td><%=list.get(i).getId() %></td>	
                    <td><%=list.get(i).getName() %> <i class="fa fa-flag" data-toggle="tooltip" title="Not Connected" data-placement="bottom" style="color:red"></i></td>
                    <td><%=list.get(i).getIpAddress() %></td>
                    <td><%=list.get(i).getSystemId() %></td>
                   
                    
                    <td><%=list.get(i).getTxPort() %></td>
                    <td><%=list.get(i).getRxPort()%></td>
                    <td><%=list.get(i).getTxRxPort() %></td>
                    <td><span class="label label-sm label-danger" style="font-size: 100%; border-radius: 0px; font-weight: 300;">No</span></td>
                    <td><span class="label label-sm label-danger" style="font-size: 100%; border-radius: 0px; font-weight: 300;">Not active</span></td>
                    <!-- <td><span class="badge badge-info" style="border-radius: 0">No Connection</span></td> -->
                    <td><div data-ng-bind-html="trust"></div></td>
                    <td><a href="javascript:;" class="edit editor_edit"><i class="fa fa-edit"></i> Edit</a> | 
                    <a href="javascript:;" class="delete"><i class="fa fa-trash-o"></i> Delete</a></td>
                    </tr>
                    
                     <%}%>
                    <%}%>
                    <!-- <tr role="row" class="even"><td>69</td><td>vnsvns4<i class="fa fa-flag" data-toggle="tooltip" title="Connected" data-placement="bottom" style="color:green"></i></td><td>59.91.63.148</td><td>vnsvns4</td><td>4000/13</td><td>4000/30</td><td>0/0</td><td><span class="label label-sm label-danger" style="font-size: 100%; border-radius: 0px; font-weight: 300;">No</span></td><td><span class="label label-sm label-success" style="font-size: 100%; border-radius: 0px; font-weight: 300; padding: 3px 16px;">Active</span></td><td>43[ <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> ] <a href="#" data-toggle="modal" class="ViewMore">More</a></td><td><a href="javascript:;" class="edit editor_edit"><i class="fa fa-edit"></i> Edit</a> | <a href="javascript:;" class="delete"><i class="fa fa-trash-o"></i> Delete</a></td></tr><tr role="row" class="odd"><td>70</td><td>virtuoso <i class="fa fa-flag" data-toggle="tooltip" title="Not Connected" data-placement="bottom" style="color:red"></i></td><td>smppinl.vnssmsc.in</td><td>virtuoso_1</td><td>0/0</td><td>0/0</td><td>8585/5</td><td><span class="label label-sm label-danger" style="font-size: 100%; border-radius: 0px; font-weight: 300;">No</span></td><td><span class="label label-sm label-danger" style="font-size: 100%; border-radius: 0px; font-weight: 300;">Not active</span></td><td><span class="badge badge-info" style="border-radius: 0">No Connection</span></td><td><a href="javascript:;" class="edit editor_edit"><i class="fa fa-edit"></i> Edit</a> | <a href="javascript:;" class="delete"><i class="fa fa-trash-o"></i> Delete</a></td></tr><tr role="row" class="even"><td>71</td><td>bankai_direct_p <i class="fa fa-flag" data-toggle="tooltip" title="Not Connected" data-placement="bottom" style="color:red"></i></td><td>smsc.bankaigroup.com</td><td>Virtuosonet</td><td>0/0</td><td>0/0</td><td>2875/2</td><td><span class="label label-sm label-danger" style="font-size: 100%; border-radius: 0px; font-weight: 300;">No</span></td><td><span class="label label-sm label-danger" style="font-size: 100%; border-radius: 0px; font-weight: 300;">Not active</span></td><td><span class="badge badge-info" style="border-radius: 0">No Connection</span></td><td><a href="javascript:;" class="edit editor_edit"><i class="fa fa-edit"></i> Edit</a> | <a href="javascript:;" class="delete"><i class="fa fa-trash-o"></i> Delete</a></td></tr><tr role="row" class="odd"><td>72</td><td>vnvns_dnd<i class="fa fa-flag" data-toggle="tooltip" title="Connected" data-placement="bottom" style="color:green"></i></td><td>59.91.63.147</td><td>vfirst</td><td>3001/6</td><td>3001/15</td><td>0/0</td><td><span class="label label-sm label-danger" style="font-size: 100%; border-radius: 0px; font-weight: 300;">No</span></td><td><span class="label label-sm label-success" style="font-size: 100%; border-radius: 0px; font-weight: 300; padding: 3px 16px;">Active</span></td><td>21[ <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> ] <a href="#" data-toggle="modal" class="ViewMore">More</a></td><td><a href="javascript:;" class="edit editor_edit"><i class="fa fa-edit"></i> Edit</a> | <a href="javascript:;" class="delete"><i class="fa fa-trash-o"></i> Delete</a></td></tr><tr role="row" class="even"><td>75</td><td>vnsoftvf_tr2 <i class="fa fa-flag" data-toggle="tooltip" title="Connected" data-placement="bottom" style="color:green"></i></td><td>218.248.82.3</td><td>vnsoftvf_tr2</td><td>0/0</td><td>0/0</td><td>5016/10</td><td><span class="label label-sm label-danger" style="font-size: 100%; border-radius: 0px; font-weight: 300;">No</span></td><td><span class="label label-sm label-success" style="font-size: 100%; border-radius: 0px; font-weight: 300; padding: 3px 16px;">Active</span></td><td>10[ <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> ] <a href="#" data-toggle="modal" class="ViewMore">More</a></td><td><a href="javascript:;" class="edit editor_edit"><i class="fa fa-edit"></i> Edit</a> | <a href="javascript:;" class="delete"><i class="fa fa-trash-o"></i> Delete</a></td></tr><tr role="row" class="odd"><td>76</td><td>akton <i class="fa fa-flag" data-toggle="tooltip" title="Not Connected" data-placement="bottom" style="color:red"></i></td><td>81.17.225.230</td><td>NetS2AWHS</td><td>0/0</td><td>0/0</td><td>2875/5</td><td><span class="label label-sm label-danger" style="font-size: 100%; border-radius: 0px; font-weight: 300;">No</span></td><td><span class="label label-sm label-danger" style="font-size: 100%; border-radius: 0px; font-weight: 300;">Not active</span></td><td><span class="badge badge-info" style="border-radius: 0">No Connection</span></td><td><a href="javascript:;" class="edit editor_edit"><i class="fa fa-edit"></i> Edit</a> | <a href="javascript:;" class="delete"><i class="fa fa-trash-o"></i> Delete</a></td></tr><tr role="row" class="even"><td>78</td><td>vnsvns6<i class="fa fa-flag" data-toggle="tooltip" title="Connected" data-placement="bottom" style="color:green"></i></td><td>59.91.63.147</td><td>vnsvns6</td><td>3001/10</td><td>3001/10</td><td>0/0</td><td><span class="label label-sm label-danger" style="font-size: 100%; border-radius: 0px; font-weight: 300;">No</span></td><td><span class="label label-sm label-success" style="font-size: 100%; border-radius: 0px; font-weight: 300; padding: 3px 16px;">Active</span></td><td>20[ <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> ] <a href="#" data-toggle="modal" class="ViewMore">More</a></td><td><a href="javascript:;" class="edit editor_edit"><i class="fa fa-edit"></i> Edit</a> | <a href="javascript:;" class="delete"><i class="fa fa-trash-o"></i> Delete</a></td></tr><tr role="row" class="odd"><td>79</td><td>akton_premium <i class="fa fa-flag" data-toggle="tooltip" title="Not Connected" data-placement="bottom" style="color:red"></i></td><td>81.17.225.230</td><td>NetS2AHQ</td><td>0/0</td><td>0/0</td><td>2875/2</td><td><span class="label label-sm label-danger" style="font-size: 100%; border-radius: 0px; font-weight: 300;">No</span></td><td><span class="label label-sm label-danger" style="font-size: 100%; border-radius: 0px; font-weight: 300;">Not active</span></td><td><span class="badge badge-info" style="border-radius: 0">No Connection</span></td><td><a href="javascript:;" class="edit editor_edit"><i class="fa fa-edit"></i> Edit</a> | <a href="javascript:;" class="delete"><i class="fa fa-trash-o"></i> Delete</a></td></tr><tr role="row" class="even"><td>80</td><td>vnsvns21_s<i class="fa fa-flag" data-toggle="tooltip" title="Connected" data-placement="bottom" style="color:green"></i>&nbsp;<i class="badge-default"><code>FO</code></i></td><td>59.91.63.147</td><td>vnsvns21</td><td>3001/10</td><td>3001/20</td><td>0/0</td><td><span class="label label-sm label-danger" style="font-size: 100%; border-radius: 0px; font-weight: 300;">No</span></td><td><span class="label label-sm label-success" style="font-size: 100%; border-radius: 0px; font-weight: 300; padding: 3px 16px;">Active</span></td><td>30[ <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> <span class="badge badge-success" style="display: inline-block;padding: 4px;line-height: 1;height: 9px;border-radius: 19px;min-width: 8px;"></span> ] <a href="#" data-toggle="modal" class="ViewMore">More</a></td><td><a href="javascript:;" class="edit editor_edit"><i class="fa fa-edit"></i> Edit</a> | <a href="javascript:;" class="delete"><i class="fa fa-trash-o"></i> Delete</a></td></tr> -->
                    </tbody>
                    </table>
                    <!-- <div id="Gateway_processing" class="dataTables_processing" style="display: none; background-color: transparent; border: transparent;"><img src="/Images/ajaxloader.gif"></div></div></div> -->
                    <!-- <div class="row"><div class="col-sm-5"><div class="dataTables_info" id="Gateway_info" role="status" aria-live="polite">Showing 1 to 10 of 12 entries</div></div><div class="col-sm-7"><div class="dataTables_paginate fg-buttonset ui-buttonset fg-buttonset-multi ui-buttonset-multi paging_full_numbers" id="Gateway_paginate"><ul class="pagination"><li class="fg-button ui-button ui-state-default first disabled" id="Gateway_first"><a href="#" aria-controls="Gateway" data-dt-idx="0" tabindex="0">First</a></li><li class="fg-button ui-button ui-state-default previous disabled" id="Gateway_previous"><a href="#" aria-controls="Gateway" data-dt-idx="1" tabindex="0">Previous</a></li><li class="fg-button ui-button ui-state-default active"><a href="#" aria-controls="Gateway" data-dt-idx="2" tabindex="0">1</a></li><li class="fg-button ui-button ui-state-default "><a href="#" aria-controls="Gateway" data-dt-idx="3" tabindex="0">2</a></li><li class="fg-button ui-button ui-state-default next" id="Gateway_next"><a href="#" aria-controls="Gateway" data-dt-idx="4" tabindex="0">Next</a></li><li class="fg-button ui-button ui-state-default last" id="Gateway_last"><a href="#" aria-controls="Gateway" data-dt-idx="5" tabindex="0">Last</a></li></ul></div></div></div> -->
                    </div>


                    <div class="" style="        padding-top: 0px">
                        <table class="table table-striped table-hover table-bordered" style="        width: 100%;
        margin: 0;
        margin-bottom: 10px;" id="responsiveTable">
                            <thead>
                                <tr>
                                    <th style="        width: 71px" colspan="6">Tcp State Connection</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="        text-align: center;">
                                        <span class="badge badge-success bounceIn" style="        display: inline-block;
        padding: 7px 7px;"></span>
                                    </td>
                                    <td><span>Established / Listen</span></td>

                                    <td style="        text-align: center;">
                                        <span class="badge badge-default bounceIn" style="        display: inline-block;
        padding: 7px 7px;"></span>
                                    </td>
                                    <td><span>TimeWait</span></td>

                                    <td style="        text-align: center;">
                                        <span class="badge badge-danger bounceIn" style="        display: inline-block;
        padding: 7px 7px;"></span>
                                    </td>
                                    <td><span>CloseWait / Closed / Closing</span></td>
                                </tr>
                                <tr>
                                    <td style="        text-align: center;">
                                        <span class="badge badge-important bounceIn" style="        display: inline-block;
        padding: 7px 7px;"></span>
                                    </td>
                                    <td><span>FinWait1 / FinWait2 / LastAck</span></td>

                                    <td style="        text-align: center;">
                                        <span class="badge badge-warning bounceIn" style="        display: inline-block;
        padding: 7px 7px;"></span>
                                    </td>
                                    <td><span>SynSent / SynReceived</span></td>

                                    <td style="        text-align: center;">
                                        <span class="badge badge-info bounceIn" style="        display: inline-block;
        padding: 7px 7px;"></span>
                                    </td>
                                    <td><span>Unknown</span></td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="table table-striped table-hover table-bordered" style="        width: 100%;
        margin: 0;
        margin-bottom: 10px;" id="responsiveTable">
                            <thead>
                                <tr>
                                    <th style="        width: 71px" colspan="6">Gateway State(s)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="        text-align: center;"><i class="fa fa-flag" style="        color: green"></i></td>
                                    <td><span>Connected</span></td>

                                    <td style="        text-align: center;"><i class="fa fa-flag" style="        color: orange"></i></td>
                                    <td><span>Partially Connected</span></td>

                                    <td style="        text-align: center;"><i class="fa fa-flag" style="        color: red"></i></td>
                                    <td><span>Not Connected</span></td>

                                    <td style="        text-align: center;"><i class="badge-default"><code>FO</code></i></td>
                                    <td><span>Failover Gateway</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div style="display: none;" class="tab-pane" id="httpTab">

                    <div class="form-group">
                        <a href="#" data-toggle="modal" class="btn btn-success btn-sm" id="addhttpGateway"><i class="fa fa-plus"></i>&nbsp;Add New</a>&nbsp;
                        <span>HTTP Gateway is a remote end point which connects to external HTTP Server</span>
                    </div>
                    <br>

                    <table id="HttpGateway" class="table table-striped table-bordered dataTable table-hover no-footer" style="        width: 100%" width="100%">
                        <thead>
                            <tr>
                                <td>GId</td>
                                <td>Gateway Name</td>
                                <td>URL</td>
                                <td>Request Type</td>
                                <td>Session(s)</td>
                                <td>Status</td>
                                <td>Action</td>
                            </tr>
                        </thead>
                    </table>
                    <div class="" style="        padding-top: 0px">
                        <table class="table table-striped table-hover table-bordered" style="        width: 100%;
        margin: 0;
        margin-bottom: 10px;" id="responsiveTable">
                            <thead>
                                <tr>
                                    <th style="        width: 71px" colspan="6">Gateway State(s)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="        text-align: center;"><i class="fa fa-flag" style="        color: green"></i></td>
                                    <td><span>Connected</span></td>

                                    <td style="        text-align: center;"><i class="fa fa-flag" style="        color: orange"></i></td>
                                    <td><span>Partially Connected</span></td>

                                    <td style="        text-align: center;"><i class="fa fa-flag" style="        color: red"></i></td>
                                    <td><span>Not Connected</span></td>

                                    <td style="        text-align: center;"><i class="badge-default"><code>FO</code></i></td>
                                    <td><span>Failover Gateway</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div style="display: none;" class="tab-pane" id="httpConnectorTab">
                    <div class="form-group">
                        <a href="#" data-toggle="modal" class="btn btn-success btn-sm" id="addMoHandler"><i class="fa fa-plus"></i>&nbsp;Add New</a>&nbsp;
                        <span>
                            HTTP Handler is a local end point. Usually this End Point is shared with your Vendor
                        </span>
                    </div>
                    <br>

                    <table id="MOHandler" class="table table-striped table-bordered dataTable table-hover no-footer" style="        width: 100%">
                        <thead>
                            <tr>
                                <td style="        display: none;">Id</td>
                                <td>Local Endpoint URL</td>
                                <td>Endpoint Handler Type</td>
                                <td>Action</td>
                            </tr>
                        </thead>
                    </table>

                </div>

            </div>

        </div>

    </div>

</div>






<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content" style="        background-color: #f9f9f9">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myModalLabel">Gateway Detail</h4>
            </div>

            <div id="divSmppMessage"></div>

			<form action="UserController" id="smppForm" method="post">    
				<input type="hidden" name="userAction" value="16">            
				<div class="modal-body">
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" style="        color: #333">
                                <h4 class="panel-title" style="        font-size: 12px">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#credentialsDetails" aria-expanded="false" aria-controls="collapseOne" class="collapsed">
                                        <i class="fa fa-angle-double-down"></i>&nbsp;Required credentials
                                    </a>
                                </h4>
                            </div>
                            <div id="credentialsDetails" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne" aria-expanded="false" style="        height: 0px;">
                                <div class="panel-body">
                                    <input data-val="true" data-val-required="The GatewayId field is required." id="GatewayId" name="GatewayId" type="hidden" value="">
                                    <div class="form-inline no-margin">
                                        <div class="form-group">
                                            Gateway Name&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Easy to remember name for SMS gateway"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="form-group" style="        margin-right: 9px;">
                                            <input class="form-control input" data-val="true" data-val-length="The Gateway Name should not be more than 50 characters long." data-val-length-max="50" data-val-required="Gateway Name is required" id="GatewayName" maxlength="50" name="GatewayName" placeholder="Gateway Name" style="width: 148px;" tabindex="1" type="text" value="">
                                        </div>
                                        <div class="form-group" style="        margin-right: 15px;">
                                            Ip Address&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="IP address of the SMSC"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="form-group">
                                            <input class="form-control input" id="IPAddress" maxlength="50" name="IPAddress" placeholder="IP Address" style="width: 140px;" tabindex="2" type="text" value="">
                                        </div>
                                    </div>

                                    <br>
                                    <div class="form-inline no-margin">
                                        <div class="form-group" style="        margin-right: 29px;">
                                            System Id&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Identified the ESEME system requesting the bind as a receiver/transmitter/transceiver with the SMSC"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="form-group" style="        margin-right: 9px;">
                                            <input class="form-control input" data-val="true" data-val-required="System Id is required" id="SystemId" maxlength="50" name="SystemId" placeholder="System Id" style="width: 148px;" tabindex="3" type="text" value="">
                                        </div>
                                        <div class="form-group" style="        margin-right: 21px;">
                                            Password&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Password may be used by the SMSC for security reasons to authenticate the ESME requesting to bind"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="form-group">
                                            <input class="form-control input" data-val="true" data-val-required="Password is required" id="Password" maxlength="50" name="Password" placeholder="Password" style="width: 140px;" tabindex="4" type="text" value="">
                                        </div>
                                    </div>

                                    <br>
                                    <div class="form-inline no-margin">
                                        <div class="form-group" style="        margin-right: 46px;">
                                            Tx Port&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Transmitter port the ESME system to bind"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="form-group" style="        margin-right: 9px;">
                                            <input class="form-control NumberValidation" data-val="true" data-val-required="Tx Port is required" id="TxPort" maxlength="10" name="TxPort" style="width: 148px;" tabindex="5" type="text" value="">
                                        </div>
                                        <div class="form-group" style="        margin-right: 34px;">
                                            Rx Port&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Receiver port the ESME system to bind"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="form-group">
                                            <input class="form-control NumberValidation" data-val="true" data-val-required="Rx Port is required" id="RxPort" maxlength="10" name="RxPort" style="width: 140px;" tabindex="6" type="text" value="">
                                        </div>
                                    </div>

                                    <br>
                                    <div class="form-inline no-margin">
                                        <div class="form-group" style="        margin-right: 36px;">
                                            TxR Port&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Transceiver port the ESME system to bind"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="form-group" style="        margin-right: 9px;">
                                            <input class="form-control NumberValidation" data-val="true" data-val-required="TxRx Port is required" id="TxRxPort" maxlength="10" name="TxRxPort" style="width: 148px;" tabindex="7" type="text" value="">
                                        </div>
                                        <div class="form-group" style="        margin-right: 8px;">
                                            System Type&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="top" style="        color: black;" data-original-title="Identifies the type of ESME system requesting to bind as a receiver/transmitter/transceiver with the SMSC"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="form-group">
                                            <input class="form-control" id="SystemType" maxlength="4" name="SystemType" placeholder="System Type" style="width: 140px;" tabindex="8" type="text" value="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" style="        color: #333">
                                <h4 class="panel-title" style="        font-size: 12px">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#Details" aria-expanded="false" aria-controls="collapseOne" class="collapsed">
                                        <i class="fa fa-angle-double-down"></i>&nbsp;Gateway Properties
                                    </a>
                                </h4>
                            </div>
                            <div id="Details" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne" aria-expanded="false" style="        height: 0px;">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-3 col-xs-12">
                                            Window Size&nbsp;<a href="#" rel="tooltip" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="SMPP Async mode is a windowing protocol. Most SMPP implementations will allow you to tune performance by specifying a maximum window size i.e maximum number of outstanding transactions before requiring a response to at least one of the outstanding transactions. A higher value than expected may force SMSC to reject your messages. Default recommended value is between 5-20 depending on your bandwidth and latency."><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3 col-xs-12">
                                            <input class=" form-control NumberValidation" data-val="true" data-val-required="Window Size is required" id="WindowSize" maxlength="10" name="WindowSize" style="width: 110px;" tabindex="9" type="text" value="">
                                        </div>
                                        <div class="col-md-3 col-xs-12">
                                            Keep Alive Interval&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Also knows as enquire link interval, specifies the time lapse allowed between operations after which ESME should interrogate whether its peer still has an active session."><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3 col-xs-12">
                                            <input class="form-control NumberValidation" data-val="true" data-val-required="Keep Alive Interval is required" id="KeepAliveInterval" maxlength="10" name="KeepAliveInterval" style="width: 100px;" tabindex="10" type="text" value="">
                                        </div>
                                    </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-md-3 p-r-0">
                                            Gateway Open Time <span style="        color: red">(hh:mm)</span>&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Certain SMSC, limit start operation of ESME within a limited time frame to meet Do not disturb policy."><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3 ">
                                            <input class="form-control" id="GatewayOpenTime" name="GatewayOpenTime" style="width: 110px;" tabindex="11" type="text" value="">
                                        </div>
                                        <div class="col-md-3 p-r-0">
                                            Gateway Close Time <span style="        color: red">(hh:mm)</span>&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Certain SMSC, limit end operation of ESME within a limited time frame to meet Do not disturb policy."><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <input class="form-control " data-val="true" data-val-required="Gateway Close Time is required" id="GatewayCloseTime" name="GatewayCloseTime" style="width: 100px;" tabindex="12" type="text" value="">
                                        </div>
                                    </div>
                                    <hr>
                                    <span><b>Ex. :</b> For gateway opened at 9 AM &amp; Closed at 9 PM :-</span>
                                    <br>

                                    <span style="        vertical-align: -webkit-baseline-middle;
        padding-left: 32px;"><b>Gateway Open Time</b>: 09:00 |<b>Gateway Close Time </b>: 21:00</span>

                                    <hr style="        margin-bottom: 0px;">

                                    <br>
                                    <div class="row">
                                        <div class="col-md-3 col-xs-12">
                                            Gateway Encoding&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Character set used by SMSC"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3 col-xs-12">
                                            <select class="form-control" data-val="true" data-val-required="The GatewayEncoding field is required." id="GatewayEncoding" name="GatewayEncoding" style="width: 110px" tabindex="13"><option value="1">Gsm 7 bit</option>
<option value="2">ISO 8859(latin)</option>
</select>
                                        </div>
                                        <div class="col-md-3">
                                            Convert MessageId&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="top" style="        color: black;" data-original-title="Some SMSC change original MessageId value type in Delivery reports from Decimal to Hex or vice-versa. Select appropriate conversion rule based on your SMSC document.Applicable conversion method can be selected here"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <select class="form-control" data-val="true" data-val-required="Message Id Conversion Type is required" id="MessageIdConversionType" name="MessageIdConversionType" style="width: 100px" tabindex="14"><option value="0">No Conversion</option>
<option value="1">From hex to decimal</option>
<option value="2">From decimal to hex</option>
</select>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="row">
                                    </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-md-3">
                                            Time Zone&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Which Time Zone Followed by your SMSC"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-7">
                                            <select class="form-control" id="TimeZone" name="TimeZone" style="padding:0" tabindex="15"><option value="Pacific/Niue">(UTC -11:0) Pacific/Niue</option>
<option value="Pacific/Pago_Pago">(UTC -11:0) Pacific/Pago_Pago</option>
<option value="Pacific/Midway">(UTC -11:0) Pacific/Midway</option>
<option value="Pacific/Rarotonga">(UTC -10:0) Pacific/Rarotonga</option>
<option value="Pacific/Honolulu">(UTC -10:0) Pacific/Honolulu</option>
<option value="America/Adak">(UTC -10:0) America/Adak</option>
<option value="Pacific/Tahiti">(UTC -10:0) Pacific/Tahiti</option>
<option value="Pacific/Marquesas">(UTC -9:-30) Pacific/Marquesas</option>
<option value="America/Juneau">(UTC -9:0) America/Juneau</option>
<option value="America/Yakutat">(UTC -9:0) America/Yakutat</option>
<option value="America/Anchorage">(UTC -9:0) America/Anchorage</option>
<option value="America/Nome">(UTC -9:0) America/Nome</option>
<option value="America/Sitka">(UTC -9:0) America/Sitka</option>
<option value="Pacific/Gambier">(UTC -9:0) Pacific/Gambier</option>
<option value="America/Metlakatla">(UTC -9:0) America/Metlakatla</option>
<option value="America/Los_Angeles">(UTC -8:0) America/Los_Angeles</option>
<option value="America/Vancouver">(UTC -8:0) America/Vancouver</option>
<option value="America/Whitehorse">(UTC -8:0) America/Whitehorse</option>
<option value="America/Tijuana">(UTC -8:0) America/Tijuana</option>
<option value="America/Dawson">(UTC -8:0) America/Dawson</option>
<option value="Pacific/Pitcairn">(UTC -8:0) Pacific/Pitcairn</option>
<option value="America/Fort_Nelson">(UTC -7:0) America/Fort_Nelson</option>
<option value="America/Mazatlan">(UTC -7:0) America/Mazatlan</option>
<option value="America/Hermosillo">(UTC -7:0) America/Hermosillo</option>
<option value="America/Chihuahua">(UTC -7:0) America/Chihuahua</option>
<option value="America/Phoenix">(UTC -7:0) America/Phoenix</option>
<option value="America/Boise">(UTC -7:0) America/Boise</option>
<option value="America/Denver">(UTC -7:0) America/Denver</option>
<option value="America/Yellowknife">(UTC -7:0) America/Yellowknife</option>
<option value="America/Creston">(UTC -7:0) America/Creston</option>
<option value="America/Inuvik">(UTC -7:0) America/Inuvik</option>
<option value="America/Cambridge_Bay">(UTC -7:0) America/Cambridge_Bay</option>
<option value="America/Edmonton">(UTC -7:0) America/Edmonton</option>
<option value="America/Ojinaga">(UTC -7:0) America/Ojinaga</option>
<option value="America/Dawson_Creek">(UTC -7:0) America/Dawson_Creek</option>
<option value="America/Chicago">(UTC -6:0) America/Chicago</option>
<option value="America/Swift_Current">(UTC -6:0) America/Swift_Current</option>
<option value="America/Regina">(UTC -6:0) America/Regina</option>
<option value="America/Guatemala">(UTC -6:0) America/Guatemala</option>
<option value="America/Resolute">(UTC -6:0) America/Resolute</option>
<option value="America/Rainy_River">(UTC -6:0) America/Rainy_River</option>
<option value="America/Winnipeg">(UTC -6:0) America/Winnipeg</option>
<option value="America/Belize">(UTC -6:0) America/Belize</option>
<option value="America/Tegucigalpa">(UTC -6:0) America/Tegucigalpa</option>
<option value="America/Indiana/Tell_City">(UTC -6:0) America/Indiana/Tell_City</option>
<option value="America/Rankin_Inlet">(UTC -6:0) America/Rankin_Inlet</option>
<option value="America/Indiana/Knox">(UTC -6:0) America/Indiana/Knox</option>
<option value="America/Bahia_Banderas">(UTC -6:0) America/Bahia_Banderas</option>
<option value="America/Managua">(UTC -6:0) America/Managua</option>
<option value="America/El_Salvador">(UTC -6:0) America/El_Salvador</option>
<option value="America/Monterrey">(UTC -6:0) America/Monterrey</option>
<option value="America/Merida">(UTC -6:0) America/Merida</option>
<option value="America/Costa_Rica">(UTC -6:0) America/Costa_Rica</option>
<option value="America/Matamoros">(UTC -6:0) America/Matamoros</option>
<option value="America/North_Dakota/Center">(UTC -6:0) America/North_Dakota/Center</option>
<option value="America/North_Dakota/Beulah">(UTC -6:0) America/North_Dakota/Beulah</option>
<option value="America/North_Dakota/New_Salem">(UTC -6:0) America/North_Dakota/New_Salem</option>
<option value="America/Mexico_City">(UTC -6:0) America/Mexico_City</option>
<option value="America/Menominee">(UTC -6:0) America/Menominee</option>
<option value="Pacific/Easter">(UTC -6:0) Pacific/Easter</option>
<option value="Pacific/Galapagos">(UTC -6:0) Pacific/Galapagos</option>
<option value="America/Eirunepe">(UTC -5:0) America/Eirunepe</option>
<option value="America/Rio_Branco">(UTC -5:0) America/Rio_Branco</option>
<option value="America/Grand_Turk">(UTC -5:0) America/Grand_Turk</option>
<option value="America/Bogota">(UTC -5:0) America/Bogota</option>
<option value="America/Havana">(UTC -5:0) America/Havana</option>
<option value="America/Kentucky/Monticello">(UTC -5:0) America/Kentucky/Monticello</option>
<option value="America/Kentucky/Louisville">(UTC -5:0) America/Kentucky/Louisville</option>
<option value="America/Toronto">(UTC -5:0) America/Toronto</option>
<option value="America/Nipigon">(UTC -5:0) America/Nipigon</option>
<option value="America/Cancun">(UTC -5:0) America/Cancun</option>
<option value="America/Iqaluit">(UTC -5:0) America/Iqaluit</option>
<option value="America/Pangnirtung">(UTC -5:0) America/Pangnirtung</option>
<option value="America/Atikokan">(UTC -5:0) America/Atikokan</option>
<option value="America/Detroit">(UTC -5:0) America/Detroit</option>
<option value="America/New_York">(UTC -5:0) America/New_York</option>
<option value="America/Panama">(UTC -5:0) America/Panama</option>
<option value="America/Thunder_Bay">(UTC -5:0) America/Thunder_Bay</option>
<option value="America/Indiana/Indianapolis">(UTC -5:0) America/Indiana/Indianapolis</option>
<option value="America/Cayman">(UTC -5:0) America/Cayman</option>
<option value="America/Indiana/Vevay">(UTC -5:0) America/Indiana/Vevay</option>
<option value="America/Port-au-Prince">(UTC -5:0) America/Port-au-Prince</option>
<option value="America/Indiana/Petersburg">(UTC -5:0) America/Indiana/Petersburg</option>
<option value="America/Indiana/Marengo">(UTC -5:0) America/Indiana/Marengo</option>
<option value="America/Indiana/Winamac">(UTC -5:0) America/Indiana/Winamac</option>
<option value="America/Indiana/Vincennes">(UTC -5:0) America/Indiana/Vincennes</option>
<option value="America/Jamaica">(UTC -5:0) America/Jamaica</option>
<option value="America/Nassau">(UTC -5:0) America/Nassau</option>
<option value="America/Guayaquil">(UTC -5:0) America/Guayaquil</option>
<option value="America/Lima">(UTC -5:0) America/Lima</option>
<option value="America/Campo_Grande">(UTC -4:0) America/Campo_Grande</option>
<option value="America/Manaus">(UTC -4:0) America/Manaus</option>
<option value="America/Boa_Vista">(UTC -4:0) America/Boa_Vista</option>
<option value="America/Porto_Velho">(UTC -4:0) America/Porto_Velho</option>
<option value="America/Cuiaba">(UTC -4:0) America/Cuiaba</option>
<option value="America/Lower_Princes">(UTC -4:0) America/Lower_Princes</option>
<option value="America/St_Kitts">(UTC -4:0) America/St_Kitts</option>
<option value="America/St_Thomas">(UTC -4:0) America/St_Thomas</option>
<option value="America/Tortola">(UTC -4:0) America/Tortola</option>
<option value="America/Thule">(UTC -4:0) America/Thule</option>
<option value="America/Port_of_Spain">(UTC -4:0) America/Port_of_Spain</option>
<option value="America/Curacao">(UTC -4:0) America/Curacao</option>
<option value="America/Antigua">(UTC -4:0) America/Antigua</option>
<option value="America/Grenada">(UTC -4:0) America/Grenada</option>
<option value="America/Anguilla">(UTC -4:0) America/Anguilla</option>
<option value="America/Puerto_Rico">(UTC -4:0) America/Puerto_Rico</option>
<option value="America/St_Vincent">(UTC -4:0) America/St_Vincent</option>
<option value="America/Martinique">(UTC -4:0) America/Martinique</option>
<option value="America/Santo_Domingo">(UTC -4:0) America/Santo_Domingo</option>
<option value="America/Marigot">(UTC -4:0) America/Marigot</option>
<option value="America/St_Lucia">(UTC -4:0) America/St_Lucia</option>
<option value="America/Dominica">(UTC -4:0) America/Dominica</option>
<option value="America/Guadeloupe">(UTC -4:0) America/Guadeloupe</option>
<option value="America/Moncton">(UTC -4:0) America/Moncton</option>
<option value="America/Kralendijk">(UTC -4:0) America/Kralendijk</option>
<option value="America/Barbados">(UTC -4:0) America/Barbados</option>
<option value="America/Montserrat">(UTC -4:0) America/Montserrat</option>
<option value="America/Aruba">(UTC -4:0) America/Aruba</option>
<option value="America/Halifax">(UTC -4:0) America/Halifax</option>
<option value="America/St_Barthelemy">(UTC -4:0) America/St_Barthelemy</option>
<option value="America/Glace_Bay">(UTC -4:0) America/Glace_Bay</option>
<option value="Atlantic/Bermuda">(UTC -4:0) Atlantic/Bermuda</option>
<option value="America/Goose_Bay">(UTC -4:0) America/Goose_Bay</option>
<option value="America/Blanc-Sablon">(UTC -4:0) America/Blanc-Sablon</option>
<option value="America/La_Paz">(UTC -4:0) America/La_Paz</option>
<option value="America/Santiago">(UTC -4:0) America/Santiago</option>
<option value="America/Guyana">(UTC -4:0) America/Guyana</option>
<option value="America/Asuncion">(UTC -4:0) America/Asuncion</option>
<option value="America/Caracas">(UTC -4:0) America/Caracas</option>
<option value="America/St_Johns">(UTC -3:-30) America/St_Johns</option>
<option value="America/Argentina/Ushuaia">(UTC -3:0) America/Argentina/Ushuaia</option>
<option value="America/Argentina/Buenos_Aires">(UTC -3:0) America/Argentina/Buenos_Aires</option>
<option value="America/Argentina/Salta">(UTC -3:0) America/Argentina/Salta</option>
<option value="America/Argentina/Rio_Gallegos">(UTC -3:0) America/Argentina/Rio_Gallegos</option>
<option value="America/Argentina/Jujuy">(UTC -3:0) America/Argentina/Jujuy</option>
<option value="America/Argentina/Mendoza">(UTC -3:0) America/Argentina/Mendoza</option>
<option value="America/Argentina/San_Juan">(UTC -3:0) America/Argentina/San_Juan</option>
<option value="America/Argentina/La_Rioja">(UTC -3:0) America/Argentina/La_Rioja</option>
<option value="America/Argentina/Catamarca">(UTC -3:0) America/Argentina/Catamarca</option>
<option value="America/Argentina/Tucuman">(UTC -3:0) America/Argentina/Tucuman</option>
<option value="America/Argentina/Cordoba">(UTC -3:0) America/Argentina/Cordoba</option>
<option value="America/Santarem">(UTC -3:0) America/Santarem</option>
<option value="America/Sao_Paulo">(UTC -3:0) America/Sao_Paulo</option>
<option value="America/Maceio">(UTC -3:0) America/Maceio</option>
<option value="America/Araguaina">(UTC -3:0) America/Araguaina</option>
<option value="America/Recife">(UTC -3:0) America/Recife</option>
<option value="America/Fortaleza">(UTC -3:0) America/Fortaleza</option>
<option value="America/Belem">(UTC -3:0) America/Belem</option>
<option value="America/Bahia">(UTC -3:0) America/Bahia</option>
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
<option value="Africa/Ouagadougou">(UTC + 0:0) Africa/Ouagadougou</option>
<option value="Africa/Bissau">(UTC + 0:0) Africa/Bissau</option>
<option value="Africa/Nouakchott">(UTC + 0:0) Africa/Nouakchott</option>
<option value="Antarctica/Troll">(UTC + 0:0) Antarctica/Troll</option>
<option value="Europe/Jersey">(UTC + 0:0) Europe/Jersey</option>
<option value="Europe/Isle_of_Man">(UTC + 0:0) Europe/Isle_of_Man</option>
<option value="Atlantic/St_Helena">(UTC + 0:0) Atlantic/St_Helena</option>
<option value="Africa/Dakar">(UTC + 0:0) Africa/Dakar</option>
<option value="Africa/Monrovia">(UTC + 0:0) Africa/Monrovia</option>
<option value="Atlantic/Reykjavik">(UTC + 0:0) Atlantic/Reykjavik</option>
<option value="Africa/Banjul">(UTC + 0:0) Africa/Banjul</option>
<option value="Africa/Abidjan">(UTC + 0:0) Africa/Abidjan</option>
<option value="America/Danmarkshavn">(UTC + 0:0) America/Danmarkshavn</option>
<option value="Africa/Bamako">(UTC + 0:0) Africa/Bamako</option>
<option value="Africa/Accra">(UTC + 0:0) Africa/Accra</option>
<option value="Europe/Guernsey">(UTC + 0:0) Europe/Guernsey</option>
<option value="Africa/Freetown">(UTC + 0:0) Africa/Freetown</option>
<option value="Africa/Lome">(UTC + 0:0) Africa/Lome</option>
<option value="Europe/London">(UTC + 0:0) Europe/London</option>
<option value="Africa/Conakry">(UTC + 0:0) Africa/Conakry</option>
<option value="Africa/Sao_Tome">(UTC + 0:0) Africa/Sao_Tome</option>
<option value="Atlantic/Canary">(UTC + 0:0) Atlantic/Canary</option>
<option value="Europe/Lisbon">(UTC + 0:0) Europe/Lisbon</option>
<option value="Atlantic/Faroe">(UTC + 0:0) Atlantic/Faroe</option>
<option value="Atlantic/Madeira">(UTC + 0:0) Atlantic/Madeira</option>
<option value="Europe/Podgorica">(UTC + 1:0) Europe/Podgorica</option>
<option value="Europe/Oslo">(UTC + 1:0) Europe/Oslo</option>
<option value="Europe/Amsterdam">(UTC + 1:0) Europe/Amsterdam</option>
<option value="Europe/Monaco">(UTC + 1:0) Europe/Monaco</option>
<option value="Europe/Vaduz">(UTC + 1:0) Europe/Vaduz</option>
<option value="Europe/Malta">(UTC + 1:0) Europe/Malta</option>
<option value="Europe/Rome">(UTC + 1:0) Europe/Rome</option>
<option value="Europe/Luxembourg">(UTC + 1:0) Europe/Luxembourg</option>
<option value="Europe/Andorra">(UTC + 1:0) Europe/Andorra</option>
<option value="Europe/Copenhagen">(UTC + 1:0) Europe/Copenhagen</option>
<option value="Europe/Tirane">(UTC + 1:0) Europe/Tirane</option>
<option value="Europe/Vatican">(UTC + 1:0) Europe/Vatican</option>
<option value="Europe/Vienna">(UTC + 1:0) Europe/Vienna</option>
<option value="Europe/Sarajevo">(UTC + 1:0) Europe/Sarajevo</option>
<option value="Europe/Brussels">(UTC + 1:0) Europe/Brussels</option>
<option value="Europe/Zurich">(UTC + 1:0) Europe/Zurich</option>
<option value="Africa/Tunis">(UTC + 1:0) Africa/Tunis</option>
<option value="Europe/Prague">(UTC + 1:0) Europe/Prague</option>
<option value="Europe/Berlin">(UTC + 1:0) Europe/Berlin</option>
<option value="Europe/Busingen">(UTC + 1:0) Europe/Busingen</option>
<option value="Europe/Warsaw">(UTC + 1:0) Europe/Warsaw</option>
<option value="Africa/Algiers">(UTC + 1:0) Africa/Algiers</option>
<option value="Europe/Madrid">(UTC + 1:0) Europe/Madrid</option>
<option value="Africa/Ceuta">(UTC + 1:0) Africa/Ceuta</option>
<option value="Europe/San_Marino">(UTC + 1:0) Europe/San_Marino</option>
<option value="Europe/Skopje">(UTC + 1:0) Europe/Skopje</option>
<option value="Europe/Belgrade">(UTC + 1:0) Europe/Belgrade</option>
<option value="Europe/Bratislava">(UTC + 1:0) Europe/Bratislava</option>
<option value="Arctic/Longyearbyen">(UTC + 1:0) Arctic/Longyearbyen</option>
<option value="Europe/Paris">(UTC + 1:0) Europe/Paris</option>
<option value="Europe/Budapest">(UTC + 1:0) Europe/Budapest</option>
<option value="Europe/Ljubljana">(UTC + 1:0) Europe/Ljubljana</option>
<option value="Europe/Zagreb">(UTC + 1:0) Europe/Zagreb</option>
<option value="Europe/Gibraltar">(UTC + 1:0) Europe/Gibraltar</option>
<option value="Europe/Stockholm">(UTC + 1:0) Europe/Stockholm</option>
<option value="Europe/Dublin">(UTC + 1:0) Europe/Dublin</option>
<option value="Africa/Luanda">(UTC + 1:0) Africa/Luanda</option>
<option value="Africa/Porto-Novo">(UTC + 1:0) Africa/Porto-Novo</option>
<option value="Africa/Kinshasa">(UTC + 1:0) Africa/Kinshasa</option>
<option value="Africa/Brazzaville">(UTC + 1:0) Africa/Brazzaville</option>
<option value="Africa/Malabo">(UTC + 1:0) Africa/Malabo</option>
<option value="Africa/Douala">(UTC + 1:0) Africa/Douala</option>
<option value="Africa/Ndjamena">(UTC + 1:0) Africa/Ndjamena</option>
<option value="Africa/Libreville">(UTC + 1:0) Africa/Libreville</option>
<option value="Africa/Lagos">(UTC + 1:0) Africa/Lagos</option>
<option value="Africa/Bangui">(UTC + 1:0) Africa/Bangui</option>
<option value="Africa/Niamey">(UTC + 1:0) Africa/Niamey</option>
<option value="Africa/Casablanca">(UTC + 1:0) Africa/Casablanca</option>
<option value="Africa/El_Aaiun">(UTC + 1:0) Africa/El_Aaiun</option>
<option value="Africa/Blantyre">(UTC + 2:0) Africa/Blantyre</option>
<option value="Africa/Maputo">(UTC + 2:0) Africa/Maputo</option>
<option value="Africa/Kigali">(UTC + 2:0) Africa/Kigali</option>
<option value="Africa/Harare">(UTC + 2:0) Africa/Harare</option>
<option value="Africa/Bujumbura">(UTC + 2:0) Africa/Bujumbura</option>
<option value="Africa/Lubumbashi">(UTC + 2:0) Africa/Lubumbashi</option>
<option value="Africa/Lusaka">(UTC + 2:0) Africa/Lusaka</option>
<option value="Africa/Gaborone">(UTC + 2:0) Africa/Gaborone</option>
<option value="Africa/Khartoum">(UTC + 2:0) Africa/Khartoum</option>
<option value="Africa/Cairo">(UTC + 2:0) Africa/Cairo</option>
<option value="Europe/Helsinki">(UTC + 2:0) Europe/Helsinki</option>
<option value="Europe/Kiev">(UTC + 2:0) Europe/Kiev</option>
<option value="Europe/Uzhgorod">(UTC + 2:0) Europe/Uzhgorod</option>
<option value="Europe/Zaporozhye">(UTC + 2:0) Europe/Zaporozhye</option>
<option value="Europe/Tallinn">(UTC + 2:0) Europe/Tallinn</option>
<option value="Europe/Sofia">(UTC + 2:0) Europe/Sofia</option>
<option value="Europe/Athens">(UTC + 2:0) Europe/Athens</option>
<option value="Asia/Gaza">(UTC + 2:0) Asia/Gaza</option>
<option value="Asia/Hebron">(UTC + 2:0) Asia/Hebron</option>
<option value="Europe/Kaliningrad">(UTC + 2:0) Europe/Kaliningrad</option>
<option value="Asia/Amman">(UTC + 2:0) Asia/Amman</option>
<option value="Asia/Damascus">(UTC + 2:0) Asia/Damascus</option>
<option value="Europe/Mariehamn">(UTC + 2:0) Europe/Mariehamn</option>
<option value="Europe/Bucharest">(UTC + 2:0) Europe/Bucharest</option>
<option value="Africa/Tripoli">(UTC + 2:0) Africa/Tripoli</option>
<option value="Europe/Chisinau">(UTC + 2:0) Europe/Chisinau</option>
<option value="Europe/Vilnius">(UTC + 2:0) Europe/Vilnius</option>
<option value="Asia/Nicosia">(UTC + 2:0) Asia/Nicosia</option>
<option value="Europe/Riga">(UTC + 2:0) Europe/Riga</option>
<option value="Asia/Beirut">(UTC + 2:0) Asia/Beirut</option>
<option value="Asia/Famagusta">(UTC + 2:0) Asia/Famagusta</option>
<option value="Asia/Jerusalem">(UTC + 2:0) Asia/Jerusalem</option>
<option value="Africa/Maseru">(UTC + 2:0) Africa/Maseru</option>
<option value="Africa/Mbabane">(UTC + 2:0) Africa/Mbabane</option>
<option value="Africa/Johannesburg">(UTC + 2:0) Africa/Johannesburg</option>
<option value="Africa/Windhoek">(UTC + 2:0) Africa/Windhoek</option>
<option value="Asia/Bahrain">(UTC + 3:0) Asia/Bahrain</option>
<option value="Asia/Kuwait">(UTC + 3:0) Asia/Kuwait</option>
<option value="Asia/Riyadh">(UTC + 3:0) Asia/Riyadh</option>
<option value="Asia/Baghdad">(UTC + 3:0) Asia/Baghdad</option>
<option value="Asia/Qatar">(UTC + 3:0) Asia/Qatar</option>
<option value="Asia/Aden">(UTC + 3:0) Asia/Aden</option>
<option value="Africa/Nairobi">(UTC + 3:0) Africa/Nairobi</option>
<option value="Africa/Kampala">(UTC + 3:0) Africa/Kampala</option>
<option value="Indian/Antananarivo">(UTC + 3:0) Indian/Antananarivo</option>
<option value="Africa/Mogadishu">(UTC + 3:0) Africa/Mogadishu</option>
<option value="Africa/Djibouti">(UTC + 3:0) Africa/Djibouti</option>
<option value="Indian/Mayotte">(UTC + 3:0) Indian/Mayotte</option>
<option value="Indian/Comoro">(UTC + 3:0) Indian/Comoro</option>
<option value="Africa/Addis_Ababa">(UTC + 3:0) Africa/Addis_Ababa</option>
<option value="Africa/Dar_es_Salaam">(UTC + 3:0) Africa/Dar_es_Salaam</option>
<option value="Africa/Juba">(UTC + 3:0) Africa/Juba</option>
<option value="Africa/Asmara">(UTC + 3:0) Africa/Asmara</option>
<option value="Europe/Istanbul">(UTC + 3:0) Europe/Istanbul</option>
<option value="Europe/Minsk">(UTC + 3:0) Europe/Minsk</option>
<option value="Europe/Kirov">(UTC + 3:0) Europe/Kirov</option>
<option value="Europe/Moscow">(UTC + 3:0) Europe/Moscow</option>
<option value="Europe/Simferopol">(UTC + 3:0) Europe/Simferopol</option>
<option value="Antarctica/Syowa">(UTC + 3:0) Antarctica/Syowa</option>
<option value="Asia/Tehran">(UTC + 3:30) Asia/Tehran</option>
<option value="Asia/Yerevan">(UTC + 4:0) Asia/Yerevan</option>
<option value="Asia/Baku">(UTC + 4:0) Asia/Baku</option>
<option value="Europe/Ulyanovsk">(UTC + 4:0) Europe/Ulyanovsk</option>
<option value="Europe/Saratov">(UTC + 4:0) Europe/Saratov</option>
<option value="Europe/Astrakhan">(UTC + 4:0) Europe/Astrakhan</option>
<option value="Asia/Tbilisi">(UTC + 4:0) Asia/Tbilisi</option>
<option value="Asia/Dubai">(UTC + 4:0) Asia/Dubai</option>
<option value="Asia/Muscat">(UTC + 4:0) Asia/Muscat</option>
<option value="Indian/Mauritius">(UTC + 4:0) Indian/Mauritius</option>
<option value="Europe/Volgograd">(UTC + 4:0) Europe/Volgograd</option>
<option value="Indian/Reunion">(UTC + 4:0) Indian/Reunion</option>
<option value="Europe/Samara">(UTC + 4:0) Europe/Samara</option>
<option value="Indian/Mahe">(UTC + 4:0) Indian/Mahe</option>
<option value="Asia/Kabul">(UTC + 4:30) Asia/Kabul</option>
<option value="Asia/Qyzylorda">(UTC + 5:0) Asia/Qyzylorda</option>
<option value="Indian/Kerguelen">(UTC + 5:0) Indian/Kerguelen</option>
<option value="Asia/Atyrau">(UTC + 5:0) Asia/Atyrau</option>
<option value="Indian/Maldives">(UTC + 5:0) Indian/Maldives</option>
<option value="Antarctica/Mawson">(UTC + 5:0) Antarctica/Mawson</option>
<option value="Asia/Karachi">(UTC + 5:0) Asia/Karachi</option>
<option value="Asia/Dushanbe">(UTC + 5:0) Asia/Dushanbe</option>
<option value="Asia/Ashgabat">(UTC + 5:0) Asia/Ashgabat</option>
<option value="Asia/Tashkent">(UTC + 5:0) Asia/Tashkent</option>
<option value="Asia/Samarkand">(UTC + 5:0) Asia/Samarkand</option>
<option value="Asia/Aqtobe">(UTC + 5:0) Asia/Aqtobe</option>
<option value="Asia/Aqtau">(UTC + 5:0) Asia/Aqtau</option>
<option value="Asia/Oral">(UTC + 5:0) Asia/Oral</option>
<option value="Asia/Yekaterinburg">(UTC + 5:0) Asia/Yekaterinburg</option>
<option value="Asia/Kolkata">(UTC + 5:30) Asia/Kolkata</option>
<option value="Asia/Colombo">(UTC + 5:30) Asia/Colombo</option>
<option value="Asia/Kathmandu">(UTC + 5:45) Asia/Kathmandu</option>
<option value="Asia/Dhaka">(UTC + 6:0) Asia/Dhaka</option>
<option value="Asia/Thimphu">(UTC + 6:0) Asia/Thimphu</option>
<option value="Asia/Almaty">(UTC + 6:0) Asia/Almaty</option>
<option value="Asia/Qostanay">(UTC + 6:0) Asia/Qostanay</option>
<option value="Asia/Urumqi">(UTC + 6:0) Asia/Urumqi</option>
<option value="Indian/Chagos">(UTC + 6:0) Indian/Chagos</option>
<option value="Asia/Bishkek">(UTC + 6:0) Asia/Bishkek</option>
<option value="Asia/Omsk">(UTC + 6:0) Asia/Omsk</option>
<option value="Antarctica/Vostok">(UTC + 6:0) Antarctica/Vostok</option>
<option value="Indian/Cocos">(UTC + 6:30) Indian/Cocos</option>
<option value="Asia/Yangon">(UTC + 6:30) Asia/Yangon</option>
<option value="Indian/Christmas">(UTC + 7:0) Indian/Christmas</option>
<option value="Antarctica/Davis">(UTC + 7:0) Antarctica/Davis</option>
<option value="Asia/Barnaul">(UTC + 7:0) Asia/Barnaul</option>
<option value="Asia/Tomsk">(UTC + 7:0) Asia/Tomsk</option>
<option value="Asia/Hovd">(UTC + 7:0) Asia/Hovd</option>
<option value="Asia/Vientiane">(UTC + 7:0) Asia/Vientiane</option>
<option value="Asia/Bangkok">(UTC + 7:0) Asia/Bangkok</option>
<option value="Asia/Ho_Chi_Minh">(UTC + 7:0) Asia/Ho_Chi_Minh</option>
<option value="Asia/Phnom_Penh">(UTC + 7:0) Asia/Phnom_Penh</option>
<option value="Asia/Novokuznetsk">(UTC + 7:0) Asia/Novokuznetsk</option>
<option value="Asia/Krasnoyarsk">(UTC + 7:0) Asia/Krasnoyarsk</option>
<option value="Asia/Novosibirsk">(UTC + 7:0) Asia/Novosibirsk</option>
<option value="Asia/Jakarta">(UTC + 7:0) Asia/Jakarta</option>
<option value="Asia/Pontianak">(UTC + 7:0) Asia/Pontianak</option>
<option value="Australia/Perth">(UTC + 8:0) Australia/Perth</option>
<option value="Antarctica/Casey">(UTC + 8:0) Antarctica/Casey</option>
<option value="Asia/Brunei">(UTC + 8:0) Asia/Brunei</option>
<option value="Asia/Makassar">(UTC + 8:0) Asia/Makassar</option>
<option value="Asia/Shanghai">(UTC + 8:0) Asia/Shanghai</option>
<option value="Asia/Macau">(UTC + 8:0) Asia/Macau</option>
<option value="Asia/Choibalsan">(UTC + 8:0) Asia/Choibalsan</option>
<option value="Asia/Hong_Kong">(UTC + 8:0) Asia/Hong_Kong</option>
<option value="Asia/Irkutsk">(UTC + 8:0) Asia/Irkutsk</option>
<option value="Asia/Kuala_Lumpur">(UTC + 8:0) Asia/Kuala_Lumpur</option>
<option value="Asia/Kuching">(UTC + 8:0) Asia/Kuching</option>
<option value="Asia/Manila">(UTC + 8:0) Asia/Manila</option>
<option value="Asia/Singapore">(UTC + 8:0) Asia/Singapore</option>
<option value="Asia/Taipei">(UTC + 8:0) Asia/Taipei</option>
<option value="Asia/Ulaanbaatar">(UTC + 8:0) Asia/Ulaanbaatar</option>
<option value="Australia/Eucla">(UTC + 8:45) Australia/Eucla</option>
<option value="Asia/Dili">(UTC + 9:0) Asia/Dili</option>
<option value="Asia/Jayapura">(UTC + 9:0) Asia/Jayapura</option>
<option value="Asia/Chita">(UTC + 9:0) Asia/Chita</option>
<option value="Asia/Tokyo">(UTC + 9:0) Asia/Tokyo</option>
<option value="Asia/Pyongyang">(UTC + 9:0) Asia/Pyongyang</option>
<option value="Asia/Seoul">(UTC + 9:0) Asia/Seoul</option>
<option value="Pacific/Palau">(UTC + 9:0) Pacific/Palau</option>
<option value="Asia/Khandyga">(UTC + 9:0) Asia/Khandyga</option>
<option value="Asia/Yakutsk">(UTC + 9:0) Asia/Yakutsk</option>
<option value="Australia/Broken_Hill">(UTC + 9:30) Australia/Broken_Hill</option>
<option value="Australia/Adelaide">(UTC + 9:30) Australia/Adelaide</option>
<option value="Australia/Darwin">(UTC + 9:30) Australia/Darwin</option>
<option value="Australia/Currie">(UTC + 10:0) Australia/Currie</option>
<option value="Australia/Melbourne">(UTC + 10:0) Australia/Melbourne</option>
<option value="Australia/Sydney">(UTC + 10:0) Australia/Sydney</option>
<option value="Australia/Lindeman">(UTC + 10:0) Australia/Lindeman</option>
<option value="Australia/Hobart">(UTC + 10:0) Australia/Hobart</option>
<option value="Australia/Brisbane">(UTC + 10:0) Australia/Brisbane</option>
<option value="Pacific/Guam">(UTC + 10:0) Pacific/Guam</option>
<option value="Pacific/Saipan">(UTC + 10:0) Pacific/Saipan</option>
<option value="Pacific/Chuuk">(UTC + 10:0) Pacific/Chuuk</option>
<option value="Antarctica/DumontDUrville">(UTC + 10:0) Antarctica/DumontDUrville</option>
<option value="Pacific/Port_Moresby">(UTC + 10:0) Pacific/Port_Moresby</option>
<option value="Asia/Vladivostok">(UTC + 10:0) Asia/Vladivostok</option>
<option value="Asia/Ust-Nera">(UTC + 10:0) Asia/Ust-Nera</option>
<option value="Australia/Lord_Howe">(UTC + 10:30) Australia/Lord_Howe</option>
<option value="Pacific/Bougainville">(UTC + 11:0) Pacific/Bougainville</option>
<option value="Asia/Srednekolymsk">(UTC + 11:0) Asia/Srednekolymsk</option>
<option value="Pacific/Kosrae">(UTC + 11:0) Pacific/Kosrae</option>
<option value="Antarctica/Macquarie">(UTC + 11:0) Antarctica/Macquarie</option>
<option value="Asia/Magadan">(UTC + 11:0) Asia/Magadan</option>
<option value="Pacific/Noumea">(UTC + 11:0) Pacific/Noumea</option>
<option value="Pacific/Norfolk">(UTC + 11:0) Pacific/Norfolk</option>
<option value="Pacific/Pohnpei">(UTC + 11:0) Pacific/Pohnpei</option>
<option value="Asia/Sakhalin">(UTC + 11:0) Asia/Sakhalin</option>
<option value="Pacific/Guadalcanal">(UTC + 11:0) Pacific/Guadalcanal</option>
<option value="Pacific/Efate">(UTC + 11:0) Pacific/Efate</option>
<option value="Pacific/Fiji">(UTC + 12:0) Pacific/Fiji</option>
<option value="Pacific/Tarawa">(UTC + 12:0) Pacific/Tarawa</option>
<option value="Asia/Anadyr">(UTC + 12:0) Asia/Anadyr</option>
<option value="Pacific/Majuro">(UTC + 12:0) Pacific/Majuro</option>
<option value="Pacific/Kwajalein">(UTC + 12:0) Pacific/Kwajalein</option>
<option value="Pacific/Nauru">(UTC + 12:0) Pacific/Nauru</option>
<option value="Antarctica/McMurdo">(UTC + 12:0) Antarctica/McMurdo</option>
<option value="Pacific/Auckland">(UTC + 12:0) Pacific/Auckland</option>
<option value="Asia/Kamchatka">(UTC + 12:0) Asia/Kamchatka</option>
<option value="Pacific/Funafuti">(UTC + 12:0) Pacific/Funafuti</option>
<option value="Pacific/Wake">(UTC + 12:0) Pacific/Wake</option>
<option value="Pacific/Wallis">(UTC + 12:0) Pacific/Wallis</option>
<option value="Pacific/Chatham">(UTC + 12:45) Pacific/Chatham</option>
<option value="Pacific/Apia">(UTC + 13:0) Pacific/Apia</option>
<option value="Pacific/Enderbury">(UTC + 13:0) Pacific/Enderbury</option>
<option value="Pacific/Fakaofo">(UTC + 13:0) Pacific/Fakaofo</option>
<option value="Pacific/Tongatapu">(UTC + 13:0) Pacific/Tongatapu</option>
<option value="Pacific/Kiritimati">(UTC + 14:0) Pacific/Kiritimati</option>
</select>
                                        </div>

                                    </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-md-3 col-xs-12">
                                            Default Price&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Default selling price for this gateway in decimal"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3 col-xs-12">
                                            <input class=" form-control NumberValidation" data-val="true" data-val-number="The field DefaultPrice must be a number." id="DefaultPrice" maxlength="10" name="DefaultPrice" tabindex="9" type="text" value="">
                                        </div>

                                        <div class="col-md-3">
                                            <label>Throughput Per Second</label>&nbsp;<a href="#" data-toggle="tooltip" title="" onmouseenter="$(this).tooltip('show')" data-placement="bottom" style="        color: black;" data-original-title="Message Submission Per Second (Default :: 100)"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <input class="form-control input" data-val="true" data-val-required="Throughput Per Second is required" id="ThroughputPerSecond" name="ThroughputPerSecond" placeholder="Throughput Per Second" style="width: 110px;" tabindex="9" type="text" value="">
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>


                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" style="        color: #333">
                                <h4 class="panel-title" style="        font-size: 12px">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsed">
                                        <i class="fa fa-angle-double-down"></i>&nbsp;TON/NPI Setup
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne" aria-expanded="false" style="        height: 0px;">
                                <div class="panel-body">
                                    <div><i class="fa fa-angle-double-right"></i>&nbsp;Source Address</div>
                                    <br>
                                    <div class="row" id="toncolor">
                                        <div class="col-md-2 col-xs-3" style="        top: 10px;">
                                            TON&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Type of number for source address, if not know leave it blank"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-4 col-xs-9">
                                            <input class="onlyNumber form-control pull-left NumberValidation" id="SourceAddressTon" maxlength="4" name="SourceAddressTon" style="width: 70px;text-align: center;" tabindex="16" type="text" value="">&nbsp;
                                            <a id="adds"><i class="fa fa-plus-circle incdec" aria-hidden="true"></i></a>
                                            <a id="subs"><i class="fa fa-minus-circle incdec" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-2 col-xs-3" style="        top: 10px;">
                                            NPI&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Number plan indicator for source address. if not known leave it blank"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-4 col-xs-6">
                                            <input class="onlyNumber form-control pull-left NumberValidation" id="SourceAddressNpi" maxlength="4" name="SourceAddressNpi" style="width: 70px;text-align: center;" tabindex="17" type="text" value="">&nbsp;
                                            <a id="SourceNpiadds"><i class="fa fa-plus-circle incdec" aria-hidden="true"></i></a>
                                            <a id="SourceNpisubs"><i class="fa fa-minus-circle incdec" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                    <br>
                                    <div><i class="fa fa-angle-double-right"></i>&nbsp;Destination Address</div>
                                    <br>
                                    <div class="row">
                                        <div class="col-md-2 col-xs-3" style="        top: 10px;">
                                            TON&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Type of number for destination"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-4 col-xs-9">
                                            <input class="onlyNumber form-control pull-left NumberValidation" id="DestinationAddressTon" maxlength="4" name="DestinationAddressTon" style="width: 70px;text-align: center;" tabindex="18" type="text" value="">&nbsp;
                                            <a id="DestinationTonadds"><i class="fa fa-plus-circle incdec" aria-hidden="true"></i></a>
                                            <a id="DestinationTonsubs"><i class="fa fa-minus-circle incdec" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-2 col-xs-3" style="        top: 10px;">
                                            NPI&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Number planning indicator for destination"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-4 col-xs-9">
                                            <input class="onlyNumber form-control pull-left NumberValidation" data-val="true" data-val-required="Destination Address NPI is required" id="DestinationAddressNpi" maxlength="4" name="DestinationAddressNpi" style="width: 70px;text-align: center;" tabindex="19" type="text" value="">&nbsp;
                                            <a id="DestinationNpiadds"><i class="fa fa-plus-circle incdec" aria-hidden="true"></i></a>
                                            <a id="DestinationNpisubs"><i class="fa fa-minus-circle incdec" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" style="        color: #333">
                                <h4 class="panel-title" style="        font-size: 12px">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="fa fa-angle-double-down"></i>&nbsp;Session
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo" aria-expanded="false" style="        height: 0px;">
                                <div class="panel-body">
                                    <div class="form-inline no-margin">
                                        <div class="form-group" style="        margin-right: 17px;">
                                            Tx Sessions&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Number of Transmitter port allotted by your SMSC"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="form-group" style="        margin-right: 14px;">
                                            <input class="onlyNumber form-control pull-left NumberValidation" id="MaxTxSessions" maxlength="4" name="MaxTxSessions" style="width: 70px;" tabindex="20" type="text" value="">&nbsp;
                                            <a id="TxSessionsadds"><i class="fa fa-plus-circle incdec" aria-hidden="true"></i></a>
                                            <a id="TxSessionssubs"><i class="fa fa-minus-circle incdec" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="form-group" style="        margin-right: 14px;">
                                            Rx Sessions&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Number of Receiver port allotted by your SMSC"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="form-group">
                                            <input class="onlyNumber form-control pull-left NumberValidation" id="MaxRxSessions" maxlength="4" name="MaxRxSessions" style="width: 70px;" tabindex="21" type="text" value="">&nbsp;
                                            <a id="RxSessionsadds"><i class="fa fa-plus-circle incdec" aria-hidden="true"></i></a>
                                            <a id="RxSessionssubs"><i class="fa fa-minus-circle incdec" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="form-inline no-margin">
                                        <div class="form-group" style="        margin-right: 9px;">
                                            TxR Sessions&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Number of Transceiver port allotted by your SMSC"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="form-group">
                                            <input class="onlyNumber form-control pull-left NumberValidation" id="MaxTxRxSessions" maxlength="4" name="MaxTxRxSessions" style="width: 70px;" tabindex="22" type="text" value="">&nbsp;
                                            <a id="TxRSessionsadds"><i class="fa fa-plus-circle incdec" aria-hidden="true"></i></a>
                                            <a id="TxRSessionssubs"><i class="fa fa-minus-circle incdec" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" style="        color: #333">
                                <h4 class="panel-title" style="        font-size: 12px">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        <i class="fa fa-angle-double-down"></i>&nbsp;Roles
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body">

                                    <div class="row">

                                        <div class="col-md-3">
                                            Is Active?&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Checking this box, makes your ESME active and live"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="checkbox" style="        padding-left: 20px;
        margin-top: 0px">
                                                <input id="Status" name="Status" value="1" type="checkbox" checked="checked">
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            Is Default?&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="This ESEM account Considered as default gateway in case no matching routing rule is found. At a time only one ESME account can be set as default gateway"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="checkbox" style="        padding-left: 20px;
        margin-top: 0px">
                                                <input id="IsDefault" name="IsDefault" value="true" type="checkbox" checked="checked">
                                            </div>
                                        </div>
                                    </div>
                                    <br>

                                    <div class="row">

                                        <div class="col-md-3">
                                            Is Async?&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="In majority of cases 'IsAsync' should be checked to facilitate faster submission of traffic to SMSC using asynchronous mode. In rare condition some SMSC supports only synchronous mode."><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="checkbox" style="        padding-left: 20px;
        margin-top: 0px">
                                                <input id="IsAsync" name="IsAsync" value="true" type="checkbox" checked="checked">
                                            </div>
                                        </div>

                                        <div style="        display: none;">
                                            <div class="col-md-3">
                                                Is Failover?&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Indicates whether this gateway will be failover gateway or not"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="checkbox" style="        padding-left: 20px;
        margin-top: 0px">
                                                    <input class="checkbox" data-val="true" data-val-required="The IsFailover field is required." id="IsFailover" name="IsFailover" placeholder="Is Failover Gateway?" type="checkbox" value="true">
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <br>

                                    <div class="row">




                                        <div class="col-md-3">
                                            Is Blind Routing?&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Enabling this option let user send message for countries whose cost prices are not defined for this gateway"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="checkbox" style="        padding-left: 20px;
        margin-top: 0px">
                                                <input class="checkbox" data-val="true" data-val-required="The IsBlindRouting field is required." id="IsBlindRouting" name="IsBlindRouting" placeholder="Is Blind routing enabled?" type="checkbox" value="true">
                                            </div>
                                        </div>



                                    </div>

                                    <div class="col-md-4 col-xs-5" id="dvDefaultLink"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-success">Save Details</button>
                </div>
<input name="__RequestVerificationToken" type="hidden" value="CfDJ8OvOdzIPtRJHhYr3p01t1ioXKs1bqq3uEGgKwNc6yw12Lo7ikwUnMEmlvcsAy2g5vrQcZ1nPYLR6V2Y_jSuXMYu-FHBgeFWTQyrk4zY1HHLzdfkUy-BRM0SSIPZqjd3soIDKwP8sJU7kaxEmS2i0kVfbn_5_yEoW3YnBqweEz6l00sRxXK5Qr_2w0OgfPPx2BQ"><input name="IsFailover" type="hidden" value="false"><input name="IsBlindRouting" type="hidden" value="false">
</form>
        </div>

        <!-- /.modal -->

    </div>

</div>

<div class="modal fade" id="moModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" data-width="760" role="document" style="        width: 800px">
        <div class="modal-content" data-width="760">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myModalLabel">HTTP Handler URL</h4>
            </div>
            <br>
            <div id="divMoMessage"></div>

            <form method="post" id="moForm">
                <div class="modal-body">

                    <div class="row">

                        <div class="col-md-3" style="padding-right: 0px">
                            Local Endpoint&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Enter endpoint HTTP handler URL"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                        </div>
                        <div class="col-md-6">
                            <input type="text" name="EndpointHandlerUrl" class="form-control" placeholder="HTTP Handler Url" id="txtMoHandlerUrl" tabindex="1">
                        </div>

                    </div>

                    <br>

                    <div class="row">

                        <div class="col-md-3" style="        padding-right: 0px">
                            Select Endpoint Handler Type&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Handler types defines the type of endpoint URL"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                        </div>
                        <div class="col-md-6">
                            <select tabindex="1" name="EndPointHandlerType" class="form-control">
                                <option value="1" selected="">Generic</option>
                                <option value="2">On Demand</option>
                                <option value="3">Subscription</option>
                            </select>
                        </div>



                    </div>

                    <div style="margin-top: 15px;">
                        <code class="codeInlines">You cannot create this local endpoint handler dynamically. Contact your software vendor to create any handler</code>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="httpModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" data-width="760" role="document" style="        width: 760px">
        <div class="modal-content" data-width="760">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myModalLabel">Http Gateway Detail</h4>
            </div>
            <br>
            <div id="divHttpMessage"></div>

            <div class="form-group">
                <div class="col-lg-8">
                    <a href="/WebAdmin/Http/HttpGatewayConfigurationDocumentation" target="_blank" class="btn btn-sm btn-success btnDocs" role="button"><i class="fa fa-file-text"></i>&nbsp;View Documentation</a>
                </div>

            </div>

            <br>

            <form method="post" id="httpForm">
                <div class="modal-body">
                    <div id="divDictionary">

                    </div>
                    <div class="panel-group" id="httpaccordion" role="tablist" aria-multiselectable="true">

                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" style="        color: #333" id="httpheadingOne">
                                <h4 class="panel-title" style="        font-size: 12px">
                                    <a role="button" data-toggle="collapse" data-parent="#httpaccordion" href="#httpcredentialsDetails" aria-expanded="false" aria-controls="collapseOne" class="collapsed">
                                        <i class="fa fa-angle-double-down"></i>&nbsp;Required Credentials
                                    </a>
                                </h4>
                            </div>
                            <div id="httpcredentialsDetails" class="panel-collapse collapse" role="tabpanel" aria-labelledby="httpheadingOne" aria-expanded="false" style="        height: 0px;">
                                <div class="panel-body">

                                    <input type="hidden" name="HttpGatewayId" id="txtHttpGatewayId">

                                    <div class="row">

                                        <div class="col-md-3" style="        padding-right: 0px">

                                            Gateway Name&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Easy to remember name for SMS gateway"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" name="HttpGatewayName" class="form-control input" placeholder="Gateway Name" id="txtHttpGatewayName" tabindex="1">
                                        </div>

                                        <div class="col-md-3" style="        padding-right: 0px">
                                            Request Type&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Type of Request for HTTP API ."><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <select class="form-control" name="RequestType" id="txtRequestType" tabindex="17" style="width: 110px;padding: 0">
                                                <option value="0">Simple HTTP</option>
                                                <option value="1">REST/JSON</option>
                                                <option value="2">SOAP</option>
                                            </select>
                                        </div>


                                    </div>
                                    <br>
                                    <div class="row">

                                        <div class="col-md-3">
                                            Is Udh Required?&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="UDH Required or Not"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="checkbox" style="padding-left: 20px;margin-top: 0px">
                                                <input id="txtIsUdhRequired" name="IsUdhRequired" value="true" type="checkbox" checked="checked">
                                            </div>
                                        </div>

                                        <div style="display: none;">
                                            <div class="col-md-3">
                                                Is Failover?&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Indicates whether this gateway will be failover gateway or not"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="checkbox" style="padding-left: 20px;margin-top: 0px">
                                                    <input id="txtIsFailover" name="IsFailover" value="true" type="checkbox" checked="checked">
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <br>
                                    <div class="row">

                                            <div class="col-md-3" style="padding-right: 0px">
                                                  Authentication&nbsp;
                                                  <a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="color: black;" data-original-title="Authentication mode of Http gateway"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                              </div>
                                            <div class="col-md-3">
                                                <select class="form-control" name="Authentication" id="txtAuthentication" tabindex="17" style="width:110px;padding: 0">
                                                    <option value="0">No-Auth</option>
                                                    <option value="1">Basic Auth</option>
                                                </select>
                                            </div>


                                            <div id="divUNPass" hidden="">
                                                <div class="col-md-3">
                                                    <input type="text" name="BasicUsername" class="form-control input" placeholder="Basic Username" id="txtBasicUsername">
                                                </div>
                                                <div class="col-md-3">
                                                   <input type="text" name="BasicPassword" class="form-control input" placeholder="Basic Password" id="txtBasicPassword">
                                                </div>          
                                            </div>
                                    </div>
                                    <br>
                                    <div class="row">

                                        <div class="col-md-3" style="        padding-right: 0px">
                                            Base Url Detail&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Base Url of Http gateway"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" name="HttpURL" class="form-control input" placeholder="Base Url" id="txtHttpURL">
                                        </div>

                                        <div id="divSoapEnvelope" hidden="">

                                            <div class="col-md-3 style=" padding-right:0px""="">
                                                Soap Envelope Name&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="SOAP Envelope Name"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                            </div>
                                            <div class="col-md-3">
                                                <input type="text" name="SoapEnvelopeName" class="form-control input" placeholder="Soap Envelope Name" id="txtSoapEnvelopeName" tabindex="1">
                                            </div>
                                        </div>

                                    </div>

                                        

                                    

                                    <br>

                                    <div class="row" id="divSoapHeader" hidden="">

                                        <div class="col-md-3" style="        padding-right: 0px">
                                            Soap Header NameSpace&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Soap Header Namespace"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" name="SoapHeaderNameSpace" class="form-control input" placeholder="Soap Header NameSpace" id="txtSoapHeaderNameSpace" tabindex="1">
                                        </div>

                                        <div class="col-md-3" style="        padding-right: 0px">
                                            Soap Header Method&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Soap Header Method"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" name="SoapHeaderMethod" class="form-control input" placeholder="Soap Header Method" id="txtSoapHeaderMethod" tabindex="1">
                                        </div>


                                    </div>
                                    <br>


                                    <div class="row" id="divSoapBody" hidden="">

                                        <div class="col-md-3" style="        padding-right: 0px">
                                            Soap Body NameSpace&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Soap Body Namespace"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" name="SoapBodyNameSpace" class="form-control input" placeholder="Soap Body NameSpace" id="txtSoapBodyNameSpace" tabindex="1">
                                        </div>

                                        <div class="col-md-3" style="        padding-right: 0px">
                                            Soap Body Method&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Soap Body Method"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" name="SoapBodyMethod" class="form-control input" placeholder="Soap Body Method" id="txtSoapBodyMethod" tabindex="1">
                                        </div>


                                    </div>
                                    <br>

                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" style="        font-size: 12px" id="httpheadingOne">
                                <h4 class="panel-title" style="        font-size: 12px">
                                    <a role="button" data-toggle="collapse" data-parent="#httpaccordion" href="#httpParameters" aria-expanded="false" aria-controls="collapseOne" class="collapsed">
                                        <i class="fa fa-angle-double-down"></i>&nbsp;Parameters
                                    </a>
                                </h4>
                            </div>



                            <div id="httpParameters" class="panel-collapse collapse" role="tabpanel" aria-labelledby="httpheadingOne" aria-expanded="false" style="        height: 0px;">
                                <div class="panel-body">

                                    <table cellspacing="50" id="HttpParameters">

                                        <tbody>




                                            <tr class="FirstRow" id="row_1" name="ParamList">


                                                <td class="tdPadding">
                                                    <input type="text" data-toggle="tooltip" title="" class="form-control input" name="txt" id="txt" placeholder="Key" data-original-title="Key">
                                                </td>
                                                <td class="tdPadding">
                                                    <input type="text" data-toggle="tooltip" title="" class="form-control input" name="val" contenteditable="true" id="val" placeholder="Value" data-original-title="Value">
                                                </td>

                                                <td class="tdPadding" title="Date Time Format" id="tdDateFormat" hidden="">
                                                    <select class="form-control" name="DateTimeFormat" id="txtDateFormat" tabindex="17">
                                                        <option value="yyyyMMddHHmmss" selected=""> 20150529010101 </option>
                                                        <option value="dddd, dd MMMM yyyy">	Friday, 29 May 2015</option>
                                                        <option value="MM/dd/yyyy"> 05/29/2015 </option>
                                                        <option value="ddd, dd MMM yyy HH’:’mm’:’ss ‘GMT’">	Fri, 16 May 2015 05:50:06 GMT</option>
                                                        <option value="MM/dd/yyyy hh:mm tt">	Friday, 29 May 2015 05:50 AM</option>
                                                        <option value="dddd, dd MMMM yyyy HH:mm:ss"> Friday, 29 May 2015 05:50:06</option>
                                                    </select>
                                                </td>

                                                <td class="tdPadding" title="Paramter Type" id="tdParameterType">
                                                    <select class="form-control" name="ParameterType" id="txtParameterType" tabindex="17">
                                                        <option value="0">Root NameSpace</option>
                                                        <option value="1">Header Parameter</option>
                                                        <option value="2" selected="">Body Parameter</option>
                                                    </select>
                                                </td>

                                                <td class="tdPadding" title="Authentication Mode" id="tdAuthenticationMode">
                                                    <select class="form-control" name="AuthenticationMode" id="txtAuthenticationMode" tabindex="17">
                                                        <option value="0" selected="">NoAuth</option>
                                                        <option value="1">Basic</option>
                                                        <option value="2">MD5Hash</option>
                                                    </select>
                                                </td>

                                                <td class="tdPadding">
                                                    <input type="text" data-toggle="tooltip" title="" class="form-control input" name="ParentName" id="txtParentName" placeholder="Parent Name" data-original-title="Parent Name">
                                                </td>

                                                <td class="tdPadding">
                                                    <a class="AddnewRow">
                                                        <i class="fa fa-plus-circle fa-2x" style="        color: #0fa20f;
        font-size: 1.8em !important"></i>
                                                    </a>
                                                </td>

                                            </tr>
                                        </tbody>
                                    </table>
                                    <br>

                                    <span>
                                        <b>Note:</b> Parameter Type , Authentication Mode and Parent Name Parameters are only for SOAP Request Type
                                    </span>

                                </div>
                                <br>
                            </div>





                        </div>



                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" style="        font-size: 12px" id="httpheadingOne">
                                <h4 class="panel-title" style="        font-size: 12px">
                                    <a role="button" data-toggle="collapse" data-parent="#httpaccordion" href="#httpDetails" aria-expanded="false" aria-controls="collapseOne" class="collapsed">
                                        <i class="fa fa-angle-double-down"></i>&nbsp;Gateway Properties
                                    </a>
                                </h4>
                            </div>



                            <div id="httpDetails" class="panel-collapse collapse" role="tabpanel" aria-labelledby="httpheadingOne" aria-expanded="false" style="        height: 0px;">
                                <div class="panel-body">


                                    <div class="row">


                                        <div class="col-md-3">
                                            Method&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Method Type for HTTP API."><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <select class="form-control" name="Method" id="txtMethod" tabindex="17" style="        width: 110px;
        padding: 0">
                                                <option value="0">GET</option>
                                                <option value="1">POST</option>
                                                <option value="2">POST Form Data</option>
                                            </select>
                                        </div>



                                        <div class="col-md-3">
                                            Is Active?&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Checking this box, makes your HTTP Gateway active and live"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="checkbox" style="        padding-left: 20px;
        margin-top: 0px">
                                                <input id="ISActive" name="ISActive" type="checkbox" value="1" checked="checked">
                                                <label for="ISActive">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-md-3">
                                            GatewayOpenTime <span style="        color: red">(hh:mm)</span>&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Certain SMSC, limit start operation of ESME within a limited time frame to meet Do not disturb policy."><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" name="GatewayOpenTime" class="form-control input" id="txthttpGatewayOpenTime" value="00:00" tabindex="11" style="        width: 110px;">
                                        </div>
                                        <div class="col-md-3">
                                            GatewayCloseTime <span style="        color: red">(hh:mm)</span>&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Certain SMSC, limit end operation of ESME within a limited time frame to meet Do not disturb policy."><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" name="GatewayCloseTime" class="form-control input" id="txthttpGatewayCloseTime" value="00:00" tabindex="12" style="        width: 100px;">
                                        </div>
                                    </div>

                                    <br>

                                    <div class="row">
                                        <div class="col-md-3">
                                            Response Type&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Type of Response Received from the HTTP API."><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <select class="form-control" name="ResponseType" id="txtResponseType" tabindex="17" style="        width: 110px;
        padding: 0">
                                                <option value="0">XML</option>
                                                <option value="1">JSON</option>
                                                <option value="2">TEXT</option>
                                            </select>
                                        </div>

                                        <div class="col-md-3">
                                            Default Price&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Default selling price for this gateway in decimal"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" name="DefaultPrice" class="form-control NumberValidation" id="txtDefaultPrice" maxlength="10" tabindex="9" style="        width: 110px;">

                                        </div>







                                    </div>

                                    <br>

                                    <div class="row">


                                        <div class="col-md-3">
                                            Is Blind Routing?&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="To Route Message even if the Gateway Selling Price is not Configured. For that Default Selling Price will be Used"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="checkbox" style="        padding-left: 20px;
        margin-top: 0px">
                                                <input id="txtIsBlindRouting" name="IsBlindRouting" value="true" type="checkbox" checked="checked">
                                                <label for="IsBlindRouting">
                                                </label>
                                            </div>
                                        </div>

                                    </div>



                                </div>
                                <br>
                            </div>





                        </div>



                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" style="        font-size: 12px" id="httpheadingOne">
                                <h4 class="panel-title" style="        font-size: 12px">
                                    <a role="button" data-toggle="collapse" data-parent="#httpaccordion" href="#httpcollapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsed">
                                        <i class="fa fa-angle-double-down"></i>&nbsp;Response Properties
                                    </a>
                                </h4>
                            </div>
                            <div id="httpcollapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="httpheadingOne" aria-expanded="false" style="        height: 0px;">
                                <div class="panel-body">


                                    <div class="row" id="divSplitter" hidden="">
                                        <div class="col-md-3">
                                            Key-Value Splitter&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Splitter to separate Key and Value"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" name="KeyValueSplitter" id="txtKeyValueSplitter" class="form-control" placeholder="Key-Value Splitter" style="        width: 120px;">
                                        </div>
                                        <div class="col-md-3">
                                            Property Splitter&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Splitter to Separate Properties."><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" name="PropertySplitter" class="form-control" id="txtPropertySplitter" placeholder="Property Splitter" style="        width: 120px;">

                                        </div>
                                    </div>
                                    <br>


                                    <div class="row">
                                        <div class="col-md-3">
                                            Error Code Field&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Number of Error Code Field Received in Response."><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" name="ErrorCodeField" id="txtErrorCodeField" class="form-control" placeholder="Error Code Field" style="        width: 120px;">
                                        </div>
                                        <div class="col-md-3">
                                            Messageid Field&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Number of Message Id Field Received in Response."><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" name="MessageIdField" id="txtMessageIdField" class="form-control" placeholder="MessageId Field" style="        width: 120px;">
                                        </div>
                                    </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-md-3">
                                            Message Status field&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="Number of Message Status Field Received in Response."><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" name="MessageStatusField" id="txtMessageStatusField" class="form-control" placeholder="Message Status Field" style="        width: 120px;">
                                        </div>
                                        <div class="col-md-3">
                                            Mobile Number field&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="bottom" style="        color: black;" data-original-title="Number of Mobile Number Field Received in Response."><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" name="MobileNumberField" class="form-control" id="txtMobileNumberField" placeholder="Mobile Number Field" style="        width: 120px;">

                                        </div>
                                    </div>
                                    <br>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" style="        font-size: 12px" id="httpheadingOne">
                                <h4 class="panel-title" style="        font-size: 12px">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#httpaccordion" href="#httpcollapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        <i class="fa fa-angle-double-down"></i>&nbsp;Session
                                    </a>
                                </h4>
                            </div>
                            <div id="httpcollapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo" aria-expanded="false" style="        height: 0px;">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-3">
                                            No. of Sessions&nbsp;<a href="#" data-toggle="tooltip" title="" data-placement="right" style="        color: black;" data-original-title="No of Sessions you want to connect"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="col-md-3" style="        margin-right: 9px;">
                                            <input type="text" name="MaxSessions" id="txtMaxSessions" class="form-control" placeholder="Max Sessions" style="        width: 120px;">
                                        </div>
                                    </div>
                                    <br>
                                </div>
                                <br>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="formModal">
    <div class="modal-dialog">
        <div class="modal-content" style="        width: 760px">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h5>TcpConnection State</h5>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <table class="table table-striped table-bordered table-hover no-footer dataTable" id="GatewayTcpState">
                        <thead>
                            <tr>
                                <th>Local IPAddress</th>
                                <th>Remote IPAddress</th>
                                <th>Local Port</th>
                                <th>Remote Port</th>
                                <th>Connection Mode</th>
                                <th>State</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-sm btn-warning" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="addhandlerModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" data-width="760" role="document" style="        width: 760px">
        <div class="modal-content" data-width="760">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myModalLabel">End Point URL Parameters</h4>

                <div id="divHandlerMessage"></div>
            </div>
            <form method="post" id="handlerForm">
                <div class="modal-body">
                    <div class="form-group">



                        <div class="modal-body">

                            <div class="row">

                                <div class="col-md-3" style="        padding-right: 0px">

                                    Service Id&nbsp;
                                </div>
                                <div class="col-md-5">
                                    <input type="text" name="ServiceId" class="form-control input" placeholder="Service Id" id="txtServiceId" tabindex="1" style="        padding: 0px" required="">
                                </div>

                            </div>

                            <br>

                            <div class="row">

                                <div class="col-md-3" style="        padding-right: 0px">

                                    Product Id&nbsp;
                                </div>
                                <div class="col-md-5">
                                    <input type="text" name="ProductId" class="form-control input" placeholder="Product Id" id="txtProductId" tabindex="1" style="        padding: 0px" required="">
                                </div>

                            </div>

                            <br>

                            <div class="row">

                                <div class="col-md-3" style="        padding-right: 0px">

                                    Channel&nbsp;
                                </div>
                                <div class="col-md-5">
                                    <input type="text" name="Channel" class="form-control input" placeholder="Channel" id="txtChannel" tabindex="1" style="        padding: 0px" required="">
                                </div>

                            </div>

                            <br>

                            <div class="row">

                                <div class="col-md-3" style="        padding-right: 0px">

                                    Subscription Keyword&nbsp;
                                </div>
                                <div class="col-md-5">
                                    <input type="text" name="SubscriptionKeyword" class="form-control input" placeholder="Subscription Keyword" id="txtSubscriptionKeyword" tabindex="1" style="        padding: 0px" required="">
                                </div>

                            </div>

                            <br>

                            <div class="row">

                                <div class="col-md-3" style="        padding-right: 0px">

                                    Unsubscription Keyword&nbsp;
                                </div>
                                <div class="col-md-5">
                                    <input type="text" name="UnSubscriptionKeyword" class="form-control input" placeholder="UnSubscription Keyword" id="txtUnSubscriptionKeyword" tabindex="1" style="        padding: 0px" required="">
                                </div>

                            </div>

                        </div>



                    </div>
                </div>

                <div class="modal-footer">
                    <input type="submit" id="btnSaveGatewayDetails" value="Save" class="btn btn-primary">
                    <button class="btn btn-sm btn-warning" data-dismiss="modal" aria-hidden="true">Close</button>
                </div>
            </form>


        </div>


        <br>

    </div>
</div>

<div class="modal fade" id="viewHandlerModal">
    <div class="modal-dialog">
        <div class="modal-content" style="        width: 760px">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h5>EndPoint URL Parameters</h5>
            </div>
            <div class="modal-body">
                <div id="dvMessageEndPoint"></div>
                <div class="form-group">
                    <table class="table table-striped table-bordered table-hover no-footer dataTable" id="viewHandlerTable">
                        <thead>
                            <tr>
                                <th>Service Id</th>
                                <th>Product Id</th>
                                <th>Channel</th>
                                <th>Subscription Keyword</th>
                                <th>Unsubscription Keyword</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-sm btn-warning" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="importCountryModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myModalLabel">Import Country</h4>
            </div>
            <div class="modal-body">
                <div class="panel-body">
                    <div class="form-horizontal form-border">
                        <div class="form-group">
                            <label class="col-md-3">Gateway Name</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" name="GatewayName" maxlength="30" id="txtGatewayName">

                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3"></label>

                            <div class="col-md-7">
                                <img src="/Images/DocumentImages/excel.png" style="        border-left: 1px solid #c2cad8;
        border-right: 1px solid #c2cad8;">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3"></label>

                            <div class="col-md-6">
                                <a href="/Downloadable Files/cost.xls" id="lnkSampleExcelCountry"><i class="fa fa-download"></i>&nbsp;Download Sample</a>

                            </div>
                        </div>
                        <div class=" form-group">
                            <label class="col-md-3">Select File</label>

                            <div class="col-md-6 upload-file" style="        width: 300px;">
                                <input type="file" id="file" name="file" class="upload-demo">
                                <label data-title="Change file" for="file" id="chosenFilename" class="selected">
                                    <span data-title=""></span>
                                </label>
                            </div>

                        </div>


                    </div>
                </div>

            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
                <button type="button" id="btnUploadCountries" class="btn btn-success">Upload </button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modalAssignNewDefaultGateway">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h5>Gateway List</h5>
            </div>
            <div class="modal-body">
                <div id="dvErrorMessage"></div>
                <div class="form-group">
                    <label class="col-sm-5 col-xs-6" style="        text-align: webkit-right;
        top: 6px;">Select a new default gateway :</label>
                    <div class="col-sm-7 col-xs-6">
                        <select id="drpDefaultGatewayList" class="form-control"></select>
                    </div>
                </div>
            </div>
            <br>
            <br>

            <br>

            <div class="modal-footer">
                <button class="btn btn-sm btn-warning" data-dismiss="modal" aria-hidden="true">Close</button>
                <button class="btn btn-sm btn-success" id="btnSetDefaultGateway">Set as default</button>

            </div>
        </div>
    </div>
</div>

    <script>
        $(".hiddenColmns").attr("style", "visibility: hidden");
    </script>
<script type="text/javascript">


    $(document).on("click", "#lnkChangeDefaultGateway", function () {
        $.ajax({
            "url": "/WebAdmin/Smpp/GetGatewayDetails",
            "type": "GET",
            dataType: "json",
            "success": function (response) {

                $("#drpDefaultGatewayList").empty();
                var optionInput = "<option value='0'>-----Select Gateway------</option>";
                if (response.data.length > 0) {
                    $.each(response.data, function (index, value) {
                        optionInput += "<option value='" + value.GatewayId + "'>" + value.GatewayName + "</option>";
                    })
                }
                $("#drpDefaultGatewayList").append(optionInput);
            }
        })

    })

    $("#btnSetDefaultGateway").on("click", function () {
        var gatewayId = $("#drpDefaultGatewayList").val();
        if (gatewayId == 0) {
            $("#dvErrorMessage").html("");
            var input = ' <div class="alert alert-danger" style="padding:15px !important" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Please select gateway from list.</div>'
            $("#dvErrorMessage").html(input);
        }
        else {
            $.ajax({
                "url": "/WebAdmin/Smpp/UpdateDefaultGateway",
                "type": "Get",
                "data": { "Id": gatewayId },
                "success": function (response) {

                    if (response != "success" && response != null && response != "undefined") {
                        $("#dvErrorMessage").html("");
                        var input = ' <div class="alert alert-' + response.split('#')[0] + '" style="padding:15px !important" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + response.split('#')[1] + '</div>'
                        $("#dvErrorMessage").html(input);

                    }
                    else {
                        window.location.href = "/WebAdmin/Smpp/ManageSmppGateway";

                    }

                }
            })
        }
    })

    //function reloadDatatable() {
    //    $('#Gateway').DataTable().draw();
    //    $('#HttpGateway').DataTable().draw();
    //}

    $(document).ready(function () {

        $("#RefreshGateway").click(function () {
            $('#Gateway').DataTable().draw();

        });

        // setInterval("reloadDatatable();", 10000);

        var table = $('#Gateway').DataTable({
            "processing": true,
            "serverSide": true,
            "info": true,
            "bSort": false,

            "oLanguage": {
                "sProcessing": "<img src='/Images/ajaxloader.gif'>"
            },
            "ajax": {
                "url": "/WebAdmin/Smpp/GetGatewayDetail",
                "type": "POST",
                "datatype": "json",
            },

            "columns": [

                { "data": 'GatewayId', "orderable": false, "name": "GatewayId" },
                { "data": 'sGatewayName', "orderable": false, "name": "GatewayName" },
                { "data": "IPAddress", "orderable": false, "name": "IPAddress" },
                { "data": "SystemId", "orderable": false, "name": "SystemId", },
                { "data": 'sTxPort', "orderable": false, "name": "TxPort", },
                { "data": 'sRxPort', "orderable": false, "name": "RxPort", },
                { "data": 'sTxRxPort', "orderable": false, "name": "TxRxPort", },
                { "data": 'sIsDefault', "orderable": false, },
                { "data": 'sStatus', "orderable": false, },
                { "data": 'LoadSpinner', "orderable": false, },
                {
                    data: null,
                    orderable: false,
                    render: function (data) {
                        return '<a href=\"javascript:;\" class="edit editor_edit"><i class="fa fa-edit"></i> Edit</a> | <a href=\"javascript:;\" class="delete"><i class="fa fa-trash-o"></i> Delete</a>'
                    },
                },
            ],
            "order": [[0, "asc"]],
            "fnDrawCallback": function (settings, json) {
                $("#Gateway").css({ 'overflow': 'auto' });
                var rows = $("#Gateway").dataTable().fnGetNodes();
                $.ajax({
                    type: "POST",
                    url: '/WebAdmin/Smpp/GetGatewayTcpStates',
                    contentType: "application/json; charset=utf-8",
                }).then(function (result) {

                    if (result == "<span class='badge badge-info' style='border-radius: 0;height: 9px;'>No Connection</span>") {
                        $.each(rows, function (i, ob) {
                            $("td", rows[i]).eq(9).html("<span class='badge badge-info' style='border-radius: 0'>No Connection</span>")
                        });
                    }
                    else {
                        $.each(rows, function (i, ob) {
                            $.each(result, function (ind, obj) {

                                var GatewayId = $('#Gateway').dataTable().fnGetData(rows[i]).GatewayId;
                                if (GatewayId == obj.GatewayId) {
                                    if (obj.TcpState == "<span class='badge badge-info' style='border-radius: 0;height: 9px;'>No Connection</span>") {
                                        $("td", rows[i]).eq(9).html("<span class='badge badge-info' style='border-radius: 0'>No Connection</span>")
                                    }
                                    else {
                                        $("td", rows[i]).eq(9).html(obj.TcpState)
                                        $("td", rows[i]).eq(9).append(" <a href='#' data-toggle='modal' class='ViewMore'>More</a>");
                                    }
                                }
                            });
                        });
                    }
                },
                );
            },

            "bJQueryUI": true,
            "bAutoWidth": false,
            sPaginationType: "full_numbers",
        });

        $('#ddBusinessType').on('change', function () {

            table
                .columns(0)
                .search($('#ddBusinessType').find('option:selected').val())
                .draw();

        });


        $("#Gateway_processing").css('background-color', 'transparent').css('border', 'transparent');

        $('#btnUploadCountries').on('click', function () {
            var file = $("#file").get(0).files[0];
            $.ajax({
                url: '/WebAdmin/Smpp/UploadCountryToGateway',
                type: "POST",
                "dataType": 'json',
                data: function () {
                    var formData = new FormData();
                    formData.append("GatewayId", GateWayId);
                    formData.append("file", file);
                    return formData;
                }(),
                enctype: 'multipart/form-data',
                processData: false,
                contentType: false,
                "success": function (response) {
                    $("#dvMessage").html("");
                    var innerHtml = '<div style="padding: 15px !important;" id="alertdiv" class="alert alert-' + response.split('#')[0] + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><span id="AlertMessage">' + response.split('#')[1] + '</span></div>';
                    $("#dvMessage").append(innerHtml);
                    $("#importCountryModal").modal('hide');
                    $("#txtGatewayName").val("");
                    //$("#chosenFilename").find("span").attr("data-title","");
                    //$("#chosenFilename").html('<span data-title=" "></span>');

                }
            })
        });

        $('#Gateway tbody').on("click", ".importCountry", function () {

            var row = $(this).closest('tr');
            GatewayData = $("#Gateway").dataTable().fnGetData(row);
            $("#txtGatewayName").val(GatewayData.GatewayName);
            GateWayId = GatewayData.GatewayId;
            $("#importCountryModal").modal('show');

        })



        $('#addhttpGateway').on('click', function () {

            //When http gateway is edited and then add new button is clicked, some values remain unchanged,
            //that are needed to be reset.

            $("#HttpParameters").find("tr:gt(0)").remove();
            document.getElementById('httpForm').reset();
            var AddButton = '<a class="AddnewRow"><i class="fa fa-plus-circle fa-2x" style="color: #0fa20f;font-size: 1.8em !important" ></i></a>';
            $('.FirstRow').find('td').eq(6).html(AddButton);
            $("#divSoapEnvelope").hide();
            $("#divSoapHeader").hide();
            $("#divSoapBody").hide();

            $("#divSplitter").hide();
            $("#httpModal").modal();
        });

        $('#addMoHandler').on('click', function () {
            document.getElementById('moForm').reset();
            $("#moModal").modal();
        });

        $('#smppForm').on('submit', function (event) {

            event.preventDefault();

            //grab the form and wrap it with jQuery
            var $form = $(this);

            $.ajax({
                type: $form.prop('method'),
                url: '/WebAdmin/Smpp/AddGateway',
                data: $form.serialize(),
                dataType: "json",
                traditional: true,
                success: function (response) {
                    $("#divSmppMessage").html("");
                    if (!response.IsSuccess) {
                        var input = ' <div class="alert alert-' + response.MessageType + '" style="padding:15px !important" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + response.ErrorMessage + '</div>';
                        $("#divSmppMessage").html(input);
                    }
                    else {
                        $("#myModal").modal('toggle');
                        var input = ' <div class="alert alert-' + response.MessageType + '" style="padding:15px !important" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + response.ErrorMessage + '</div>';
                        $("#dvMessage").html(input);
                        $("#Gateway").DataTable().draw();
                    }
                }
            });

        });

        $('#Gateway tbody').on('click', '.delete', function () {

            var selectedrow = $(this).closest('tr');
            var GatewayId = $('#Gateway').dataTable().fnGetData(selectedrow).GatewayId;
            if (confirm("Are you sure you want to delete this Gateway?")) {
                $.ajax({
                    url: '/WebAdmin/Smpp/DeleteGateway',
                    data: { "GatewayId": GatewayId },
                    success: function (result) {

                        if (result.split('#')[0] == "success") {
                            $("#dvMessage").html("");
                            var input = ' <div class="alert alert-' + result.split("#")[0] + ' style="padding:15px !important" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + result.split('#')[1] + '</div>'
                            $("#dvMessage").html(input);
                            $('#Gateway').DataTable().draw();
                        }
                        else {
                            $("#dvMessage").html("");
                            var input = ' <div class="alert alert-' + result.split("#")[0] + ' style="padding:15px !important" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + result.split('#')[1] + '</div>'
                            $("#dvMessage").html(input);
                        }
                    }
                });
            }
        });

        $('#Gateway tbody').on('click', '.ViewMore', function () {

            var selectedrow = $(this).closest('tr');
            var GatewayDetail = $('#Gateway').dataTable().fnGetData(selectedrow);
            var GatewayDetailId = GatewayDetail.GatewayId
            $("#formModal").modal();
            $('#GatewayTcpState').DataTable({
                "processing": true,
                "serverSide": true,
                destroy: true,
                "lengthMenu": [[10, 20, 50, 100], [10, 20, 50, 100]],
                "filter": false,
                "orderable": false,
                "bSort": false,
                "ajax": {
                    "url": "/WebAdmin/Smpp/BindTcpState",
                    "type": "POST",
                    "data": {
                        "GatewayDetailId": GatewayDetailId,
                    },
                },
                "columns": [
                    { "data": "LocalIpAddress", "orderable": false },
                    { "data": "RemoteIpAddress", "orderable": false },
                    { "data": "LocalPort", "orderable": false },
                    { "data": "RemotePort", "orderable": false },
                    { "data": "ConnectionMode", "orderable": false },
                    { "data": "ConnectionStat", "orderable": false },
                ],
                "bJQueryUI": true,
                sPaginationType: "full_numbers",
            });

        });

        $('#Gateway tbody').on('click', '.edit', function () {
            $("#divSmppMessage").html("");
            var row = $(this).closest('tr');
            nRow = $(this).parents('tr')[0];
            GatewayData = $('#Gateway').dataTable().fnGetData(row);

            $("#GatewayId").val(GatewayData.GatewayId);
            $("#GatewayName").val(GatewayData.GatewayName);
            $("#IPAddress").val(GatewayData.IPAddress);
            $("#DefaultPrice").val(GatewayData.DefaultPrice);
            $("#SystemId").val(GatewayData.SystemId);
            $("#Password").val(GatewayData.Password);
            $("#TxPort").val(GatewayData.TxPort);
            $("#RxPort").val(GatewayData.RxPort);
            $("#TxRxPort").val(GatewayData.TxRxPort);
            $("#SystemType").val(GatewayData.SystemType);
            $("#WindowSize").val(GatewayData.WindowSize);
            $("#GatewayEncoding").val(GatewayData.GatewayEncoding);
            $("#KeepAliveInterval").val(GatewayData.KeepAliveInterval);
            $("#MessageIdConversionType").val(GatewayData.MessageIdConversionType);
            $("#GatewayOpenTime").val(GatewayData.GatewayOpenTime);
            $("#GatewayCloseTime").val(GatewayData.GatewayCloseTime);
            $("#RollbackUrl").val(GatewayData.RollbackUrl);
            $("#SourceAddressTon").val(GatewayData.SourceAddressTon);
            $("#SourceAddressNpi").val(GatewayData.SourceAddressNpi);
            $("#DestinationAddressTon").val(GatewayData.DestinationAddressTon);
            $("#DestinationAddressNpi").val(GatewayData.DestinationAddressNpi);
            $("#MaxTxSessions").val(GatewayData.MaxTxSessions);
            $("#MaxRxSessions").val(GatewayData.MaxRxSessions);
            $("#MaxTxRxSessions").val(GatewayData.MaxTxRxSessions);
            $("#SenderIdType").val(GatewayData.SenderIdType);
            $("#TimeZone").val(GatewayData.TimeZone);
            $("#DefaultPrice").val(GatewayData.DefaultPrice);
            $("#ThroughputPerSecond").val(GatewayData.ThroughputPerSecond);

            if (GatewayData.IsBlindRouting == false) {
                $("#IsBlindRouting").prop('checked', false);

            }
            else {
                $("#IsBlindRouting").prop('checked', true);
            }

            if (GatewayData.Status == 0) {
                $("#Status").prop('checked', false);

            }
            else {
                $("#Status").prop('checked', true);

            }
            if (GatewayData.IsDefault == true) {
                $('#dvDefaultLink').html("");
                $("#IsDefault").prop('checked', true);
                $("#IsDefault").parent().attr("readonly", "readonly");
                var inputLink = "<a href='#' id='lnkChangeDefaultGateway' class='inline defautLink' data-toggle='modal' data-target='#modalAssignNewDefaultGateway' >Change Default Gateway<a href='#' data-toggle='tooltip' title='This is default' data-placement='right' style='color: black; padding-top:5px'><i class='fa fa-info-circle' aria-hidden='true'></i></a></a> "
                $('#dvDefaultLink').append(inputLink);
                $("#Status").parent().attr("readonly", "readonly");
            }
            else {
                $("#IsDefault").prop('checked', false);
                $('#dvDefaultLink').html("");
                $("#IsDefault").parent().removeAttr("readonly");

                $('#IsDefault').removeClass("default");
                $("#Status").parent().removeAttr("readonly");
            }
            $("#IsAsync").prop('checked', GatewayData.IsAsync);
            $("#IsFailover").prop('checked', GatewayData.IsFailover);
            $("#IsBlindRouting").prop('checked', GatewayData.IsBlindRouting);
            $("#myModal").modal();
        });

        //Http Gateway Functions

        var max_fields = 7;
        var list = [];
        var count = 1;
        var countRow = 1;
        var btnAdd = $(".btnAddField");
        var position = 6;
        var OldGatewayId;


        $('#moForm').on('submit', function (event) {

            event.preventDefault();

            //grab the form and wrap it with jQuery
            var handlerUrl = $("#txtMoHandlerUrl").val();
            if (handlerUrl != null) {
                $("#txtMoHandlerUrl").val().trim();
            }

            var $form = $(this);

            $.ajax({
                type: 'POST',
                url: '/WebAdmin/Http/AddHttpHandler',
                data: $form.serialize(),
                dataType: "json",
                success: function (response) {
                    $("#divMOMessage").html("");
                    if (!response.IsSuccess) {
                        var input = ' <div class="alert alert-' + response.MessageType + '" style="padding:15px !important" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + response.ErrorMessage + '</div>';
                        $("#divMoMessage").html(input);
                    }
                    else {
                        $("#moModal").modal('toggle');
                        var input = ' <div class="alert alert-' + response.MessageType + '" style="padding:15px !important" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + response.ErrorMessage + '</div>';
                        $("#dvMessage").html(input);
                        $("#MOHandler").DataTable().draw();
                    }
                }
            });

        });

        $('#httpForm').on('submit', function (event) {


            //Set the Parameters Type in HttpModel
            var rows = $("#HttpParameters")[0].children[0].children;
            $("#divDictionary").html("");
            $.each(rows, function (i, row) {
                if (row.cells[0].childNodes[1].value != "" && row.cells[1].childNodes[1].value != "") {

                    $("#divDictionary").append(
                        '<input type="hidden" name="ParamList[' + i + '].Key" value="' + escape(row.cells[0].childNodes[1].value.trim()) + '" />' +
                        '<input type="hidden" name="ParamList[' + i + '].Value" value="' + escape(row.cells[1].childNodes[1].value.trim()) + '" />' +
                        '<input type="hidden" name="ParamList[' + i + '].DateTimeFormat" value="' + escape(row.cells[2].childNodes[1].value) + '" />' +
                        '<input type="hidden" name="ParamList[' + i + '].ParameterType" value="' + escape(row.cells[3].childNodes[1].value) + '" />' +
                        '<input type="hidden" name="ParamList[' + i + '].AuthenticationMode" value="' + escape(row.cells[4].childNodes[1].value) + '" />' +
                        '<input type="hidden" name="ParamList[' + i + '].ParentName" value="' + escape(row.cells[5].childNodes[1].value == null ? "" : escape(row.cells[5].childNodes[1].value.trim())) + '" />'
                    );
                }
            });



            event.preventDefault();

            //grab the form and wrap it with jQuery
            var $form = $(this);

            $.ajax({
                type: $form.prop('method'),
                url: '/WebAdmin/Http/AddHttpGateway',
                data: $form.serialize(),
                dataType: "json",
                traditional: true,
                success: function (response) {
                    $("#divHttpMessage").html("");
                    if (!response.IsSuccess) {
                        var input = ' <div class="alert alert-' + response.MessageType + '" style="padding:15px !important" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + response.ErrorMessage + '</div>';
                        $("#divHttpMessage").html(input);
                    }
                    else {
                        $("#httpModal").modal('toggle');
                        var input = ' <div class="alert alert-' + response.MessageType + '" style="padding:15px !important" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + response.ErrorMessage + '</div>';
                        $("#dvMessage").html(input);
                        $("#HttpGateway").DataTable().draw();
                    }
                }
            });

        });


        $("#txtRequestType").change(function () {

            var selectedValue = $(this).val();
            if (selectedValue == '2') {
                $("#divSoapEnvelope").show();
                $("#divSoapHeader").show();
                $("#divSoapBody").show();
            }
            else {
                $("#divSoapEnvelope").hide();
                $("#divSoapHeader").hide();
                $("#divSoapBody").hide();
            }

        });

         $("#txtAuthentication").change(function () {

            var selectedValue = $(this).val();
            if (selectedValue == '1') {
                $("#divUNPass").show();
            }
            else {
                $("#divUNPass").hide();
            }

        });


        $("#txtResponseType").change(function () {

            var selectedValue = $(this).val();
            if (selectedValue == '2') {
                $("#divSplitter").show();

            }
            else {
                $("#divSplitter").hide();
                $("#txtKeyValueSplitter").val('');
                $("#txtPropertySplitter").val('');

            }

        });


        $('#addGateway').on('click', function () {

            $(".input").val('');
            $("#GatewayId").val(0);
            document.getElementById('smppForm').reset();
            $("#myModal").modal();

        });

        $('#HttpGateway').on('click', '.httpedit', function () {

            $("#divHttpMessage").html("");
            $("#HttpParameters").find("tr:gt(0)").remove();
            var row = $(this).closest('tr');
            nRow = $(this).parents('tr')[0];
            GatewayDetail = $('#HttpGateway').dataTable().fnGetData(row);
            countRow = 1;
            $("#txtHttpGatewayId").val(GatewayDetail.HttpGatewayId);
            $("#txtHttpGatewayName").val(GatewayDetail.HttpGatewayName);
            $("#txtDefaultPrice").val(GatewayDetail.DefaultPrice);
            $("#txtHttpURL").val(GatewayDetail.HttpURL);
            $("#txtSoapEnvelopeName").val(GatewayDetail.SoapEnvelopeName);
            $("#txtSoapHeaderNameSpace").val(GatewayDetail.SoapHeaderNameSpace);
            $("#txtSoapHeaderMethod").val(GatewayDetail.SoapHeaderMethod);
            $("#txtSoapBodyNameSpace").val(GatewayDetail.SoapBodyNameSpace);
            $("#txtSoapBodyMethod").val(GatewayDetail.SoapBodyMethod);
            if (GatewayDetail.Method == 'GET')
                $("#txtMethod").val(0);
            else if (GatewayDetail.Method == 'POST')
                $("#txtMethod").val(1);
            else
                $("#txtMethod").val(2);

            $("#txtAuthentication").val(GatewayDetail.Authentication);
            if ($("#txtAuthentication").val() == 1) {
                $("#divUNPass").show();
            }
            else {
                $("#divUNPass").hide();
            }
            $("#txtBasicUsername").val(GatewayDetail.BasicUsername);
            $("#txtBasicPassword").val(GatewayDetail.BasicPassword);

            if (GatewayDetail.ResponseType == 2) {
                $("#divSplitter").show();

            }
            else {
                $("#divSplitter").hide();
            }

            $("#txtRequestType").val(GatewayDetail.RequestType);
            if (GatewayDetail.RequestType == 2) {
                $("#divSoapEnvelope").show();
                $("#divSoapHeader").show();
                $("#divSoapBody").show();
            }
            else {
                $("#divSoapEnvelope").hide();
                $("#divSoapHeader").hide();
                $("#divSoapBody").hide();
            }

            if (GatewayDetail.Status == 0) {
                $("#Status").prop('checked', false);
            }
            else {
                $("#Status").prop('checked', true);
            }

            if (GatewayDetail.IsBlindRouting == false) {
                $("#txtIsBlindRouting").prop('checked', false);

            }
            else {
                $("#txtIsBlindRouting").prop('checked', true);
            }


            if (GatewayDetail.IsFailover == false) {
                $("#txtIsFailover").prop('checked', false);

            }
            else {
                $("#txtIsFailover").prop('checked', true);
            }

            if (GatewayDetail.IsUdhRequired == false) {
                $("#txtIsUdhRequired").prop('checked', false);
            }
            else {
                $("#txtIsUdhRequired").prop('checked', true);
            }

            $("#txthttpGatewayOpenTime").val(GatewayDetail.GatewayOpenTime);
            $("#txthttpGatewayCloseTime").val(GatewayDetail.GatewayCloseTime);
            $("#txtResponseType").val(GatewayDetail.ResponseType);
            $("#txtKeyValueSplitter").val(GatewayDetail.KeyValueSplitter);
            $("#txtPropertySplitter").val(GatewayDetail.PropertySplitter);
            //$("#txtAuthentication").val(GatewayDetail.Authentication);
            $("#txtErrorCodeField").val(GatewayDetail.ErrorCodeField);
            $("#txtMessageIdField").val(GatewayDetail.MessageIdField);
            $("#txtMessageStatusField").val(GatewayDetail.MessageStatusField);
            $("#txtMobileNumberField").val(GatewayDetail.MobileNumberField);
            $("#txtMaxSessions").val(GatewayDetail.MaxSessions);
            var DeleteButton = '<a class="DeleteRow" ><i class="fa fa-minus-circle fa-2x" style="color: #e01e1e;font-size: 1.8em !important"></i></a>';
            var AddButton = '<a class="AddnewRow"><i class="fa fa-plus-circle fa-2x" style="color: #0fa20f;font-size: 1.8em !important" ></i></a>';

            $.each(GatewayDetail.ParamList, function (index, Data) {
                debugger

                if (index == 0) {
                    $('.FirstRow').find('td').eq(0).find('input#txt').val(unescape(Data.Key) == "null" ? "" : unescape(Data.Key));
                    $('.FirstRow').find('td').eq(1).find('input#val').val(unescape(Data.value) == "null" ? "" : unescape(Data.value));
                    $('.FirstRow').find('td').eq(2).find('select#txtDateFormat').val(unescape(Data.DateTimeFormat) == "null" ? "" : unescape(Data.DateTimeFormat));
                    $('.FirstRow').find('td').eq(3).find('select#txtParameterType').val(unescape(Data.ParameterType) == "null" ? "" : unescape(Data.ParameterType));
                    $('.FirstRow').find('td').eq(4).find('select#txtAuthenticationMode').val(unescape(Data.AuthenticationMode) == "null" ? "" : unescape(Data.AuthenticationMode));
                    $('.FirstRow').find('td').eq(5).find('input#txtParentName').val(unescape(Data.ParentName) == "null" ? "" : unescape(Data.ParentName));
                    if (GatewayDetail.ParamList.length == countRow)
                        $('.FirstRow').find('td').eq(6).html(AddButton);
                    else
                        $('.FirstRow').find('td').eq(6).html(DeleteButton);


                    if (Data.value.toLowerCase().indexOf('##datetime##') != -1) {
                        $('#lblDateFormat').show();
                        $('#tdDateFormat').show();
                    }

                    else {
                        $('#lblDateFormat').hide();
                        $('#tdDateFormat').hide();
                    }
                }
                else {

                    $('#HttpParameters tr').find('td:eq(6)').html(DeleteButton);
                    var NewRow = $('<tr id="row_' + countRow + '">').append($('#HttpParameters').find('tr:eq(0)').html());
                    //Appended New Row at Last-child
                    $('#HttpParameters > tbody:last-child').append(NewRow);
                    $('#HttpParameters tr:last-child').find('td').eq(0).find('input#txt').val(unescape(Data.Key) == "null" ? "" : unescape(Data.Key));
                    $('#HttpParameters tr:last-child').find('td').eq(1).find('input#val').val(unescape(Data.value) == "null" ? "" : unescape(Data.value));
                    $('#HttpParameters tr:last-child').find('td').eq(2).find('select#txtDateFormat').val(unescape(Data.DateTimeFormat) == "null" ? "" : unescape(Data.DateTimeFormat));
                    $('#HttpParameters tr:last-child').find('td').eq(3).find('select#txtParameterType').val(unescape(Data.ParameterType) == "null" ? "" : unescape(Data.ParameterType));
                    $('#HttpParameters tr:last-child').find('td').eq(4).find('select#txtAuthenticationMode').val(unescape(Data.AuthenticationMode) == "null" ? "" : unescape(Data.AuthenticationMode));
                    $('#HttpParameters tr:last-child').find('td').eq(5).find('input#txtParentName').val(unescape(Data.ParentName) == "null" ? "" : unescape(Data.ParentName));

                    if (Data.value.toLowerCase().indexOf('##datetime##') != -1) {
                        $('#lblDateFormat').show();
                        $('#HttpParameters tr:last-child').closest('tr').find('td#tdDateFormat').show();
                    }

                    else {
                        $('#lblDateFormat').hide();
                        $('#HttpParameters tr:last-child').closest('tr').find('td#tdDateFormat').hide();
                    }

                    if (GatewayDetail.ParamList.length == countRow)
                        $('#HttpParameters tr:last-child').find('td').eq(6).html(AddButton);
                    else
                        $('#HttpParameters tr:last-child').find('td').eq(6).html(DeleteButton);
                }
                countRow++;
            })
            $("#httpModal").modal();
        });

        $('#HttpGateway ').on('click', '.httpdelete', function () {

            var selectedrow = $(this).closest('tr');
            var GatewayId = $('#HttpGateway').dataTable().fnGetData(selectedrow).HttpGatewayId;
            if (confirm("Are you sure you want to delete this Gateway?")) {
                $.ajax({
                    //type: "POST",
                    //async: false,
                    url: "/WebAdmin/Http/DeleteGateway",
                    data: { "GatewayId": GatewayId },
                    //contentType: "application/json; charset=utf-8",
                    success: function (result) {


                        if (result.split('#')[0] == "success") {

                            $("#dvMessage").html("");
                            var input = ' <div class="alert alert-' + result.split("#")[0] + ' style="padding:15px !important" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + result.split('#')[1] + '</div>'
                            $("#dvMessage").html(input);
                            //setTimeout(function () { // wait 3 seconds and reload
                            //    window.location.href = "/WebAdmin/Smpp/ManageSmppGateway";
                            //}, 6000);
                            $('#HttpGateway').DataTable().draw();
                        }
                        else {
                            $("#dvMessage").html("");
                            var input = ' <div class="alert alert-' + result.split("#")[0] + ' style="padding:15px !important" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + result.split('#')[1] + '</div>'
                            $("#dvMessage").html(input);

                        }
                    }

                });
            }
        });

        $('#HttpParameters').on('click', '.AddnewRow', function () {

            var RowCount = $('#HttpParameters tr').length;
            var Textboxvalue = $(this).closest('tr').find('input#txt').val();
            var isValid = true;

            if (isValid) {

                var ParameterValue = $(this).closest('tr').find('input#val').val();
                var isValidToAdd = false;
                var ArrayParameter = [];
                if (Textboxvalue != "" && ParameterValue != "") {
                    var DeleteButton = '<a class="DeleteRow" ><i class="fa fa-minus-circle fa-2x" style="color: #e01e1e;font-size: 1.8em !important"></i></a>';
                    var AddButton = '<a class="AddnewRow"><i class="fa fa-plus-circle fa-2x" style="color: #0fa20f;font-size: 1.8em !important" ></i></a>';
                    $('#HttpParameters tr:not(:last-child)').each(function () {
                        ArrayParameter.push($(this).find('select').val());
                    })

                    var ArrayIndex = jQuery.inArray(ParameterValue, ArrayParameter);

                    if (ArrayIndex != -1) {
                        alert('Parameter Alerady Exist.');
                    }
                    else {
                        countRow++;
                        // Find all the tr of Table and Appended Delete button on 2nd td of every tr
                        $('#HttpParameters tr').find('td:eq(6)').html(DeleteButton);
                        var NewRow = $('<tr id="row_' + countRow + '">').append($('#HttpParameters').find('tr:eq(0)').html());
                        // Appended New Row at Last-child
                        $('#HttpParameters > tbody:last-child').append(NewRow);
                        $('#HttpParameters tr:last-child').find('td').eq(0).find('input').val('');
                        $('#HttpParameters tr:last-child').closest('tr').find('td#tdDateFormat').hide();
                        $('#HttpParameters tr:last-child').find('td').eq(6).html(AddButton);
                    }
                }
                else {
                    if (Textboxvalue == "") {
                        $(this).closest('tr').find('input').focus();
                        alert('Parameter value can not be blank.');
                    }
                    else {
                        $(this).closest('tr').find('select').focus();
                        alert('Parameter can not be blank.');
                    }
                }
            }
        });

        $('#HttpParameters').on('click', '.DeleteRow', function () {
            debugger

            //var row = $(this).closest('tr');
            //row.remove();
            var AddButton = '<a class="AddnewRow"><i class="fa fa-plus-circle fa-2x" style="color: #0fa20f;font-size: 1.8em !important" ></i></a>';

            $(this).closest('tr').next().remove();
            if ($(this).closest("tr").is(":last-child"))
                $(this).closest('tr').find('td').eq(6).html(AddButton);

            //  $('#txtHttpURLPreview').val($('#txtHttpURL').val());

            var baseURL = $('#txtHttpURL').val();
            var ContentType = 2;
            if (ContentType != 3) {
                var lastChar = baseURL.slice(-1);
                if (lastChar == '?') {
                    baseURL = baseURL.slice(0, -1);
                }
                baseURL = baseURL + "?";
                //var currentData = $('#row_1').find("input#txt").val() + "=" + $('#row_1').find("option:selected").attr("value");
                var currentData = $('#row_1').find("input#txt").val() + "=" + $('#row_1').find("input#val").val();
                var data = "";
                var i = countRow;
                for (var x = 2; x <= i; x++) {


                    if ($('#row_' + x).find("input#txt").val() + "=" + $('#row_' + x).find("input#val").val() != "undefined=undefined"
                        && $('#row_' + x).find("input#txt").val() + "=" + $('#row_' + x).find("input#val").val() != "=") {
                        data += '&' + $('#row_' + x).find("inpu#txt").val() + "=" + $('#row_' + x).find("input#val").val();
                    }
                }
            } else {
                //$('#txtHttpURLPreview').val(baseURL);
                //$("#txtHttpURLPreview").attr("title", baseURL);
            }

        });

        $('#txtHttpURL').on('keyup', function () {

            // $('#txtHttpURLPreview').val($('#txtHttpURL').val());

            var baseURL = $('#txtHttpURL').val();
            var ContentType = 2;
            if (ContentType != 3) {
                var lastChar = baseURL.slice(-1);
                if (lastChar == '?') {
                    baseURL = baseURL.slice(0, -1);
                }
                baseURL = baseURL + "?";
                //  var currentData = $('#row_1').find("input").val() + "=" + $('#row_1').find("option:selected").attr("value");
                var currentData = $('#row_1').find("input#txt").val() + "=" + $('#row_1').find("input#val").val();
                var data = "";
                var i = countRow;
                for (var x = 2; x <= i; x++) {
                    //if ($('#row_' + x).find("input").val() + "=" + $('#row_' + x).find("option:selected").attr("value") != "=") {
                    //    data += '&' + $('#row_' + x).find("input").val() + "=" + $('#row_' + x).find("option:selected").attr("value");
                    //}
                    if ($('#row_' + x).find("input#txt").val() + "=" + $('#row_1').find("input#val").val() != "=") {
                        data += '&' + $('#row_' + x).find("input#txt").val() + "=" + $('#row_1').find("input#val").val();
                    }
                }
                //if (currentData == "=") {
                //    $('#txtHttpURLPreview').val(baseURL);
                //    $("#txtHttpURLPreview").attr("title", baseURL);
                //}
                //else {
                //    if (data != "&=") {
                //        $("#txtHttpURLPreview").val(baseURL + currentData + data);
                //        $("#txtHttpURLPreview").attr("title", baseURL + currentData + data);
                //    }
                //    else {
                //        $("#txtHttpURLPreview").val(baseURL + currentData);
                //        $("#txtHttpURLPreview").attr("title", baseURL + currentData);
                //    }
                //}
            } else {
                //$('#txtHttpURLPreview').val(baseURL);
                //$("#txtHttpURLPreview").attr("title", baseURL);
            }


        });

        $('tbody').on('keyup', '[contenteditable="true"]', function () {


            const content = $(this).parent('tr').context.value;

            if (content.toLowerCase().indexOf('##datetime##') != -1) {

                $(this).closest('tr').find('td#tdDateFormat').show();
            }

            else {
                $(this).closest('tr').find('td#tdDateFormat').hide();
            }



        });




        //number validation in jquery
        $('.NumberValidation').keypress(function (event) {
            //console.log(event.which);
            //if (event.which != 8 && isNaN(String.fromCharCode(event.which))) {
            //    event.preventDefault();
            //}
            var isNum = isNumber(event, this);
            if (!isNum) {
                event.preventDefault();
            }
            //var reg = "/^[1-9]\d*(\.\d+)?$/"; //reg pattern<br/>
            //if (event.which != 8 && !reg.test(String.fromCharCode(event.which)))//validate
            //{
            //    event.preventDefault();
            //}
        });
    });

    // THE SCRIPT THAT CHECKS IF THE KEY PRESSED IS A NUMERIC OR DECIMAL VALUE.
    function isNumber(evt, element) {

        var charCode = (evt.which) ? evt.which : event.keyCode

        if (
            (charCode != 45 || $(element).val().indexOf('-') != -1) &&      // “-” CHECK MINUS, AND ONLY ONE.
            (charCode != 46 || $(element).val().indexOf('.') != -1) &&      // “.” CHECK DOT, AND ONLY ONE.
            (charCode < 48 || charCode > 57))
            return false;

        return true;
    }
    $('#adds').click(function add() {
        var $rooms = $("#SourceAddressTon");
        var a = $rooms.val();

        a++;
        $("#subs").prop("disabled", !a);
        $rooms.val(a);
    });

    $("#subs").prop("disabled", !$("#SourceAddressTon").val());

    $('#subs').click(function subst() {
        var $rooms = $("#SourceAddressTon");
        var b = $rooms.val();
        if (b >= 1) {
            b--;
            $rooms.val(b);
        }
        else {
            $("#subs").prop("disabled", true);
        }
    });

    $('#SourceNpiadds').click(function add() {
        var $rooms = $("#SourceAddressNpi");
        var a = $rooms.val();

        a++;
        $("#SourceNpisubs").prop("disabled", !a);
        $rooms.val(a);
    });

    $("#SourceNpisubs").prop("disabled", !$("#SourceAddressNpi").val());

    $('#SourceNpisubs').click(function subst() {
        var $rooms = $("#SourceAddressNpi");
        var b = $rooms.val();
        if (b >= 1) {
            b--;
            $rooms.val(b);
        }
        else {
            $("#SourceNpisubs").prop("disabled", true);
        }
    });


    $('#DestinationTonadds').click(function add() {
        var $rooms = $("#DestinationAddressTon");
        var a = $rooms.val();

        a++;
        $("#DestinationTonsubs").prop("disabled", !a);
        $rooms.val(a);
    });

    $("#DestinationTonsubs").prop("disabled", !$("#DestinationAddressTon").val());

    $('#DestinationTonsubs').click(function subst() {
        var $rooms = $("#DestinationAddressTon");
        var b = $rooms.val();
        if (b >= 1) {
            b--;
            $rooms.val(b);
        }
        else {
            $("#DestinationTonsubs").prop("disabled", true);
        }
    });

    $('#DestinationNpiadds').click(function add() {
        var $rooms = $("#DestinationAddressNpi");
        var a = $rooms.val();

        a++;
        $("#DestinationNpisubs").prop("disabled", !a);
        $rooms.val(a);
    });

    $("#DestinationNpisubs").prop("disabled", !$("#DestinationAddressNpi").val());

    $('#DestinationNpisubs').click(function subst() {
        var $rooms = $("#DestinationAddressNpi");
        var b = $rooms.val();
        if (b >= 1) {
            b--;
            $rooms.val(b);
        }
        else {
            $("#DestinationNpisubs").prop("disabled", true);
        }
    });

    $('#TxSessionsadds').click(function add() {

        var $rooms = $("#MaxTxSessions");
        var a = $rooms.val();

        a++;
        $("#TxSessionssubs").prop("disabled", !a);
        $rooms.val(a);
    });

    $("#TxSessionssubs").prop("disabled", !$("#MaxTxSessions").val());

    $('#TxSessionssubs').click(function subst() {
        var $rooms = $("#MaxTxSessions");
        var b = $rooms.val();
        if (b >= 1) {
            b--;
            $rooms.val(b);
        }
        else {
            $("#TxSessionssubs").prop("disabled", true);
        }
    });


    $('#RxSessionsadds').click(function add() {
        var $rooms = $("#MaxRxSessions");
        var a = $rooms.val();

        a++;
        $("#RxSessionssubs").prop("disabled", !a);
        $rooms.val(a);
    });
    $("#RxSessionssubs").prop("disabled", !$("#MaxRxSessions").val());

    $('#RxSessionssubs').click(function subst() {
        var $rooms = $("#MaxRxSessions");
        var b = $rooms.val();
        if (b >= 1) {
            b--;
            $rooms.val(b);
        }
        else {
            $("#RxSessionssubs").prop("disabled", true);
        }
    });

    $('#TxRSessionsadds').click(function add() {
        var $rooms = $("#MaxTxRxSessions");
        var a = $rooms.val();

        a++;
        $("#TxRSessionssubs").prop("disabled", !a);
        $rooms.val(a);
    });
    $("#TxRSessionssubs").prop("disabled", !$("#MaxTxRxSessions").val());

    $('#TxRSessionssubs').click(function subst() {
        var $rooms = $("#MaxTxRxSessions");
        var b = $rooms.val();
        if (b >= 1) {
            b--;
            $rooms.val(b);
        }
        else {
            $("#TxRSessionssubs").prop("disabled", true);
        }
    });

    $("#form button[type='submit']").on("click", function (event) {

        // traverse all the required elements looking for an empty one
        //$("#form input[required='required']").each(function () {


        //    // if the value is empty, that means that is invalid
        //    if ($(this).val() == "") {


        //        // hide the currently open accordion and open the one with the required field
        //        $(".panel-collapse.in").removeClass("in");
        //        $(this).closest(".panel-collapse").addClass("in").css("height", "auto");

        //        // stop scrolling through the required elements
        //        return false;
        //    }
        //});
    });

    $('.modal').on('hidden.bs.modal', function (e) {
        $(this)
            .find("input,textarea,select")
            .val('')
            .end()
            .find("input[type=checkbox], input[type=radio]")
            .prop("checked", "")
            .end();

    })

    function deleteHandlerUrl(handlerId) {

        if (handlerId > 0) {
            if (confirm("Do you really want to delete this URL?")) {
                $.ajax({
                    type: 'GET',
                    url: '/WebAdmin/Http/DeleteHttpHandler?handlerId=' + handlerId,
                    dataType: "json",
                    success: function (response) {

                        var input = ' <div class="alert alert-' + response.MessageType + '" style="padding:15px !important" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + response.ErrorMessage + '</div>';
                        $("#dvMessage").html(input);
                        $("#MOHandler").DataTable().draw();
                    }
                });
            }

        }
    }


    function GetAccountTypes() {

        $.ajax({
            "type": "GET",
            "url": "GetBussinessAccountTypes",
            "data": '',
            "success": function (response) {

                $("#ddBusinessType").html("");

                select = "";
                $.each(response, function (index, value) {

                    select += "<option value='" + value.Id + "'>" + value.Type + "</option>";
                })
                $("#ddBusinessType").append(select);

                $.each(response, function (index, value) {
                    if (value.Type == 'Promotional') {
                        $("#ddBusinessType option:eq(" + index + ")").data("subtext", "<span class='label label-success'>" + value.Type + "</span>");

                    } else if (value.Type == 'Transactional') {
                        $("#ddBusinessType option:eq(" + index + ")").data("subtext", "<span class='label label-warning'>" + value.Type + "</span>");

                    } else {
                        $("#ddBusinessType option:eq(" + index + ")").data("subtext", "<span class='label label-primary'>" + value.Type + "</span>");

                    }
                })

            }
        });
    }

    function LoadHttpGateways() {


        $('#HttpGateway').DataTable({
            "processing": true,
            "serverSide": true,
            "bSort": false,
            "info": true,
            oLanguage: {
                sProcessing: "<img src='/Images/ajaxloader.gif'>"
            },

            "ajax": {
                "url": "/WebAdmin/Http/GetHTTPGatewayDetails",
                "type": "POST",
                "datatype": "json",
            },
            "columns": [
                { "data": 'GatewayId', "orderable": false, "name": "GatewayId" },
                { "data": 'sHttpGatewayName', "orderable": false, "name": "HttpGatewayName", "sWidth": "10%" },
                { "data": "HttpURL", "orderable": false, "name": "HttpURL" },
                {
                    "data": "RequestType", "orderable": false, render: function (data, type, row) {
                        return '<span>' + data + '</span>'
                    }
                },
                { "data": 'MaxSessions', "sWidth": "5%", "orderable": false, "name": "TxPort" },
                {
                    "data": 'Status', "orderable": false, render: function (data, type, row) {
                        return '<span>' + data + '</span>'
                    }
                },
                {
                    data: null,
                    orderable: false,
                    render: function (data) {
                        return '<a href=\"javascript:;\" class="httpedit editor_edit"><i class="fa fa-edit"></i> Edit</a> | <a href=\"javascript:;\" class="httpdelete delete"><i class="fa fa-trash-o"></i> Delete</a>'
                    },

                },
            ],
            "order": [[0, "asc"]],
            "fnRowCallback": function (nRow, aData, iDisplayIndex, iDisplayIndexFull) {

                if (aData.ISActive == 1) {
                    $("td", nRow).eq(5).find("span").addClass("label label-sm label-success").css({ 'font-size': '100%', 'border-radius': '0', 'font-weight': '300', 'padding': '2px 14px', 'font-size': '83%' });
                    $("td", nRow).eq(5).find("span").html("Active");
                }
                else if (aData.ISActive == 0) {
                    $("td", nRow).eq(5).find("span").addClass("label label-danger").css({ 'font-size': '100%', 'border-radius': '0', 'font-weight': '300', 'padding': '.2em .3em', 'font-size': '83%' });
                    $("td", nRow).eq(5).find("span").html("Not Active");
                }

                if (aData.RequestType == 0) {
                    $("td", nRow).eq(3).find("span").addClass("label label-sm label-success").css({ 'font-size': '100%', 'border-radius': '0', 'font-weight': '300', 'padding': '2px 14px', 'font-size': '83%' });
                    $("td", nRow).eq(3).find("span").html("Simple Http");
                }
                else if (aData.RequestType == 1) {
                    $("td", nRow).eq(3).find("span").addClass("label label-success").css({ 'font-size': '100%', 'border-radius': '0', 'font-weight': '300', 'padding': '.2em .3em', 'font-size': '83%' });
                    $("td", nRow).eq(3).find("span").html("Rest/JSON");
                }
                else {
                    $("td", nRow).eq(3).find("span").addClass("label label-success").css({ 'font-size': '100%', 'border-radius': '0', 'font-weight': '300', 'padding': '.2em .3em', 'font-size': '83%' });
                    $("td", nRow).eq(3).find("span").html("SOAP");
                }
            },
        });
    }

    function LoadHandler() {


        $('#MOHandler').DataTable({
            "processing": true,
            "serverSide": true,
            "bSort": false,
            "info": true,
            oLanguage: {
                sProcessing: "<img src='/Images/ajaxloader.gif'>"
            },

            "ajax": {
                "url": "/WebAdmin/Http/GetHandlerDetails",
                "type": "POST",
                "datatype": "json",
            },
            "columns": [
                { "data": 'EndpointHandlerUrlId', "orderable": false, "visible": false, "name": "EndpointHandlerUrl" },
                { "data": 'EndpointHandlerUrl', "orderable": false, "name": "EndpointHandlerUrl" },
                { "data": 'sEndPointHandlerType', "orderable": false, "name": "sEndPointHandlerType" },
                {
                    data: null,
                    orderable: false,
                    render: function (data) {

                        if (data.EndPointHandlerType == '3')
                            return '<a href=\"javascript:;\" onClick = "AddHandler()" class="addHandler"><i class="fa fa-plus"></i> Add</a> | <a href=\"javascript:;\" class="viewHandler" onClick = "ViewHandler()"><i class="fa fa-eye"></i> View</a> | <a href=\"javascript:;\" onClick = "deleteHandlerUrl(' + data.EndpointHandlerUrlId + ')"><i class="fa fa-trash"></i> Delete</a>';
                        else
                            return '<a href=\"javascript:;\" onClick = "deleteHandlerUrl(' + data.EndpointHandlerUrlId + ')"><i class="fa fa-trash"></i> Delete</a>';
                    },

                }
            ],
            "order": [[0, "asc"]]
        });
    }

    $('#handlerForm').on('submit', function (event) {

        event.preventDefault();

        //grab the form and wrap it with jQuery
        var $form = $(this);

        $.ajax({
            type: $form.prop('method'),
            url: '/WebAdmin/Http/CreateSubscription',
            data: $form.serialize(),
            dataType: "json",
            traditional: true,
            success: function (response) {
                $("#divHandlerMessage").html("");
                if (!response.IsSuccess) {
                    var input = ' <div class="alert alert-' + response.MessageType + '" style="padding:15px !important" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + response.ErrorMessage + '</div>';
                    $("#divHandlerMessage").html(input);
                }
                else {
                    $("#addhandlerModal").modal('toggle');
                    var input = ' <div class="alert alert-' + response.MessageType + '" style="padding:15px !important" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + response.ErrorMessage + '</div>';
                    $("#divHandlerMessage").html(input);
                    $("#viewHandlerTable").DataTable().draw();
                }
            }
        });

    });

    function ViewHandler() {

        $("#viewHandlerModal").modal();

        $('#viewHandlerTable').DataTable({
            "processing": true,
            "serverSide": true,
            destroy: true,
            "lengthMenu": [[10, 20, 50, 100], [10, 20, 50, 100]],
            "filter": false,
            "orderable": false,
            "bSort": false,
            "ajax": {
                "url": "/WebAdmin/Http/GetSubscriptionDetails",
                "type": "POST",
            },
            "columns": [
                { "data": "ServiceId", "orderable": false },
                { "data": "ProductId", "orderable": false },
                { "data": "Channel", "orderable": false },
                { "data": "SubscriptionKeyword", "orderable": false },
                { "data": "UnSubscriptionKeyword", "orderable": false },
                {
                    data: null,
                    orderable: false,
                    render: function (data) {

                        return '<a href=\"javascript:;\" onClick = "DeleteEndpointParameter(' + data.Id + ')" class="deleteEndpointParamter"><i class="fa fa-trash-o"></i> Delete</a>';
                    },

                }
            ],
            "bJQueryUI": true,
            sPaginationType: "full_numbers",
        });

    }

    function DeleteEndpointParameter(id) {
        if (confirm("are you sure you want to delete this?")) {
            $.ajax({
                "url": "/WebAdmin/Http/DeleteEndpointParamter",
                "data": { id: id },
                "success": function (response) {
                    if (response == true) {
                        debugger
                        $("#dvMessageEndPoint").html("");
                        var input = ' <div class="alert alert-success" style="padding:15px !important" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Record has been successfully deleted.</div>';
                        $("#dvMessageEndPoint").html(input);
                        $('#viewHandlerTable').DataTable().draw();
                    }
                    else {
                        $("#dvMessageEndPoint").html("");
                        var input = ' <div class="alert alert-danger" style="padding:15px !important" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Error while deleting record.</div>';
                        $("#dvMessageEndPoint").html(input);
                    }
                }
            });


        }
    }

    function AddHandler() {
        $("#addhandlerModal").modal();
    }
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
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-sanitize.js"></script>
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
