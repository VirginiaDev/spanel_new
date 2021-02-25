<%@page import="user.User"%>
<%@page import="java.util.List"%>
<%@page import="manager.UserManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" /> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/
font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" 
crossorigin="anonymous">

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

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="page-container-bg-solid page-header-fixed page-sidebar-closed-hide-logo ng-scope"
	ng-app="app">
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
                                    <li><a href="Administration.jsp" data-toggle="pills" class="2" style="margin-left: -75px;"><i class="fa fa-user" aria-hidden="true"></i><br> ADMINISTRATION</a></li>
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
                                <ul class="sub-menu">
                                    <li class="nav-item start active open">
                                        <a href="ManageInterface.jsp" class="3">
                                            <i class="fa fa-sliders"></i>
                                            <span class="title"> Manage Interface</span>
                                            <span class="selected"></span>
                                        </a>
                                    </li>
                                    <li class="nav-item start active">
                                        <a href="EsmeBlackListRule.html" class="3">
                                            <i class="fa fa-sliders"></i>
                                            <span class="title"> Esme Blacklist Rule</span>
                                            <span class="selected"></span>
                                        </a>
                                    </li>
                                    <li class="nav-item start active">
                                        <a href="EsmeClientList.html" class="3">
                                             <i class="fa fa-sliders"></i>
                                            <span class="title"> Esme Client List</span>
                                            <span class="selected"></span>
                                        </a>
                                    </li>
                                </ul>
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
			<div class="page-content" style="min-height: 620px;">
           <div class="portlet light bordered">
				<div class="Portlet-body">
				<div class="row-fluid">
				<b style="font-size: 17px">Manage Interface</b>
				<div class="form-group">
                        <a href="#" data-toggle="modal" data-target="#myModal" class="btn btn-success btn-sm" id="addGateway"><i class="fa fa-plus"></i>&nbsp;Add New</a>&nbsp;
                    </div>
                    
                    <div class="modal fade" id="myModal" role="dialog">
										<div class="modal-dialog">

											<!-- Modal content-->
											<div class="modal-content">
												<div class="modal-header">
													<p style="margin: 0px 0; font-size: large;">Account Details</p>
												</div>
												<div class="modal-body">
													
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
													</div>
													</div>
													</form>
													
													
												</div>

											</div>

										</div>
									</div>
                    
                    
                    
					</div>
				</div>
			</div>
		</div>
	</div>
			
</div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js"></script>
</body>
</html>