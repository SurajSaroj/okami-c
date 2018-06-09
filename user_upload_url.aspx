<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_upload_url.aspx.cs" Inherits="user_upload_url" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Okami</title>



    <!-- ----------------------- --------to be added in all page--------------------   -->

    <link rel="icon"  type="image/png" href="image/logo1.png"/>
      <link href="Content/bootstrap.css" rel="stylesheet" />  
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />

    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

<!-- ----------------------- -------------------------------------------------------------   -->
        <link href="css/login_signup.css" rel="stylesheet" />
     <script src="Scripts/bootstrap-filestyle.min.js"></script>
    <link href="css/user_upload_url.css" rel="stylesheet" />
    <script src="java%20script/jquery.validate.min.js"></script>


    <script>

        $(document).ready(function () {


            $(".user_upload_url_next").click(function () {

                var url = $('.input_url').val();
                alert(url);

                $("#back_user_upload_url .heading p").replaceWith("<p> Type or paste URL of image [.jpg, .jpeg, .gif, .png]</p>");
          /*      $("< img >").load(url, function (response, status, xhr) {
                    if (status == "error") {
                        var msg = "Sorry but there was an error: ";
                        alert(msg + xhr.status + " " + xhr.statusText);
                    }
                });*/

               // var abc = $("<img>", { src: url, error: function () { return " }, load: function () { return "true" } });

                
              va
               // var check = $(".form_user_upload_url").valid();
              
             /*   if ($("#back_user_upload_url .form_user_upload_url").valid()) {
                    $("#back_user_upload_url").css("display", "none");
                }*/

            });

        });

</script>

    <style>

         #-error {
            color:rgba(255, 7, 7, 0.76);
        }
 
    </style>
</head>
<body>
 <div id="back_user_upload_url">
        <div id="back_panel">
             <div class ="close_">
                 <a id="Btn" href="#">X</a>
             </div>

              <div class="user_upload_url">

                     <div class="heading" style="margin-bottom:20px;">
                        <h3>Upload from Url</h3>
                         <p>Type or paste URL</p>
                    </div>

                     <div class="spacer" >
                          <form class="form_user_upload_url">
                                <div class="form-group">
                                  <input type="url" class="input_url" placeholder="http://" required/>
                                </div>

                                <div class="form-group btn-container">
                                    
                                    <button style="margin-right:10px;" type="button" class="btn btn-default user_upload_url_back ">
                                        Back</button>
                                    <button type="submit" class="btn btn-info user_upload_url_next">Next</button>
                                </div>
                               
                           </form>

                     </div>
               </div>
        </div>
     </div>
</body>
</html>
