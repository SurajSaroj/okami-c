<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/login_signup.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <script>
        $(document).ready(function () {


            $("#Btn").click(function () {

                $(".load_page").empty();
            });


            $(".emali_link").click(function () {
                $(".load_page").load("email_signup.aspx");
            });


            $(".login_link").click(function () {
                $(".load_page").load("loginaspx.aspx");
            });

        });

    </script>
    <style>
        #back {
            visibility: visible;
            display: block; 
      
        }
    </style>

</head>
<body>

    <div id="back">
        <div id="back_panel">
            <div class="close_">
                <a id="Btn" href="#">X</a>
            </div>
            <form id="dddd" runat="server">
                <div class="login">

                    <div class="heading">
                        <h2>Hey there!</h2>
                        <p class="lead">Okami is your best source for fun. Share anything you find interesting, get real responses from people all over the world, and discover what makes you laugh.</p>
                    </div>

                    <div class="social_btn">
                        <input class="btn btn-primary" type="button" value="Facebok" />
                        <input class="btn btn-danger" type="button" value="Google" />

                    </div>

                    <hr style="background-color: rgba(204, 200, 200, 0.56);" />


                    <p class="alternative">
                        Sign up with your 
                        <a class="emali_link" href="#">Email Address</a>

                    </p>


                    <p class="alternative">
                        Have an account?
                        <a class="login_link" href="#">Login


                        </a>
                    </p>


                </div>
            </form>
        </div>
    </div>

</body>
</html>
