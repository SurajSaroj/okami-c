<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_upload.aspx.cs" Inherits="user_upload" %>

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
    <link href="css/user_upload.css" rel="stylesheet" />
    <link href="css/user_upload_img.css" rel="stylesheet" />
    <script>

        $(document).ready(function () {
          

            $('.post_upload_button').click(function (event) {

                if ($(event.target).is(".post_upload_button")) {
                    $(this).find('input[type="file"]').click();
                    console.log("post_upload_button 1 " + ($(event.target).is(".post_upload_button")));
                }
            });
            
        });



</script>

    <script type="text/javascript"> 
        $(function () {

            $('#back_user_upload #file_field').change(function (event) {
                var tmppath = URL.createObjectURL(event.target.files[0]);
                

                $("#back_user_upload_img .upload_img_title img").fadeIn("fast").attr('src', tmppath);
             
                $('#back_user_upload_img').css("display", "block");

             //   alert(tmppath);
            });


            $('.close_ #Btn').on('click', function () {
              
                $("#back_user_upload_img").fadeOut(300, function () { $("#back_user_upload_img").css("display", "none"); });
               // $("#back_user_upload_img img").attr("src", " ");
                $("#back_user_upload #post_upload_button_reset").click();
            });


        });
  </script>

    <style>
        #back_user_upload{
             display: block;
        }

        #back_user_upload_img{
            display:none;
        }
      
    </style>

</head>
<body>
     <div id="back_user_upload">
        <div id="back_panel">
             <div class ="close_">
                <button id="Btn" type="button">X</button>
             </div>
            

              <div class="user_upload">

                     <div class="heading" style="margin-bottom:20px;">
                        <h3>Upload a post</h3>
                         <p>Choose how you want to upload the post</p>
                    </div>
                     <div class="spacer" >
                         <form id="upload_form">
                                 <div class="post_upload_button" >
                                            <i class="fa fa-file-text fa-5x" aria-hidden="true"></i> <!-- - data-badge="false"-->
                                            <input type="file" class="filestyle" id="file_field" data-badge="false" data-input="false" accept="image/gif, image/jpeg, image/png"/>
                                  </div>

                             <button style="display:none;" type="reset" id="post_upload_button_reset" value="Reset"></button>
                        </form>
                        
                          <div class="upload_post_combine" >
                                
                                <div class="paste_image_url" >
                                    <i class="fa fa-picture-o fa-4x" aria-hidden="true"></i>
                                    <p>Paste Image/Gif URL</p>
                                  </div>

                                 <div class="paste_video_url" >
                                        <i class="fa fa-play-circle fa-4x" aria-hidden="true"></i>
                                        <p>Paste Video URL</p>
                                  </div>

                                 <a target="_blank" href="https://imgflip.com/memegenerator"><div class="make_meam" >
                                     <img class="" src="image/meme.png" />
                                        <p>Make meme</p>
                                  </div></a>
                          </div>

                     </div>
                  
 
                
               </div>
        

        </div>
     </div>

    <!--      --------------------------------------user upload----------------------------------------------------------   -->

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

