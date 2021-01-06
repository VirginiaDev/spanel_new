<%@page import="java.util.List"%>
<%@page import="user.Message"%>
<%List<Message> list = (List<Message>)request.getAttribute("messageList"); %>
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
<div class="page-header-menu">
            <div class="container">
                <nav class="navbar">
                    <div class="container-fluid">
                        <div class="hor-menu">
                            <div id="navbarMenu" class="navbar-collapse collapse">
                                <ul class="nav navbar-nav">
                                    <li><a href="Administration.jsp" data-toggle="pills" class="2"><i class="icon-user DisplayIcon"></i>&nbsp; ADMINISTRATION</a></li>
                                    <li><a href="#" data-toggle="pills" class="3"><i class="icon-settings DisplayIcon"></i>&nbsp;CONFIGURATION</a></li>

                                    <li><a href="" data-toggle="pills" class="5"><i class="icon-lock DisplayIcon"></i>&nbsp;PERMISSION</a></li>
                                    <li><a href="LiveTrafficReport.jsp" data-toggle="pills" class="6"><i class="icon-layers DisplayIcon"></i>&nbsp;REPORTING</a></li>
                                    <li><a href="#" data-toggle="pills" class="7"><i class="icon-screen-desktop DisplayIcon"></i>&nbsp;MONITORING</a></li>
                                    <li><a href="#" data-toggle="pills" class="8"><i class="icon-wallet DisplayIcon"></i>&nbsp;BILLING</a></li>
                                    <li><a href="#" data-toggle="pills" class="12"><i class="icon-docs DisplayIcon"></i>&nbsp;UTILITY</a></li>
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
            </div>
        </div>
<div class="page-container">
            <div class="page-sidebar-wrapper">
                <div class="page-sidebar navbar-collapse collapse">
                    <ul class="page-sidebar-menu" id="2" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                        <li class="nav-item start active open">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-doc"></i>
                                <span class="title">SMPP Reporting</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">

                                <li class="nav-item start active open">
                                    <a href="#" class="6">
                                        <i class="icon-graph"></i>
                                        <span class="title">Live Web Traffic Report</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>

                                <li class="nav-item start active open">
                                    <a href="#" class="6">
                                        <i class="icon-docs"></i>
                                        <span class="title">Gateway Queue</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>

                                <li class="nav-item start active open">
                                    <a href="getMessageList.jsp" class="6">
                                        <i class="icon-docs"></i>
                                        <span class="title">Sent Report</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li class="nav-item start active open">
                                    <a href="#" class="6">
                                        <i class="icon-envelope-open"></i>
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
                                <i class="icon-docs"></i>
                                <span class="title">ESME Reporting</span>
                                <span class="selected"></span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item start active open">
                                    <a href="#" class="6">
                                        <i class="icon-graph"></i>
                                        <span class="title">Live Web Traffic Report</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li class="nav-item start active open">
                                    <a href="#" class="6">
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
                                    <a href="#" class="6">
                                        <i class="icon-bar-chart"></i>
                                        <span class="title">Top 10 Senders</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>

                                <li class="nav-item start">
                                    <a href="#" class="6">
                                        <i class="icon-calculator"></i>
                                        <span class="title">Gateway Wise Count</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>


                                <li class="nav-item start active open">
                                    <a href="#" class="6">
                                        <i class="icon-docs"></i>
                                        <span class="title">Gateway Wise Profit</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>

                                <li class="nav-item start active open" style="display:none;">
                                    <a href="#" class="6">
                                        <i class="icon-docs"></i>
                                        <span class="title">MarginDetailReport</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>


                                <li class="nav-item start active open">
                                    <a href="#" class="6">
                                        <i class="icon-docs"></i>
                                        <span class="title">Gateway Status Report</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>


                            </ul>
                        </li>

                        <li class="nav-item start">
                            <a href="#" class="6">
                                <i class="icon-share-alt"></i>
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
            <div class="col-md-02">
							<div class="portlet light bordered" style="margin-left: 20%;margin-top: 1%;">

								<div class="Portlet-body">
									<form action="UserController"
										class="form-inline no-margin ng-pristine ng-valid"
										method="post" novalidate="novalidate" name="uForm">
										<input type="hidden" name="userAction" value="14">
										<div class="form-group">
											<input class="form-control input-sm tb ui-autocomplete-input"
												data-val="true"
												data-val-length="The User Name should not be more than 50 characters long."
												data-val-length-max="50"
												data-val-regex="Please enter valid username"
												data-val-regex-pattern="[a-zA-Z0-9@#$%&amp;*+\-_()+.,![\]\s\\/]+$"
												data-val-required="User Name is required" id="txtUserNames"
												name="UserName" placeholder="Enter User Name"
												required="required" style="width: 225px;" type="text"
												value="" aria-required="true" autocomplete="off"
												role="textbox" aria-autocomplete="list" aria-haspopup="true">
										</div>
										<input type="submit"
											class="btn btn-sm btn-success" value="Submit">
										
									</form>
									<br>
									<div style="padding: 15px !important; display: none"
										id="alertdiv">
										<a href="#" class="close" aria-label="close">Ã—</a> <span
											id="AlertMessage"></span>
									</div>
									


								</div>
								<%if(list!=null){%>
							<table style="width:100%;border: 1px solid #c2cad8;">
							<th style="border: 1px solid #c2cad8;height: 41px">Submit Date</th>
							<th style="border: 1px solid #c2cad8">Mobile Number</th>
							<th style="border: 1px solid #c2cad8">Sender Id</th>
							<th style="border: 1px solid #c2cad8">Message</th>
							<th style="border: 1px solid #c2cad8">Status</th>
							<%for(int i=0;i<list.size();i++){
								Message m = list.get(i);%>
								<tr>
								<td style="border: 1px solid #c2cad8;width: 88px;"><%=m.getSubmissionDate()%></td>
								<td style="border: 1px solid #c2cad8"><%=m.getContacts()%></td>
								<td style="border: 1px solid #c2cad8"><%=m.getSenderId()%></td>
								<td style="border: 1px solid #c2cad8"><%=m.getMessage()%></td>
								<%String status = "";
								if(m.getStatus().equals("1")){
									status="UnDeliver";
								} else{
									status="Deliver";
								} %>
								<td style="border: 1px solid #c2cad8"><%=status%></td>
								</tr>
							<%}%>
							</table>
						<%}%>
							</div>
						</div>
						
           
</div>



</div>
<script type="text/javascript">
function submit(){
	alert("hello");
}
</script>
</body>
