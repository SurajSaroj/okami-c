<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload_testing.aspx.cs" Inherits="upload_testing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


<!-- ----------------------- --------to be added in all page--------------------   -->

    <link rel="icon"  type="image/png" href="image/logo1.png"/>
      <link href="Content/bootstrap.css" rel="stylesheet" />  
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />

    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

      

    <link href="css/login_signup.css?version=51" rel="stylesheet" />
  
    <link href="css/index.css?version=51" rel="stylesheet" />
    <script src="java%20script/index.js"></script>
    
        <link href="font-awesome/css/animate_font_awsome.css" rel="stylesheet" />
    <script src="java%20script/jquery.autosize-min.js"></script>

<!-- ----------------------- -------------------------------------------------------------   -->
    <script src="Scripts/bootstrap-filestyle.min.js"></script>
    <link href="css/user_upload.css" rel="stylesheet" />
    <link href="css/user_upload_url.css" rel="stylesheet" />
      <link href="css/user_upload_img.css" rel="stylesheet" />
    <link href="css/user_upload_video.css" rel="stylesheet" />
     <link href="css/user_upload_category.css" rel="stylesheet" />


    <script>

        $(document).ready(function () {
 //----------------------- user upload --------------------------------------------------------


 /**/       $('#back_user_upload .user_upload .spacer .post_upload_button').click(function (event) {

              $(this).find('input[type="file"]').click();
        });

  /**/      $('#back_user_upload .post_upload_button input').click(function (event) {
                   event.stopPropagation();
        });

 /**/       $('#back_user_upload .user_upload .spacer .post_upload_button .btn-default').click(function (event) {
                $(this).find('input[type="file"]').click();
                event.stopPropagation();
        });

 //----------------------- ----------------------------------------------------------------------
        var $class_clicked;

/**/       $(".after_log_in .btn_upload").click(function () {          
                    $("#back_user_upload").fadeIn(600,function () { $("#back_user_upload").css("display", "block");});         
           });
      

/**/        $("#back_user_upload .paste_image_url , #back_user_upload .paste_video_url").click(function () {

                            $class_clicked = $(this).attr('class');
                            console.log($class_clicked);

                          $("#back_user_upload").fadeOut(300, function () { $("#back_user_upload").css("display", "none"); });

                            setTimeout(function () {
                                     $("#back_user_upload_url").fadeIn(600, function () { $("#back_user_upload_url").css("display", "block"); });
                            },100);   
        });



        //user_upload_url_back
 /**/        $("#back_user_upload_url .user_upload_url_back").click(function () {
                           $("#back_user_upload_url").fadeOut(300, function () { $("#back_user_upload_url").css("display", "none"); });

                            setTimeout(function () {
                                      $("#back_user_upload").fadeIn(600, function () { $("#back_user_upload").css("display", "block"); });
                            }, 100);
        });

            //user_upload_url_next
 /**/        $("#back_user_upload_url .user_upload_url_next").click(function () {
            
                             $("#back_user_upload_url").fadeOut(300, function () { $("#back_user_upload_url").css("display", "none"); });
                          

                      setTimeout(function () {
                      if ($class_clicked =="paste_video_url")
                          {
                          $("#back_user_upload_video").fadeIn(600, function () { $("#back_user_upload_video").css("display", "block"); });

                          }
                      else if ($class_clicked =="paste_image_url")
                          {
                          $("#back_user_upload_img").fadeIn(600, function () { $("#back_user_upload_img").css("display", "block"); });
                          }
                    }, 100);
        });

//----------------------- ----------------------------------------------------------------------
     //   user_upload_img_back,user_upload_video_back   
/**/        $("#back_user_upload_img .user_upload_img_back , #back_user_upload_video .user_upload_video_back").click(function () {

                        $("#back_user_upload_video").fadeOut(300, function () { $("#back_user_upload_video").css("display", "none"); });
                        $("#back_user_upload_img").fadeOut(300, function () { $("#back_user_upload_img").css("display", "none"); });

            setTimeout(function () {
                $("#back_user_upload_url").fadeIn(600, function () { $("#back_user_upload_url").css("display", "block"); });
            }, 100);
        });


        // user_upload_img_next,user_upload_video_next
/**/     $("#back_user_upload_img .user_upload_img_next , #back_user_upload_video .user_upload_video_next").click(function () {

            $("#back_user_upload_video").fadeOut(300, function () { $("#back_user_upload_video").css("display", "none"); });
            $("#back_user_upload_img").fadeOut(300, function () { $("#back_user_upload_img").css("display", "none"); });

            setTimeout(function () {
                $("#back_user_upload_category").fadeIn(600, function () { $("#back_user_upload_category").css("display", "block"); });
            }, 100);
        });


        //user_upload_category_back ,
/**/        $("#back_user_upload_category .user_upload_category_back").click(function () {

             $("#back_user_upload_category").fadeOut(300, function () { $("#back_user_upload_category").css("display", "none"); });
            setTimeout(function () {
                if ($class_clicked == "paste_video_url") {
                    $("#back_user_upload_video").fadeIn(600, function () { $("#back_user_upload_video").css("display", "block"); });

                }
                else if ($class_clicked == "paste_image_url") {
                    $("#back_user_upload_img").fadeIn(600, function () { $("#back_user_upload_img").css("display", "block"); });
                }
            }, 100);
        });

        // user_upload_category_next
/**/        $("#back_user_upload_category .user_upload_category_next").click(function () {

              alert("post successfull!!!");
              $("#back_user_upload_category").fadeOut(300, function () { $("#back_user_upload_category").css("display", "none"); });
        });
//----------------------- ---------------close button popup-------------------------------------------------------

/**/        $(".close_ #Btn").click(function () {
                    $("#back_user_upload").fadeOut(300, function () { $("#back_user_upload").css("display", "none"); });
                    $("#back_user_upload_url").fadeOut(300, function () { $("#back_user_upload_url").css("display", "none"); });
                    $("#back_user_upload_img").fadeOut(300, function () { $("#back_user_upload").css("display", "none"); });
                    $("#back_user_upload_video").fadeOut(300, function () { $("#back_user_upload_url").css("display", "none"); });
                    $("#back_user_upload_category").fadeOut(300, function () { $("#back_user_upload_category").css("display", "none"); });
          
        });






        });
</script>
 <style> 
  #back_user_upload, #back_user_upload_url ,#back_user_upload_img , #back_user_upload_video, #back_user_upload_category {   
    visibility: visible;
    display:none;
}

.after_log_in {
    display: block;
}

    .after_log_in .navbar_user_prof_photo {
        width: 40px;
        height: 40px;
        border-radius: 5px;
    }

    .after_log_in .dropdown ul li i {
        font-size: 25px;
        margin-right: 5px;
    }

    .after_log_in .dropdown ul li a {
        padding-bottom: 5px;
    }


@media screen and (max-width: 767px) {
    .after_log_in > li > .btn_upload {
        background-color: rgba(0, 0, 0, 0);
        color: #9e9e9d;
    }
}

    </style>


</head>
<body>

<!--  --------------------------------    navbar------------------------------------------------------------------  -->
        <nav class="navbar navbar-inverse">
          <div class="container-fluid">
            <ul class="nav navbar-nav adjustable-drop">
              <li class=""><a href="Default.aspx">HOME</a></li>
              <li><a href="About.aspx">ABOUT US</a></li>
                <li><a href="Contact_us.aspx">CONTACT US</a></li>
            </ul>

<!--  -------------------------------navbar before login---------------------------------------------------------------  -->
 
            <ul class="nav navbar-nav navbar-right before_log_in">
              <li><a href="#" class="btn_signup"><span  class="glyphicon glyphicon-user"></span> Sign Up</a></li>
              <li><a href="#" class="btn_login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>

<!--  --------------------------------    navbar after login---------------------------------------------------------------  -->
           <ul class="nav navbar-nav navbar-right after_log_in">

              <li class="dropdown">
                  <a class="dropdown-toggle user_prof" data-toggle="dropdown" style="padding:5px; padding-right:15px;"href="#">
                  <img class="navbar_user_prof_photo" src="image/user.png" /><span class="caret"></span></a>

                    <ul class="dropdown-menu">
                      <li><a href="User_profile.aspx"><i class="fa fa-user fa-2x" aria-hidden="true"></i> My Profile</a></li>
                      <li><a href="User_setting.aspx"><i class="fa fa-cog fa-2x" aria-hidden="true"></i> Setting</a></li>
                      <li><a href="#"><i class="fa fa-sign-out fa-2x" aria-hidden="true"></i> Logout</a></li>
                    </ul>
              </li>



              <li><a href="#"class="btn_upload" style="background-color: #4cb2d0; color:#ffffff;"><i class="fa fa-upload" aria-hidden="true"></i>
                  Upload</a></li>
            </ul>
     
<!--  ----------------------------------------------------------------------------------------------------  -->

          </div>
        </nav>

<!--  --------------------------------    navbar  end------------------------------------------------------------------  -->

<main class="container container_left_category">
      <div class="row">
          <aside class="col-3 pull-left">
              <div class="list-box">
                  <h2 class="">CATEGORY<button type="button" class="drop_down_button">
                     <span id="drop_down_button_icon" style="color: rgb(199, 204, 204);" class="glyphicon glyphicon-triangle-bottom"></span></button></h2>
                  <ul class="drop_down_ul">

                      <li>
                          <a href="#" title="All">
                              <i class="fa fa-flag" aria-hidden="true"></i>
                              All
                          </a>
                      </li>

                      <li>
                          <a href="#" title="Hot">
                           <i class="fa fa-envira" aria-hidden="true"></i>
                              Fresh
                          </a>
                      </li>

                      <li>
                          <a href="#" title="Trending">
                             <i class="fa fa-line-chart" aria-hidden="true"></i>
                              Trending
                          </a>
                      </li>



                      <li>
                          <a href="#" title="Videos">
                                <i class="fa fa-film" aria-hidden="true"></i>
                              Videos
                          </a>
                      </li>
               

                      <li>
                          <a href="#" title="Funny">
                            <i class="fa fa-smile-o" aria-hidden="true"></i>
                              Funny
                          </a>
                      </li>

                      <li>
                          <a href="#" title="Animals">
                               <i class="fa fa-paw"></i> Animals
                          </a>
                      </li>
                      <li>
                          <a href="#" title="Food">
                                <i class="fa fa-cutlery" aria-hidden="true"></i> 
                              Food
                          </a>
                      </li>

                      <li>
                          <a href="#" title="Gif">
                           <i class="fa fa-play-circle" aria-hidden="true"></i> Gif</a>
                      </li>

                      <li>
                          <a href="#" title="Relationship">
                                <i class="fa fa-heartbeat" aria-hidden="true"></i>
                              Relationship
                          </a>
                      </li>

                      <li>
                           <a href="#" title="Gaming">
                            <i class="fa fa-gamepad" aria-hidden="true"></i>
                              Gaming
                          </a>
                      </li>
                      <li>
                          <a href="#" title="Programmers">
                                <i class="fa fa-laptop" aria-hidden="true"></i> Programmers know
                          </a>
                      </li>

                      <li>
                          <a href="#" title="Science">
                              <i class="fa fa-flask" aria-hidden="true"></i> Science
                          </a>
                      </li>


                  </ul>
                </div>

          </aside>
 <!--    ----------------------           post 1  -------------------------------------    -->
                    
  <!--    ----------------------           post 3   -------------------------------------    -->


 <!--    ----------------------           post end  -------------------------------------    -->

      </div>
  </main>
    










































<!--  ------------------------------------------user upload ----------------------------------------------------------  --> 
        <div id="back_user_upload">
        <div id="back_panel">
             <div class ="close_">
                 <a id="Btn" href="#">X</a>
             </div>

              <div class="user_upload">

                     <div class="heading" style="margin-bottom:20px;">
                        <h3>Upload a post</h3>
                         <p>Choose how you want to upload the post</p>
                    </div>
                     <div class="spacer" >
                         <div class="post_upload_button" >
                                    <i class="fa fa-file-text fa-5x" aria-hidden="true"></i>
                                   <input type="file" class="filestyle" data-input="false"/>
                       
                          </div>
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
    <!--  ------------------------------------------user upload end----------------------------------------------------------  --> 
     <!--  ------------------------------------------user url ----------------------------------------------------------  --> 

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
                          <form runat="server">
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

 <!--  ------------------------------------------user image upload ----------------------------------------------------------  --> 
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

     <!--  ------------------------------------------user video upload ----------------------------------------------------------  -->

     <div id="back_user_upload_video">
        <div id="back_panel">
             <div class ="close_">
                 <a id="Btn" href="#">X</a>
             </div>

              <div class="user_upload_video">

                     <div class="heading" style="margin-bottom:20px;">
                        <h3>Give your video post a title</h3>
                         <p>An accurate, descriptive title can help people discover your post.</p>
                    </div>

                     <div class="spacer" >
                          <form>
                                <div class="upload_video_title">
                                    <span class="upload_video">
                                        <iframe src="https://www.youtube.com/embed/D0a0aNqTehM" frameborder="0" allowfullscreen></iframe>
                                     </span>
                                    <span class="video_title">
                                     <textarea class="txtarea_video_title"  rows="4" cols="50" placeholder="Add heading to your post.." required></textarea>
                                             
                                    </span>
                                </div>

                                <div class="upload_video_tag">
                                  <label class="lbl_upload_video_tag">Tag</label>
                                  <input class="txt_upload_video_tag" type="text" placeholder="tag1,tag2.."/>
                                </div>

                                <div class="form-group btn-container">                                   
                                    <button style="margin-right:10px;" type="button" class="btn btn-default user_upload_video_back ">
                                        Back</button>
                                    <button type="submit" class="btn btn-info user_upload_video_next">Next</button>
                                </div>
                                
                               
                           </form>

                     </div>
               </div>
        </div>
     </div>


      <!--  ------------------------------------------user  category upload ----------------------------------------------------------  -->

    <div id="back_user_upload_category">
        <div style="top: 40px;" id="back_panel">
             <div class ="close_">
                 <a id="Btn" href="#">X</a>
             </div>

                <div class="user_upload_category">

                     <div class="heading" style="margin-bottom:10px;">
                        <h3>Pick a section</h3>
                         <p>Submitting to the right section to make sure your post gets the right exposure it deserves!</p>
                    </div>

                     <div class="spacer" >
                          <form>
                   <div class="form-group CategorySelection">
                       <div class="CategorySelection_child">
                             <label for="Funny">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/funny.jpg" />
                                        <span class="category_content">
                                            <span class="category_heading">Funny</span>
                                            <span class="category_decs">Why so serious</span>
                                        </span>

                                        <span class="category_radio">
                                            <input checked="checked" type="radio" name="Category" id="Funny" value="Funny"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="Gif">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/fox.gif" />
                                        <span class="category_content">
                                            <span class="category_heading">Gif</span>
                                            <span class="category_decs">Smile in 3 sec.</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Gif" value="Gif"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                            <label for="Animals">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/animals.jpg" />
                                        <span class="category_content">
                                            <span class="category_heading">Animals</span>
                                            <span class="category_decs">It's so fluffy I'm gonna die!</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Animals" value="Animals"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                            <label for="Food">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/food.jpg" />
                                        <span class="category_content">
                                            <span class="category_heading">Food</span>
                                            <span class="category_decs">Good Food is Good Mood</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Food" value="Food"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                              </label>

                            <label for="Gaming">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/gaming.jpg" />
                                        <span class="category_content">
                                            <span class="category_heading">Gaming</span>
                                            <span class="category_decs">We don't die, we respawn!</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Gaming" value="Gaming"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="Programmers">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/programmers.jpeg" />
                                        <span class="category_content">
                                            <span class="category_heading">Programmers</span>
                                            <span class="category_decs">We turn coffee into code</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Programmers" value="Programmers"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="Relationship">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/relationship.jpg" />
                                        <span class="category_content">
                                            <span class="category_heading">Relationship</span>
                                            <span class="category_decs">One person thousand feelings</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Relationship" value="Relationship"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="Science">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/science.jpg" />
                                        <span class="category_content">
                                            <span class="category_heading">Science</span>
                                            <span class="category_decs">Science is simply common sense at it's best</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Science" value="Science"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="Videos">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/video.png" />
                                        <span class="category_content">
                                            <span class="category_heading">Videos</span>
                                            <span class="category_decs">Life without you is like youtube without videos!</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Videos" value="Videos"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                               <label for="Profile">
                                    <span class="main_block">
                                        <img class="category_img" src="image/kul_mod.jpg" />
                                        <span class="category_content">
                                            <span class="category_heading">My Profile Only</span>
                                            <span class="category_decs">Post will only be visible in your profile</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Profile" value="Profile"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>
                           </div>
                    </div>
                    
                                <div class="form-group btn-container">
                                    
                                    <button style="margin-right:10px; padding: 6px 17px" type="button" class="btn btn-default user_upload_category_back ">
                                        Back</button>
                                    <button style="padding: 6px 17px" type="submit" class="btn btn-info user_upload_category_next">Post</button>
                                </div>
                               
                           </form>
                     </div>
                </div>
        </div>
 </div>



</body>
</html>
