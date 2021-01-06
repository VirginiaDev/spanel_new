<%@page import="java.util.List"%>
<%@page import="manager.UserManager"%>
<%@page import="user.User"%>
<%String message = (String)session.getAttribute("message"); 
User user=(User)request.getAttribute("user");%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" /> 
<meta
	content="Preview page of Metronic Admin Theme #4 for statistics, charts, recent events and reports"
	name="description" />
<meta content="" name="author" />
<<!-- script src="/Script/jsapi.js"></script>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/app.min.js"></script>
<script src="assets/js/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/js/layout.js"></script>
<script src="assets/js/.validate.min.js"></script>
<script src="assets/js/unobtrusive.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/angular.js"></script>
<script src="assets/js/app.js"></script>
<script src="assets/js/bsAlerts.js"></script> -->

 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/
font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" 
crossorigin="anonymous">
<!--
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->


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
<body
	class="page-container-bg-solid page-header-fixed page-sidebar-closed-hide-logo ng-scope"
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
		<!-- END SIDEBAR -->
		<!-- BEGIN CONTENT -->

		<div class="page-sidebar-wrapper">
			<div class="page-sidebar navbar-collapse collapse">
				<ul id="5" class="page-sidebar-menu" data-keep-expanded="false"
					data-auto-scroll="true" data-slide-speed="200"
					style="display: block;">
					<li class="nav-item active open"><a href="javascript:;"
						class="nav-link nav-toggle"> <i class="fa fa-user fa-lg"></i>
							<span class="title">User Management</span> <span class="arrow"></span>
					</a>
						<ul class="sub-menu">
							<li class="nav-item active"><a
								href="#" class="5"> <i
									class="fa fa-group"></i> <span class="title">User
										Dashboard</span>
							</a></li>
							<li class="nav-item"><a href="#" class="5">
									<i class="fa fa-info-circle"></i> <span class="title">Site
										Branding</span>
							</a></li>
							<li class="nav-item"><a href="#"
								class="5"> <i class="fa fa-sitemap"></i> <span class="title">
										Site User Tree List</span>
							</a></li>
							<li class="nav-item"><a href="#"
								class="5"> <i class="fa fa-users"></i> <span class="title">
										Client Transctions</span>
							</a></li>
							<li class="nav-item"><a href="#"
								class="5"> <i class="fa fa-file"></i> <span class="title">
										SMPP LiveTraffic Report</span>
							</a></li>
							<li class="nav-item"><a
								href="#" class="5">
									<i class="fa fa-file-archive-o"></i> <span class="title">
										ESME LiveTraffic Report</span>
							</a></li>
							<li class="nav-item"><a
								href="#" class="5"> <i
									class="fa fa-check-circle-o"></i> <span class="title">All
										Sender ID Request</span>
							</a></li>
							<li class="nav-item"><a
								href="#" class="5"> <i
									class="fa fa-file"></i> <span class="title">All Template
										Request</span>
							</a></li>
							<li class="nav-item"><a
								href="#" class="1">
									<i class=" fa fa-money"></i> <span class="title">Manage
										Rate Templates</span>
							</a></li>
						</ul></li>
				</ul>

			</div>



			<!-- END SIDEBAR -->
		</div>


		<div class="page-content-wrapper">
			<div class="page-content" style="min-height: 620px;">
				<div class="page-head">
					<div class="page-title">
						<h1>User Management</h1>
					</div>
				</div>




				<style>
.country-width {
	width: 100%;
}

.form-group .col-xs-6 {
	text-align: left;
}

.m-t-5 {
	margin-top: 5px
}

.t-2 {
	top: 2px;
}

.l-t-8 {
	top: 8px;
}

.m-l-10 {
	margin-left: 10px;
}

.m-l-8 {
	margin-left: 8px;
}
</style>
				<div class="padding-md">
					<div class="row">

						<script>
            $(document).ready(function () {

                $.urlParam = function (name) {
                    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
                    if (results == null) {
                        return null;
                    }
                    else {
                        return decodeURI(results[1]) || 0;
                    }
                }
                if ($.urlParam('name') != "0" && $.urlParam('name') != "" && $.urlParam('name') != undefined) {
                    $('#txtUserNames').val($.urlParam('name'));
                    $("#ViewUserProfile").click();
                }
            });
        </script>
						<div class="col-md-12">
							<div class="portlet light bordered">

								<div class="Portlet-body">
									<form action="UserController?userAction=11"
										class="form-inline no-margin ng-pristine ng-valid"
										method="post" novalidate="novalidate">
										<div class="form-group">
											<!-- <input class="form-control input-sm tb ui-autocomplete-input"
												data-val="true"
												data-val-length="The User Name should not be more than 50 characters long."
												data-val-length-max="50"
												data-val-regex="Please enter valid username"
												data-val-regex-pattern="[a-zA-Z0-9@#$%&amp;*+\-_()+.,![\]\s\\/]+$"
												data-val-required="User Name is required" id="txtUserNames"
												name="UserName" placeholder="Enter User Name"
												required="required" style="width: 225px;" type="text"
												value="" aria-required="true" autocomplete="off"
												role="textbox" aria-autocomplete="list" aria-haspopup="true"> -->
												<div class="row-fluid">
										      <select class="selectpicker" name="UserName" data-show-subtext="true" data-live-search="true">
										      <option>Choose User</option>
										     
									        <%
										     UserManager manager = new UserManager();
										      List<User> e=manager.getAllUsersByUserName();
										      for(int i=0;i<e.size();i++){
										      %>
										        <option value="<%=e.get(i).getUserName() %>" data-subtext=""><%=e.get(i).getUserName() %></option>
										        <%} %>
										         </select>
										    </div>
												
										</div>
										<button type="submit" id="ViewUserProfile"
											class="btn btn-sm btn-success">
											<i class="fa fa-check"></i>&nbsp;View
										</button>
										<a href="SignUp.html" id="DisplayAddNewUSer"
											class="btn btn-info btn-sm"><i class="fa fa-user"></i>&nbsp;Add
											New User</a>
									</form>
									<br>
									<div style="padding: 15px !important; display: none"
										id="alertdiv">
										<a href="#" class="close" aria-label="close">Ã—</a> <span
											id="AlertMessage"></span>
									</div>
									<%if(user!=null){
									if(user.getName()!=null){%>
									<a href="" data-toggle="modal" data-target="#myModalLink">
										Impersonate User </a><br>
									<div style="margin-top: 25px;">
										UserName:&nbsp;&nbsp;<input type="text" class="form-control"
											value="<%=user.getUserName()%>"
											style="background-color: #f7f7f7 !important;"> <br>
										UserId:&nbsp;&nbsp;<input type="text" class="form-control"
											value="<%=user.getId()%>"
											style="background-color: #f7f7f7 !important;"> <br>
										Email:&nbsp;&nbsp;<input type="text" class="form-control"
											value="<%=user.getEmail()%>"
											style="background-color: #f7f7f7 !important;"> <br>
										Mobile:&nbsp;&nbsp;<input type="text" class="form-control"
											value="<%=user.getMobile()%>"
											style="background-color: #f7f7f7 !important;"> <br>
										TimeZone:&nbsp;&nbsp;<input type="text" class="form-control"
											value="<%=user.getTimeZone()%>"
											style="background-color: #f7f7f7 !important;"> <br>
									</div>


									<%}%>
									<%}%>
									<div class="modal fade" id="myModalLink" role="dialog">
										<div class="modal-dialog">

											<!-- Modal content-->
											<div class="modal-content">
												<div class="modal-header">
													<p style="margin: 0px 0; font-size: large;">Password</p>
												</div>
												<div class="modal-body">
													<form action="UserController" class="form-horizontal" name="uForm"
														method="post">
														<input type="hidden" name="id" value="">
														<input type="hidden" name="user_name">
														 <input type="hidden" name="userAction" value="12">

														<div class="form-group">
															<div class="col-md-12 col-sm-9 col-xs-12 pb-10">
																Enter Password <input type="password" class="form-control"
																	id="password" name="password" value="">
															</div>
														</div>

														<div class="modal-footer">
															<button type="button" class="btn btn-secondary"
																data-dismiss="modal">Close</button>
															<input type="button" onclick="submitPassword()" value="SAVE" class="btn btn-primary">

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

				<script>
                                                                        var visibleDeliveryReport = true;
                                                                        $(function () {
                                                                            $('#ContactsFileName').change(
                                                                                function () {
                                                                                    if ($(this).val()) {
                                                                                        $("#ImportContacts").removeAttr("disabled");

                                                                                    }
                                                                                    else {
                                                                                        $("#ImportContacts").attr("disabled", "disabled");

                                                                                    }
                                                                                }
                                                                            );
                                                                        })
                                                                        //$.ajax({
                                                                        //    type: "POST",
                                                                        //    async: false,
                                                                        //    url: '/Reseller/Administration/GetDeliveryReport',
                                                                        //    data: '{UserName: "' + $("#txtUserNames").val() + '"}',
                                                                        //    contentType: "application/json; charset=utf-8",
                                                                        //    success: function (result) {

                                                                        //        $('#DlrReport').toggle();
                                                                        //        $('#DlrReport tbody').empty();
                                                                        //        $('#DlrReport').css('display', visibleDeliveryReport === false ? 'none' : 'block');
                                                                        //        if (result.length === 0) {
                                                                        //            var rowhtml = '<tr><td style="width:25%;text-align: center" colspan="7" >No Record Found</td></tr>';
                                                                        //            $('#DlrReport').append(rowhtml);
                                                                        //        }
                                                                        //        else {
                                                                        //            for (var i = 0, l = result.length; i < l; i += 2) {
                                                                        //                var oddPositionVal = result[i];
                                                                        //                var evenPositionVal = result[i + 1];

                                                                        //                var rowhtml = '<tr><td style="width:25%">' + evenPositionVal + '</td><td style="width:25%">' + oddPositionVal.DeliveredCount + '</td><td style="width:25%">' + oddPositionVal.SubmittedCount + '</td><td style="width:25%">' + oddPositionVal.UnDeliveredCount + '</td><td style="width:25%">' + oddPositionVal.RejectedCount + '</td><td style="width:25%">' + oddPositionVal.OthersCount + '</td></tr>';
                                                                        //                $('#DlrReport').append(rowhtml);
                                                                        //            }
                                                                        //        }
                                                                        //        visibleDeliveryReport = !visibleDeliveryReport;
                                                                        //    }
                                                                        //});

                                                                        $(document).ready(function () {
                                                                            $("#ImportContacts").attr("disabled", "disabled");


                                                                            $(window).scrollTop(0);

                                                                            $("#Impersonate").click(function () {
                                                                                $("#txtVerifyPassword").val("");
                                                                            })


                                                                            $("#btnResend").on("click", function () {
                                                                                $("#dvResend").attr("hidden", "hidden");
                                                                                $.ajax({
                                                                                    "url": "/Reseller/Administration/GenerateOTP",
                                                                                    "data": "",
                                                                                    "type": "GET",
                                                                                    "success": function (response) {
                                                                                        clearTimeout(interval);

                                                                                        if (response.split('#')[0] == "success") {
                                                                                            $("#txtOTP").val("");
                                                                                            $("#dvResend").attr("hidden", "hidden");
                                                                                            $("#modalAlert").html("");
                                                                                            var innerText = '<div class="alert alert-' + response.split('#')[0] + '"  role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + response.split('#')[1] + '</div>'
                                                                                            $("#modalAlert").html(innerText);
                                                                                            $("#txtOTP").val('');
                                                                                            $("#modalOtpVerification").modal('show');
                                                                                            counter();
                                                                                        }
                                                                                        else {
                                                                                            $("#modalAlert").html("");
                                                                                            var innerText = '<div class="alert alert-' + response.split('#')[0] + '"  role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + response.split('#')[1] + '</div>'
                                                                                            $("#modalAlert").html(innerText);
                                                                                        }
                                                                                    }
                                                                                })
                                                                            })

                                                                            function myFunction() {
                                                                                var userName = $("#txtUserNames").val();
                                                                                $.ajax({
                                                                                    "url": "/Reseller/Administration/ImpersonateUser",
                                                                                    "data": { "user": userName },
                                                                                    "type": "GET",
                                                                                    "success": function (response) {
                                                                                        if (response != null) {
                                                                                            var myWindow = window.open(response, "PopupWindow", '_blank');
                                                                                            //var myWindow = window.location.href= response;

                                                                                        }
                                                                                    }

                                                                                })

                                                                            }


                                                                            $("#RatePlan").on("click", function () {
                                                                                debugger;
                                                                                if ($('#txtUserNames').val != "") {
                                                                                   var name = '';
                                                                                    if (name != '')
                                                                                        window.location.href = "/Reseller/Product/UserRatePlan?cId=" + name;
                                                                                }
                                                                            });

                                                                            var interval;
                                                                            function counter() {
                                                                                $("#dvCounter").removeAttr("hidden");

                                                                                $(function () {

                                                                                    var min_counter = 1;
                                                                                    var sec_Counter = 60;
                                                                                    interval = setInterval(function () {
                                                                                        if (parseInt(min_counter) > -1 && sec_Counter != 0) {
                                                                                            sec_Counter--;
                                                                                            $("#counterMin").html(min_counter);

                                                                                            $("#counterSec").html(sec_Counter);
                                                                                            // Display 'counter' wherever you want to display it.
                                                                                            if (sec_Counter == 0) {
                                                                                                min_counter--;

                                                                                                if (parseInt(min_counter) > -1) {
                                                                                                    $("#counterMin").html(min_counter);

                                                                                                    sec_Counter = 60;
                                                                                                }
                                                                                                else {
                                                                                                    $("#dvCounter").attr("hidden", "hidden");

                                                                                                    $("#dvResend").removeAttr("hidden");
                                                                                                }
                                                                                                // Display a login box
                                                                                                //clearInterval(interval);

                                                                                            }
                                                                                        }
                                                                                    }, 1000);
                                                                                });
                                                                            }

                                                                            $("#btnSubmitOTP").on("click", function () {
                                                                                var OTP = $("#txtOTP").val();
                                                                                $.ajax({
                                                                                    "url": "/Reseller/Administration/VerifyOTP",
                                                                                    "data": { OTP: OTP },
                                                                                    "type": "Post",
                                                                                    "success": function (response) {

                                                                                        if (response == "success") {
                                                                                            $("#modalAlert").html("");
                                                                                            $("#modalOtpVerification").modal('hide');
                                                                                            myFunction();
                                                                                        }
                                                                                        else if (response == "Expired") {
                                                                                            $("#modalAlert").html("");
                                                                                            var innerText = '<div class="alert alert-info" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + response + '</div>'
                                                                                            $("#modalAlert").html(innerText);
                                                                                        }
                                                                                        else {
                                                                                            $("#modalAlert").html("");
                                                                                            var innerText = '<div class="alert alert-info" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Verification code not match.</div>'
                                                                                            $("#modalAlert").html(innerText);
                                                                                            $("#dvCounter").attr("hidden", "hidden");
                                                                                            $("#dvResend").removeAttr("hidden");
                                                                                        }
                                                                                    }
                                                                                })
                                                                            })

                                                                            $("#btnVerifyPassword").on("click", function () {
                                                                                $.ajax({
                                                                                    "url": "/Reseller/Administration/GenerateOTP",
                                                                                    "data": { "password": $("#txtVerifyPassword").val(), "paramType": "Send" },
                                                                                    "type": "GET",
                                                                                    "success": function (response) {
                                                                                        if (response.split('#')[0] == "success") {
                                                                                            $("#modalPasswordVerification").modal('hide');
                                                                                            myFunction();                                                                                            
                                                                                            $("#dvResend").attr("hidden", "hidden");
                                                                                            $("#modalAlert").html("");
                                                                                            //var innerText = '<div class="alert alert-' + response.split('#')[0] + '"  role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + response.split('#')[1] + '</div>'
                                                                                            //$("#modalAlert").html(innerText);
                                                                                            //$("#txtOTP").val('');
                                                                                            //$("#modalOtpVerification").modal('show');
                                                                                            //counter();
                                                                                        }
                                                                                        else if (response.split('#')[1] == "Not Authorized") {
                                                                                            //$("#modalPasswordVerification").modal('hide');
                                                                                            $("#dvMessage").html("");
                                                                                            var innerText = '<div class="alert alert-danger"  role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>You are not authorized to perform this action.</div>'
                                                                                            $("#dvMessage").html(innerText);
                                                                                        }
                                                                                        else {
                                                                                            $("#dvMessage").html("");
                                                                                            var innerText = '<div class="alert alert-' + response.split('#')[0] + '"  role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + response.split('#')[1] + '</div>'
                                                                                            $("#dvMessage").html(innerText);
                                                                                        }
                                                                                    }

                                                                                })
                                                                            })

                                                                            $('#modalOtpVerification').on('hidden.bs.modal', function () {
                                                                                $(this).find("input,textarea").val('').end();
                                                                            })

                                                                            //$('.modal').on('hidden.bs.modal', function (e) {
                                                                            //    $(this)
                                                                            //        .find("input,textarea,select")
                                                                            //        .val('')
                                                                            //        .end()
                                                                            //        .find("input[type=checkbox], input[type=radio]")
                                                                            //        .prop("checked", "")
                                                                            //        .end();

                                                                            //});

                                                                        })

                                                                        $("#btnAddOptinGroup").on("click", function () {
                                                                            var optinGroupName = $("#txtOptinGroupName").val();
                                                                            var userName = $("#txtUserNames").val();

                                                                            $.ajax({
                                                                                "url": "/Reseller/Administration/AddGroup",
                                                                                "type": "Post",
                                                                                "dataType": "json",
                                                                                "data": { "groupName": optinGroupName, "userName": userName },
                                                                                "success": function (response) {
                                                                                    $("#dvMessageOptinModal").html("");

                                                                                    if (response.split('#')[0] == "success") {
                                                                                        GetgroupList();
                                                                                        $("#dvMessage").html("");
                                                                                        var input = '<div class="alert alert-' + response.split('#')[0] + '" style="padding:15px !important" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + response.split('#')[1] + '</div>'
                                                                                        $("#dvMessage").html(input);
                                                                                        $("#modalOptinGroup").modal("hide");
                                                                                        $("#DisplayOptionGroup").show();
                                                                                        $("#DisplayOptinGroupButton").hide();
                                                                                    }
                                                                                    else {
                                                                                        var input = '<div class="alert alert-' + response.split('#')[0] + '" style="padding:15px !important" role="alert"><a href= "#" class="close" data- dismiss="alert" aria- label="close">&times;</a >' + response.split('#')[1] + '</div>'
                                                                                        $("#dvMessageOptinModal").html(input);
                                                                                    }
                                                                                }
                                                                            })
                                                                        })

                                                                        function GetgroupList() {
                                                                            var userName = $("#txtUserNames").val();
                                                                            $.ajax({
                                                                                "url": "/Reseller/Administration/GetOptionGroupList",
                                                                                "data": { "UserName": userName },
                                                                                "type": "GET",
                                                                                contentType: "application/json; charset=utf-8",
                                                                                "success": function (response) {
                                                                                    var SelectMultipleService = $("#groupListDetails");
                                                                                    SelectMultipleService.empty();
                                                                                    $.each(response, function (index, value) {
                                                                                        SelectMultipleService.append($('<option/>', {
                                                                                            value: value.GroupId,
                                                                                            text: value.GroupName,
                                                                                        }));
                                                                                    });
                                                                                }
                                                                            });
                                                                        }
</script>
				<div class="modal fade" id="SessionformModal">
					<div class="modal-dialog" style="max-width: 480px">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">Ã—</button>
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
		<div class="page-footer-inner" style="margin-bottom: 0px !important">
			Â© 2020 . All rights reserved. <span><b>Contact Us</b></span> <span><i
				class="fa fa-envelope-o"></i> Email : support@sms24hours.com</span> &nbsp;|
			&nbsp;<span><i class="fa fa-phone" aria-hidden="true"></i>
				Phone :+91-9872363621</span>
		</div>
		<div class="scroll-to-top">
			<i class="icon-arrow-up"></i>
		</div>
	</div>
	<div class="quick-nav-overlay"></div>
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js"></script>
	<script>
	function submitPassword(){
	<%if(user!=null){%>
	document.uForm.user_name.value="<%=user.getUserName()%>";
	<%}%>
	document.uForm.submit();
	}
        $(document).ready(function () {
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
            $("#displaySelectTabName").html("Administration")
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
                    var TabClass = $(this)[0].className;
                    $(".hor-menu li").removeClass("active");
                    var Activeindex = 0;
                    $(".hor-menu li a").each(function (i, index) {
                        if (index.className == TabClass) {
                            Activeindex = i;
                            $(this).parent().addClass("active");
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
                debugger;
                if (xhr.status == 401)
                    $("#SessionformModal").modal();
                if (xhr.status == 423)
                    window.location = "/User/Login?UserLock=Account locked, Please contact Your Administrator";
                else if (xhr.status == 403)
                    alert("You have no enough permissions to request this resource.");
            });
        });

        angular.module('app').config(['$httpProvider', function ($httpProvider) {
            $httpProvider.interceptors.push('LoadingInterceptor');
        }]);

        angular.module('app').
            service('LoadingInterceptor', ['$rootScope',
                function ($rootScope) {
                    'use strict';
                    return {
                        request: function (config) {

                            $rootScope.loading = true;
                            return config;
                        },
                        requestError: function (rejection) {

                            $rootScope.loading = false;
                            $log.error('Request error:', rejection);
                            return $q.reject(rejection);
                        },
                        response: function (response) {

                            $rootScope.loading = false;
                            return response;
                        },
                        responseError: function (rejection) {

                            $rootScope.loading = false;
                            if (rejection.status = 423) {
                                window.location = "/User/Login?UserLock=Account locked, Please contact Your Administrator";
                            }
                        }
                    };
                }]);
        <%if(message!=null){%>
        	alert("<%=message%>");
        <% session.removeAttribute("message");}%>
        
    </script>


	<ul
		class="ui-autocomplete ui-menu ui-widget ui-widget-content ui-corner-all"
		role="listbox" aria-activedescendant="ui-active-menuitem"
		style="z-index: 1; top: 0px; left: 0px; display: none;"></ul>
</body>
</html>