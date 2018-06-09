<%@ Page Language="C#" AutoEventWireup="true" CodeFile="popup_diff_page.aspx.cs" Inherits="popup_diff_page" %>

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

            $(".sign_up").click(function () {

                
               // $(".load_page").load("signup.aspx");
                $(".load_page").slideDown(500);
                $("signup.aspx").slideDown(500);
             //   $(".load_page").fadeIn(500, function () { $(".load_page").load("signup.aspx");});

            });


            $(".login").click(function () {

                $(".load_page").load("loginaspx.aspx");
            });
        });

    </script>

    <style>
        .load_page {
            position:absolute;
            width:100%;
            height:100%;
            background-color:aqua;
            display:none;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="abc">
            <input class="sign_up" type="button" value="signup" />
             <input class="login" type="button" value="login" />
        </div>
        
    </form>
    <div class="load_page"></div>
</body>
</html>
