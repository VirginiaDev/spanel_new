<%String message = (String)session.getAttribute("errorMsg"); %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8" />
    <title>Login</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="Preview page of Metronic Admin Theme #4 for " name="description" />
    <meta content="" name="author" />
    <script type="text/javascript" src="js/script.js"></script>
  <script type="text/javascript" src="js/sweetalert.js"></script>
   <link href="css/sweetalert.css" rel="stylesheet" />
  <link href="assets/css/style.css" rel="stylesheet">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
          <link href="assets/css2/chosen.min.css" rel="stylesheet" />
		<link href="assets/css2/components.min.css" rel="stylesheet" />
		<link href="assets/css2/CustomTheme.css" rel="stylesheet" />
		<link href="assets/css2/login.min.css" rel="stylesheet" />
		<link href="assets/css2/plugins.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <style>

         img {
             width : 120px !important;
             height : 120px !important;
    }

    </style>
</head>
<body class=" login">
 <div class="logo">
        <a href="#" style="text-decoration:none">
            <h2 class="fadeInUp animation-delay8" style="font-weight: bold;text-align: center;">
                <span class="text-success">SMS24HOURS</span>   

            </h2>            
        </a>

    </div>

    <div class="content">

        <form action="UserController?userAction=7" class="form-login" method="post">            <input type="hidden" name="ReturnUrl" value="/Reseller/Administration/SiteBranding" />
            <h3 class="form-title">Sign In</h3>
            <div class="form-group">
                <label >Username :</label>
                <div class="input-icon">
                    <i class="fa fa-user"></i>
                    <input class="form-control placeholder-no-fix" data-val="true" data-val-length="The User Name should not be more than 50 characters long." data-val-length-max="50" data-val-regex="Please enter valid username" data-val-regex-pattern="[a-zA-Z0-9@#$%&amp;*&#x2B;\-_()&#x2B;.,![\]\s\\/]&#x2B;$" data-val-required="User Name is required" id="UserName" name="email" placeholder="Enter User Name " type="text" value="" />                  
                </div>
                <span class="field-validation-valid field-validation-valid text-danger" data-valmsg-for="UserName" data-valmsg-replace="true"></span>              
            </div>
            <div class="form-group">
                <label >Password :</label> <a href="#" data-toggle="modal" style="text-decoration:none; float:right;">Forgot Password?</a>
                <div class="input-icon">
                    <i class="fa fa-lock"></i>
                    <input class="form-control placeholder-no-fix" data-val="true" data-val-regex="Password is Case sensitive.Password length should be greater than 8 character.Including, password must have 1 numeric character, 1 special character, 1 upper case alphabet and 1 lower case alphabet." data-val-regex-pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[\]*&#x2B;\\/|!\£$%^ &amp;*()#[@~&#x27;?&gt;&lt;,.=_-]).{9,}$" data-val-required="Password is required" id="Password" name="password" placeholder="Enter Password" type="Password" value="" />

                </div>
                <span class="field-validation-valid field-validation-valid text-danger" data-valmsg-for="Password" data-valmsg-replace="true"></span>                             
            </div>
            <div class="form-group">
                <label class="rememberme mt-checkbox mt-checkbox-outline">
                    <input data-val="true" data-val-required="The RemamberMe field is required." id="RemamberMe" name="RemamberMe" type="checkbox" value="true" /> Remember me
                    <span></span>
                </label>
                <button type="button" onclick="submit()" class="btn green btn-block"> Sign in </button>
            </div> 
            <div class="form-group">
                <div class="controls">                     
                    Don't have an account? <a href="SignUp.html" class="primary-font ">Sign Up</a><br />                  
                </div> 
            </div>
<input name="__RequestVerificationToken" type="hidden" value="CfDJ8OvOdzIPtRJHhYr3p01t1ipaNyoILA6K6itZiiwzqOtOjnWAeiffZoiey6xWgU7NXwylgLG3e3NCrYXFkY3FAkyBTw2As7mEhOjQaUSClgAA8uxwWMker_qd4kyuwW9pM2B_dOQHdzQ7SPIuLYg30U8" /><input name="RemamberMe" type="hidden" value="false" /></form>    </div>
    <script src="../../49.50.86.152_6004/ProjectTheme/global/plugins/jquery.min.js"></script>
    <script src="../../49.50.86.152_6004/ProjectTheme/global/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="../../49.50.86.152_6004/ProjectTheme/global/plugins/js.cookie.min.js"></script>
    <script src="../../49.50.86.152_6004/ProjectTheme/global/plugins/morris/raphael-min.js"></script>
    <script src="../../49.50.86.152_6004/ProjectTheme/global/scripts/app.min.js"></script>
    <script src="../../49.50.86.152_6004/ProjectTheme/layouts/layout4/scripts/layout.min.js"></script>
    <script src="../../49.50.86.152_6004/ProjectTheme/layouts/layout4/scripts/demo.min.js"></script>
    <script src="../../49.50.86.152_6004/ProjectTheme/layouts/global/scripts/quick-sidebar.min.js"></script>
    <script src="../../49.50.86.152_6004/ProjectTheme/layouts/global/scripts/quick-nav.min.js"></script>
    <script src="../../49.50.86.152_6004/ProjectTheme/global/plugins/moment.min.js"></script>
    <script src="../../49.50.86.152_6004/ProjectTheme/global/plugins/jquery-validation/js/jquery.validate.min.js"></script>
    <script src="../../49.50.86.152_6004/Scripts/jquery.validate.unobtrusive.min.js"></script>
    <script type="text/javascript">
	<%
	if(message!=null){%>
		alert("<%=message%>");
	<%session.removeAttribute("errorMsg");}%>
        $(document).ready(function () {
            
            $('#txtCaptcha').val('');
        });

        function submit(){
        	showBasicMessage("Hello");
        }
        function RefreshCaptcha() {
            var img = document.getElementById("imgCaptcha");
            img.src = "/User/CaptchaImage?query=" + Math.random();
        }

        function ResendOTP() {

            var username = $("#UserName").val();
            var loginmodel = { UserName: username, Password: "" };
            $.ajax({
                url: "User/ResendCode",
                type: "POST",
                contentType: 'application/json',
                data: JSON.stringify(loginmodel),
                success: function (data) {
                   
                    console.log(data);
                    if (data.success) {

                        $("#spanMessage").text(data.message);
                        $(".divMessage").show();
                    } else {
                        $("#spanMessage").text(data.message);
                        $(".divMessage").show();
                    }
                },
                error: function (returnval) {
                    console.log(returnval);
                }
            });
        }
    </script>
</body>
</html>