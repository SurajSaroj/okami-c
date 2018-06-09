<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginaspx.aspx.cs" Inherits="loginaspx" %>

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

                $(".forgot_pass_link").click(function () {
                    $(".load_page").load("forgot_passowrd.aspx");
                });
               

            });
    </script>

    <style>

     #back{
    visibility: visible;
    display: block;
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

                     <div class="heading">
                     <h2>Login</h2>
                      <p class="lead">Connect with a social network</p>   
                      </div>

                  <div class="social_btn" style="display:flow-root">
                      <input class="btn btn-primary" type="button" value="Facebok" />
                      <input class="btn btn-danger" type="button" value="Google" />
                      
                  </div>
                  <hr style="background-color:rgba(204, 200, 200, 0.56);" />

                      <div class="heading">
                    <p class="lead">Login in with your email address</p> 
                      </div>  

                  <form runat="server">
                        <div class="form-group">
                          <label for="usr">Email</label>
                          <input type="email" class="form-control" id="usr" required/>
                        </div>
                        
                        <div class="form-group">
                          <label for="usr">Password</label>
                          <input type="password" class="form-control" id="pass" required/>
                        </div>
                      <div class="active">
                          
                          <asp:Button ID="Submit" runat="server" class="btn btn-info" Text="Log In" Width="82px" />
                          </div>
                    </form>

                  <div class="forgot_pass">
                  <a class="forgot_pass_link">Forgot Password</a>
                  </div>  
                
               </div> 
        </div>
     </div>
</body>
</html>
