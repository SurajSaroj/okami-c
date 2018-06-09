<%@ Page Language="C#" AutoEventWireup="true" CodeFile="email_signup.aspx.cs" Inherits="email_signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="css/login_signup.css" rel="stylesheet" />
       <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="java%20script/jquery.validate.min.js"></script>

    <script src='https://www.google.com/recaptcha/api.js'></script>

    <script>
        $(document).ready(function () {

            $("#Btn").click(function () {
                $(".load_page").empty();             
            });

        
        });
    </script>

    <style>
        #back{
        visibility:visible;
        display:block;
        }

           
    </style>

</head>
<body>
    <div id="back">
        <div id="back_panel">
             <div class ="close_">
                 <a id="Btn" href="#">X</a>
             </div>

              <div class="login">

                     <div class="heading" style="margin-bottom:30px;">
                        <h2>Become a Member</h2>
                    </div>
                      
                  <form runat="server">


                     <div class="messagealert" id="alert_container">
            </div>


                        <div class="form-group">
                          <label for="usr">Full Name</label>
                          <input type="text" class="form-control" id="usr" runat="server" required/>
                        </div>

                        <div class="form-group">
                          <label for="usr">Email</label>
                          <input type="email" class="form-control" id="mail" runat="server" required/>
                        </div>
                        
                        <div class="form-group">
                          <label for="usr" id="lblResult" runat="server">Password</label>
                          <input type="password" class="form-control" runat="server" id="pass" min="6" required/>
                        </div>

                     
                     

                      <div class="g-recaptcha" data-sitekey="6LcgKS0UAAAAAC_zrX4_y5Ehr6ZP5DDZIgFT3EJ2"></div>

                      <asp:label ID="lblmsg" runat="server" />

                      <div class="active">
                          <asp:Button ID="btnSubmit" Text="Sign Up" runat="server" style="width: 120px;" class="btn btn-info" OnClick="btnSubmit_Click"/>
                         </div>
                    </form>
 
                
               </div>
        </div>
     </div>
</body>

</html>

