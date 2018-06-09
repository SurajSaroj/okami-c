<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_upload_img.aspx.cs" Inherits="user_upload_img" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Okami</title>

    <link href="css/user_upload_img.css" rel="stylesheet" />

    <!-- ----------------------- --------to be added in all page--------------------   -->

    <link rel="icon"  type="image/png" href="image/logo1.png"/>
      <link href="Content/bootstrap.css" rel="stylesheet" />  
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />

    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

<!-- ----------------------- -------------------------------------------------------------   -->
        <link href="css/login_signup.css" rel="stylesheet" />
     <script src="Scripts/bootstrap-filestyle.min.js"></script>
 

    <style>     
    </style>
</head>
<body>
 <div id="back_user_upload_img">
        <div id="back_panel">
             <div class ="close_">
                 <a id="Btn" href="#">X</a>
             </div>

              <div class="user_upload_img">

                     <div class="heading" style="margin-bottom:20px;">
                        <h3>Give your post a title</h3>
                         <p>An accurate, descriptive title can help people discover your post.</p>
                    </div>

                     <div class="spacer" >
                          <form>
                                <div class="upload_img_title">
                                    <span class="upload_img">
                                        <img src="http://i.memeful.com/media/post/oMJ28xM_700wa_0.gif"/>
                                     </span>
                                    <span class="img_title">
                                     <textarea class="txtarea_img_title"  rows="4" cols="50" placeholder="Add heading to your post.." required></textarea>
                                             
                                    </span>
                                </div>

                                <div class="upload_img_tag">
                                  <label class="lbl_upload_img_tag">Tag</label>
                                  <input class="txt_upload_img_tag" type="text" placeholder="tag1,tag2.."/>
                                </div>

                                <div class="form-group btn-container">
                                    
                                    <button style="margin-right:10px;" type="button" class="btn btn-default user_upload_img_back ">
                                        Back</button>
                                    <button type="submit" class="btn btn-info user_upload_img_next">Next</button>
                                </div>
                               
                           </form>

                     </div>
               </div>
        </div>
     </div>
</body>
</html>