<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgot_passowrd.aspx.cs" Inherits="forgot_passowrd" %>

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


        });

    </script>


    <style>

        #back_forgot_password {
            
           background-color: rgba(51, 51, 51, 0.92);
            position: fixed;
            height: 100%;
            width: 100%;
            visibility: visible;
            top: 0px;
            left: 0px;
            display: block;
            z-index: 99;
        }

    </style>

</head>
    <body>
    <div id="back_forgot_password">
        <div id="back_panel">
             <div class ="close_">
                 <a id="Btn" href="#">X</a>
             </div>

              <div class="login">

                     <div class="heading" style="margin-bottom:30px;">
                        <h2>Forgot Password!!</h2>
                    </div>
                      
                  <form id="form1" runat="server">

                        <div class="form-group">
                          <label for="usr">Your Email address</label>
                          <input type="email" placeholder="name@gmail.com" class="form-control" id="usr" required/>
                        </div>

                      <div class="active">
                          <input id="Submit" style="width: 120px;" class="btn btn-info" type="submit"   value="Submit" />
                          </div>
                    </form>
 
                
               </div>
        </div>
     </div>
</body>
</html>
