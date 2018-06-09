﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index_testing.aspx.cs" Inherits="index_testing" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Okami</title>
    

<!-- ----------------------- --------to be added in all page--------------------   -->

    <link rel="icon"  type="image/png" href="image/logo1.png"/>
      <link href="Content/bootstrap.css" rel="stylesheet" />  
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />

    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

      

    <link href="css/login_signup.css?version=51" rel="stylesheet" />
  
    <link href="css/index.css?version=51" rel="stylesheet" />
    <script src="java%20script/index.js"></script>
          <script src='https://www.google.com/recaptcha/api.js'></script>
        <link href="font-awesome/css/animate_font_awsome.css" rel="stylesheet" />
    <script src="java%20script/jquery.autosize-min.js"></script>
        <script src="java%20script/jquery.validate.min.js"></script>
        <link href="css/sidebar_advertisement.css?version=51" rel="stylesheet" />
<!-- -----------------------  user upload popup-------------------------------------------------------------   -->
      <script src="Scripts/bootstrap-filestyle.min.js"></script>    
    <link href="css/user_upload.css?version=51" rel="stylesheet" />
    <link href="css/user_upload_url.css?version=51" rel="stylesheet" />
      <link href="css/user_upload_img.css?version=51" rel="stylesheet" />
    <link href="css/user_upload_video.css?version=51" rel="stylesheet" />
     <link href="css/user_upload_category.css?version=51" rel="stylesheet" />

<!-- ----------------------- -------------------------------------------------------------   -->

<!-- -----------------------  user report popup-------------------------------------------------------------   -->

        <link href="css/user_report.css?version=51" rel="stylesheet" />
    <script src="java%20script/user_report.js"></script>
<!-- ----------------------- -------------------------------------------------------------   -->

    <script>

        $(document).ready(function () {

          

            var $login = "yes";

            if ($login == "yes") {

                $(".before_log_in").css("display", "none");
                $(".after_log_in").css("display", "block");
            }
            else {
                $(".before_log_in").css("display", "block");
                $(".after_log_in").css("display", "none");
            }

            $('.after_log_in .dropdown-menu li:first').hover(function () {

                $('.after_log_in .dropdown-menu .fa-user').toggleClass("faa-tada animated");
            });

            $('.after_log_in .dropdown-menu li:nth-child(2)').hover(function () {

                $('.after_log_in .dropdown-menu .fa-cog').toggleClass("fa-spin");
            });

            $('.after_log_in .dropdown-menu li:last').hover(function () {

                $('.after_log_in .dropdown-menu .fa-sign-out').toggleClass("faa-horizontal animated");
            });

//------------------------------------- code for loggin and signup popup-------------------------

            $(".btn_signup").click(function () {               
                $(".load_page").load("signup.aspx");
                            
            });


            $(".btn_login").click(function () {
               
                $(".load_page").load("loginaspx.aspx");

            });


//------------------------------- category selected hightlight -------------------------------==================


            if (sessionStorage.getItem('jView_info') == null) {
                $(".View_Fresh a").css("font-weight", "700")
            }
            else {
                $("." + sessionStorage.getItem('jView_info') + " a").css("font-weight", "700")
            }
//------------------------------- category click session -------------------------------==================

            $.ajax({
                url: "Default2.aspx", success: function (result) {
              //      alert(result);
                    $(".page-content").html(result);
                }
            });


     

            function callAjax(param)
            {
                var a = param.data.name;
                $.ajax({ //error yaha bata raha hai

                    type: "POST",
                    url: "index_testing.aspx/cat_Fresh",
                    data: '{ProcName: ' + a + '}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: OnSuccesss,
                    failure: function (response) {
                    //    alert(response.responseText);
                    },
                    error: function (response) {
                      //  alert(response.responseText);
                    }

                });
                function OnSuccesss(response) {
                  //  alert(param);
                }

                $.ajax({
                    url: "Default2.aspx", success: function (result) {
                    //    alert(result);
                        $(".page-content").html(result);
                    }
                });

            }

           // var bc = "dsdsd";
            $(".cat_Fresh").on("click", { name: "1" }, callAjax);
            $(".cat_Trending").on("click", { name: "2" }, callAjax);
            $(".cat_Video").on("click", { name: "3" }, callAjax);
            $(".cat_Funny").on("click", { name: "4" }, callAjax);

            $(".cat_Animals").on("click", { name: "5" }, callAjax);
            $(".cat_Sports").on("click", { name: "6" }, callAjax);
            $(".cat_Food").on("click", { name: "7" }, callAjax);
            $(".cat_Gif").on("click", { name: "8" }, callAjax);

            $(".cat_Relationship").on("click", { name: "9" }, callAjax);
            $(".cat_Gaming").on("click", { name: "10" }, callAjax);
            $(".cat_Programmers").on("click", { name: "11" }, callAjax);

            $(".cat_Science").on("click", { name: "12" }, callAjax);
            $(".cat_Comic").on("click", { name: "13" }, callAjax);
            $(".cat_School").on("click", { name: "14" }, callAjax);


//-------------------------------------------------------------------------------------------------

//            $(".cat_Fresh").click(function () {
//                alert("fresh clicked");
//                sessionStorage.setItem('jView_info', 'View_Fresh');

//                $.ajax({
//                    type: "POST",
//                    url: "index_testing.aspx/cat_Fresh",
//                    data: '{ }',
//                    contentType: "application/json;",
//                    dataType: "json",
//                    success: OnSuccesss,
//                    failure: function (response) {
//                        alert(response.d);
//                    }
//                });
//                function OnSuccesss(response) {
//                    alert(response.d);
//                }

//                $.ajax({
//                    url: "Default2.aspx", success: function (result) {
//                        alert(result);
//                        $(".page-content").html(result);
//                    }
//                });
//            });

////--------------------------------------------------------------------------------------------------------------
//            $(".cat_Trending").click(function () {
//                              alert("video trending");
//                              sessionStorage.setItem('jView_info', 'View_Trending');

//                              $.ajax({
//                                  type: "POST",
//                                  url: "index_testing.aspx/cat_Trending",
//                                  data: '{ }',
//                                  contentType: "application/json;",
//                                  dataType: "json",
//                                  success: OnSuccesss,
//                                  failure: function (response) {
//                                      alert(response.d);
//                                  } });
//                                    function OnSuccesss(response) {
//                                      alert(response.d);
//                                  }

//                              $.ajax({
//                                  url: "Default2.aspx", success: function (result) {
//                                      alert(result);
//                                      $(".page-content").html(result);
//                                  }
//                              });



//            });
////------------------------------------------------------------------------------------------------------
//            $(".cat_Video").click(function () {
//                alert("video trending");
//                sessionStorage.setItem('jView_info', 'View_Trending');

//                $.ajax({
//                    type: "POST",
//                    url: "index_testing.aspx/cat_Video",
//                    data: '{ }',
//                    contentType: "application/json;",
//                    dataType: "json",
//                    success: OnSuccesss,
//                    failure: function (response) {
//                        alert(response.d);
//                    }

//                });
//                function OnSuccesss(response) {
//                    alert(response.d);
//                }

//                $.ajax({
//                    url: "Default2.aspx", success: function (result) {
//                        alert(result);
//                        $(".page-content").html(result);
//                    }
//                });
//            });

////----------------------------------------------------------------------------------------------------------
//            $(".cat_Funny").click(function () {
//                              alert(" coding pending Funny clicked");
//          //      sessionStorage.setItem('jView_info', 'View_Funny');
//          //////      alert(sessionStorage.getItem('jView_info'));
//          //    //  callAjax("[Procedure_Funny]");

//          //      $.ajax({
//          //          url: "Default2.aspx", success: function (result) {
//          //              alert(result);
//          //              $(".page-content").html(result);
//          //          }
//          //      });

//                              $.ajax({
//                                  type: "POST",
//                                  url: "index_testing.aspx/cat_Funny",
//                                  data: '{ }',
//                                  contentType: "application/json;",
//                                  dataType: "json",
//                                  success: OnSuccesss,
//                                  failure: function (response) {
//                                      alert(response.d);
//                                  }

//                              });
//                              function OnSuccesss(response) {
//                                  alert(response.d);
//                              }

//                              $.ajax({
//                                  url: "Default2.aspx", success: function (result) {
//                                      alert(result);
//                                      $(".page-content").html(result);
//                                  }
//                              });
//            });

//=--------------------------------------------------------------------------------------------------------------------
//            $(".cat_Animals").click(function () {
//                              alert("Animals clicked");
//                sessionStorage.setItem('jView_info', 'View_Animals');
               

//                $.ajax({
//                    type: "POST",
//                    url: "index_testing.aspx/cat_Animals",
//                    data: '{ }',
//                    contentType: "application/json;",
//                    dataType: "json",
//                    success: OnSuccesss,
//                    failure: function (response) {
//                        alert(response.d);
//                    }

//                });
//                function OnSuccesss(response) {
//                    alert(response.d);
//                }

//                $.ajax({
//                    url: "Default2.aspx", success: function (result) {
//                        alert(result);
//                        $(".page-content").html(result);
//                    }
//                });
//            });

////-----------------------------------------------------------------------------------------------------

//            $(".cat_Sports").click(function () {
//                //              alert("Sports clicked");
//                sessionStorage.setItem('jView_info', 'View_Sports');
//                //  alert(sessionStorage.getItem('jView_info'));
//                $.ajax({
//                    type: "POST",
//                    url: "index_testing.aspx/cat_Sports",
//                    data: '{ }',
//                    contentType: "application/json;",
//                    dataType: "json",
//                    success: OnSuccesss,
//                    failure: function (response) {
//                        alert(response.d);
//                    }

//                });
//                function OnSuccesss(response) {
//                    alert(response.d);
//                }

//                $.ajax({
//                    url: "Default2.aspx", success: function (result) {
//                        alert(result);
//                        $(".page-content").html(result);
//                    }
//                });
//            });

////----------------------------------------------------------------------------------------------
//            $(".cat_Food").click(function () {
//                //            alert("Food clicked");
//                sessionStorage.setItem('jView_info', 'View_Food');
//                //  alert(sessionStorage.getItem('jView_info'));
//                $.ajax({
//                    type: "POST",
//                    url: "index_testing.aspx/cat_Food",
//                    data: '{ }',
//                    contentType: "application/json;",
//                    dataType: "json",
//                    success: OnSuccesss,
//                    failure: function (response) {
//                        alert(response.d);
//                    }

//                });
//                function OnSuccesss(response) {
//                    alert(response.d);
//                }

//                $.ajax({
//                    url: "Default2.aspx", success: function (result) {
//                        alert(result);
//                        $(".page-content").html(result);
//                    }
//                });
//            });

////-----------------------------------------------------------------------------------------------------------------------------
//            $(".cat_Gif").click(function () {
//                //                alert("gif clicked");
//                sessionStorage.setItem('jView_info', 'View_Gif');
//                //  alert(sessionStorage.getItem('jView_info'));
//                $.ajax({
//                    type: "POST",
//                    url: "index_testing.aspx/cat_Gif",
//                    data: '{ }',
//                    contentType: "application/json;",
//                    dataType: "json",
//                    success: OnSuccesss,
//                    failure: function (response) {
//                        alert(response.d);
//                    }

//                });
//                function OnSuccesss(response) {
//                    alert(response.d);
//                }

//                $.ajax({
//                    url: "Default2.aspx", success: function (result) {
//                        alert(result);
//                        $(".page-content").html(result);
//                    }
//                });
//            });
////-----------------------------------------------------------------------------------------------------------------------------

//            $(".cat_Relationship").click(function () {
//                //               alert("Relationship clicked");
//                sessionStorage.setItem('jView_info', 'View_Relationship');
//                //  alert(sessionStorage.getItem('jView_info'));
//                $.ajax({
//                    type: "POST",
//                    url: "index_testing.aspx/cat_Relationship",
//                    data: '{ }',
//                    contentType: "application/json;",
//                    dataType: "json",
//                    success: OnSuccesss,
//                    failure: function (response) {
//                        alert(response.d);
//                    }

//                });
//                function OnSuccesss(response) {
//                    alert(response.d);
//                }

//                $.ajax({
//                    url: "Default2.aspx", success: function (result) {
//                        alert(result);
//                        $(".page-content").html(result);
//                    }
//                });
//            });

////---------------------------------------------------------------------------------------------------------------------

//            $(".cat_Gaming").click(function () {
//                //             alert("Gaming clicked");
//                sessionStorage.setItem('jView_info', 'View_Gaming');
//                //  alert(sessionStorage.getItem('jView_info'));
//                $.ajax({
//                    type: "POST",
//                    url: "index_testing.aspx/cat_Gaming",
//                    data: '{ }',
//                    contentType: "application/json;",
//                    dataType: "json",
//                    success: OnSuccesss,
//                    failure: function (response) {
//                        alert(response.d);
//                    }

//                });
//                function OnSuccesss(response) {
//                    alert(response.d);
//                }

//                $.ajax({
//                    url: "Default2.aspx", success: function (result) {
//                        alert(result);
//                        $(".page-content").html(result);
//                    }
//                });
//            });

////---------------------------------------------------------------------------------------------------------------------

//            $(".cat_Programmers").click(function () {
//                //               alert("cat_Programmers clicked");
//                sessionStorage.setItem('jView_info', 'View_Programmers');
//                //  alert(sessionStorage.getItem('jView_info'));
//                $.ajax({
//                    type: "POST",
//                    url: "index_testing.aspx/cat_Programmers",
//                    data: '{ }',
//                    contentType: "application/json;",
//                    dataType: "json",
//                    success: OnSuccesss,
//                    failure: function (response) {
//                        alert(response.d);
//                    }

//                });
//                function OnSuccesss(response) {
//                    alert(response.d);
//                }

//                $.ajax({
//                    url: "Default2.aspx", success: function (result) {
//                        alert(result);
//                        $(".page-content").html(result);
//                    }
//                });
//            });

////---------------------------------------------------------------------------------------------------------------------

//            $(".cat_Science").click(function () {
//                //               alert("cat_Science clicked");
//                sessionStorage.setItem('jView_info', 'View_Science');
//                //  alert(sessionStorage.getItem('jView_info'));
//                $.ajax({
//                    type: "POST",
//                    url: "index_testing.aspx/cat_Science",
//                    data: '{ }',
//                    contentType: "application/json;",
//                    dataType: "json",
//                    success: OnSuccesss,
//                    failure: function (response) {
//                        alert(response.d);
//                    }

//                });
//                function OnSuccesss(response) {
//                    alert(response.d);
//                }

//                $.ajax({
//                    url: "Default2.aspx", success: function (result) {
//                        alert(result);
//                        $(".page-content").html(result);
//                    }
//                });
//            });
////---------------------------------------------------------------------------------------------------------------------

//            $(".cat_Comic").click(function () {
//                //         alert("cat_Comic clicked");
//                sessionStorage.setItem('jView_info', 'View_Comic');
//                //  alert(sessionStorage.getItem('jView_info'));
//                $.ajax({
//                    type: "POST",
//                    url: "index_testing.aspx/cat_Comic",
//                    data: '{ }',
//                    contentType: "application/json;",
//                    dataType: "json",
//                    success: OnSuccesss,
//                    failure: function (response) {
//                        alert(response.d);
//                    }

//                });
//                function OnSuccesss(response) {
//                    alert(response.d);
//                }

//                $.ajax({
//                    url: "Default2.aspx", success: function (result) {
//                        alert(result);
//                        $(".page-content").html(result);
//                    }
//                });
//            });

////---------------------------------------------------------------------------------------------------------------------

//            $(".cat_School").click(function () {
//                           alert("cat_School clicked");
//                sessionStorage.setItem('jView_info', 'View_School');
//                //  alert(sessionStorage.getItem('jView_info'));
//                $.ajax({
//                    type: "POST",
//                    url: "index_testing.aspx/cat_School",
//                    data: '{ }',
//                    contentType: "application/json;",
//                    dataType: "json",
//                    success: OnSuccesss,
//                    failure: function (response) {
//                        alert(response.d);
//                    }

//                });
//                function OnSuccesss(response) {
//                    alert(response.d);
//                }

//                $.ajax({
//                    url: "Default2.aspx", success: function (result) {
//                        alert(result);
//                        $(".page-content").html(result);
//                    }
//                });
//            });
           

        });
    </script>
<!-- ------------------------------------------ user upload image code------------------------------------------------------- -->
    <script type="text/javascript"> 
  /*      $(function () {

            $('#back_user_upload #file_field').change(function (event) {
                var tmppath = URL.createObjectURL(event.target.files[0]);


                $("#back_user_upload_img .upload_img_title img").fadeIn("fast").attr('src', tmppath);

                $('#back_user_upload_img').css("display", "block");

              //  alert(tmppath);

            });

            $('#back_user_upload .testing').click(function () {
                $('#back_user_upload_img').css("display", "block");
            });

        }); */
  </script>
<!-- ------------------------------------------ user upload image code end------------------------------------------------------- -->


    <style>

        #back_forgot_pass,#back_signup, 
        #back_email_signup, #back_login, #back,back_user_report,back_user_report_info{
            z-index:7;
                overflow: scroll;
            background-color:rgba(51, 51, 51, 0.84);
            position: fixed;
            height: 100%;
            width: 100%;
            visibility: visible;
            display:none;
            top: 0px;
            left: 0px;
        } 

          #back_user_upload, #back_user_upload_url ,#back_user_upload_img , #back_user_upload_video, #back_user_upload_category,
          back_user_report_info,back_user_report{   
            visibility: visible;
            display:none;
          }

      body {
    background-color: rgb(211, 212, 212);
    display: none;
    min-width: 583px;
}

/* ------------- css for use profile and upload in css afer login in navbar ----------------------------------*/

.after_log_in {
    display: none;
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


/* ----------------------------------------------------------------------------------*/

    </style>
     
</head>
<body>

       
    <div class="move_top">
       <i class="fa fa-arrow-circle-up" aria-hidden="true"></i>
     </div>

    <div class="combine_menu">
        <div class="top">
            <hr class="line" />
        </div>

        <div class="container">
            <div class="name">
                <h1 class="name1" >OKA<span class="name1 mi_col">MI</span></h1>
            </div>
          
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                           <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                  </button>
            

            <div class="search_bar">
                 <form class="navbar-form navbar-left">
                      <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search"/>
                        <div class="input-group-btn">
                          <button class="btn btn-info" type="submit">
                            <i class="glyphicon glyphicon-search"></i>
                          </button>
                        </div>
                      </div>
                    </form>

            </div>
         </div>

        <!-------------------------      menu         ------------->

        <!-- ===================================    -->

        <nav class="navbar navbar-inverse" style="border-radius: 0px;">
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
       
    </div>
 

  <main class="container container_left_category">
      <div class="row">
          <aside class="col-3 pull-left">
              <div class="list-box">
                  <h2 class="">CATEGORY<button type="button" class="drop_down_button">
                     <span id="drop_down_button_icon" style="color: rgb(199, 204, 204);" class="glyphicon glyphicon-triangle-bottom"></span></button></h2>
                 
                  
                  <ul class="drop_down_ul category">

                      <li class="cat_Fresh View_Fresh" id="cat_Fresh1">
                          <a  title="Fresh" runat="server" >
                              <i class="fa fa-flag" aria-hidden="true"> </i>
                              Fresh
                            </a>
                      </li>
                          
                      <li class="cat_Trending View_Trending" id="cat_Trending1">
                          
                          <a title="Trending" runat="server">
                             
                             <i class="fa fa-line-chart" aria-hidden="true"></i>
                              Trending
                          </a>
                      </li>



                      <li class="cat_Video View_Video" id="cat_Video1">
                          
                          <a title="Videos" runat="server"><%--onserverclick="cat_Video"--%>
                                <i class="fa fa-film" aria-hidden="true"></i>
                              Videos
                          </a>
                      </li>
               

                      <li class="cat_Funny View_Funny" id="cat_Funny1">
                          <a title="Funny"  runat="server" >
                            <i class="fa fa-smile-o" aria-hidden="true"></i>
                              Funny
                          </a>
                      </li>

                      <li class="cat_Animals View_Animals">
                          <a  title="Animals" runat="server">
                               <i class="fa fa-paw"></i> Animals
                          </a>
                      </li>

                      
                      <li class="cat_Sports View_Sports">
                          <a href="#" title="Sports" >
                           <i class="fa fa-futbol-o" aria-hidden="true"></i>
                              Sports
                          </a>
                      </li>


                      <li class="cat_Food View_Food">
                          <a href="#" title="Food"  >
                                <i class="fa fa-cutlery" aria-hidden="true"></i> 
                              Food
                          </a>
                      </li>

                      <li class="cat_Gif View_Gif">
                          <a href="#" title="Gif" >
                           <i class="fa fa-play-circle" aria-hidden="true"></i> Gif</a>
                      </li>

                      <li class="cat_Relationship View_Relationship">
                          <a href="#" title="Relationship">
                                <i class="fa fa-heartbeat" aria-hidden="true"></i>
                              Relationship
                          </a>
                      </li>

                      <li class="cat_Gaming View_Gaming">
                           <a href="#" title="Gaming" ><%--runat="server" onserverclick="cat_Gaming"--%>
                            <i class="fa fa-gamepad" aria-hidden="true"></i>
                              Gaming
                          </a>
                      </li>
                      <li class="cat_Programmers View_Programmers">
                          <a href="#" title="Programmers" ><%--runat="server" onserverclick="cat_Programmers"--%>
                                <i class="fa fa-laptop" aria-hidden="true"></i> Programmers know
                          </a>
                      </li>

                      <li class="cat_Science View_Science">
                          <a href="#" title="Science" ><%-- runat="server" onserverclick="cat_Science"--%>
                              <i class="fa fa-flask" aria-hidden="true"></i> Science
                          </a>
                      </li>

                      <li class="cat_Comic View_Comic">
                          <a href="#" title="Comic" ><%-- runat="server" onserverclick="cat_Comic"--%>
                              <i class="fa fa-grav" aria-hidden="true"></i> Comic
                          </a>
                      </li>

                      <li class="cat_School View_School">
                          <a href="#" title="Sports" ><%--runat="server" onserverclick="cat_School"--%>
                              <i class="fa fa-graduation-cap" aria-hidden="true"></i> School
                          </a>
                      </li>


                  </ul>
  


                </div>

          </aside>

               <div class="col-9 page-content">
            </div>
    

      </div>
  </main>





































<!-- ==================div to load login signup popup    ====================================    -->
<div class="load_page"></div>
<!-- =================--------====================================    -->
    

<!--  ------------------------------------------user upload ----------------------------------------------------------  --> 
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
                         <form id="upload_form" class="form_user_upload">
                                 <div class="post_upload_button" >
                                            <i class="fa fa-file-text fa-5x" aria-hidden="true"></i> <!-- - data-badge="false"-->
                                            <input type="file" class="filestyle" id="file_field" data-badge="false" data-input="false"/>
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
    <!--  ------------------------------------------user upload end----------------------------------------------------------  --> 
     <!--  ------------------------------------------user url ----------------------------------------------------------  --> 

     <div id="back_user_upload_url">
        <div id="back_panel">
             <div class ="close_">
                <button id="Btn" type="button">X</button>
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
                                    <button type="button" class="btn btn-info user_upload_url_next">Next</button>
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
                 <button id="Btn" type="button">X</button>
             </div>

              <div class="user_upload_img">

                     <div class="heading" style="margin-bottom:20px;">
                        <h3>Give your post a title</h3>
                         <p>An accurate, descriptive title can help people discover your post.</p>
                    </div>

                     <div class="spacer" >
                          <form class="form_user_upload_img">
                                <div class="upload_img_title">
                                    <span class="upload_img">
                                        <img class="user_upload_img_view" src="http://i.memeful.com/media/post/PdWDEVw_700wa_0.gif"/>
                                     </span>
                                    <span class="img_title">
                                     <textarea class="txtarea_img_title"  rows="4" cols="50" placeholder="Add heading to your post.." minlength="5" required pattern="[A-Za-z0-9]{1,20}"></textarea>
                                             
                                    </span>
                                </div>

                                <div class="upload_img_tag">
                                  <label class="lbl_upload_img_tag">Tag</label>
                                  <input class="txt_upload_img_tag" type="text" placeholder="tag1,tag2.."/>
                                </div>

                                <div class="form-group btn-container">
                                    
                                    <button style="margin-right:10px;" type="button" class="btn btn-default user_upload_img_back ">
                                        Back</button>
                                    <button type="button" class="btn btn-info user_upload_img_next">Next</button>
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
                 <button id="Btn" type="button">X</button>
             </div>

              <div class="user_upload_video">

                     <div class="heading" style="margin-bottom:20px;">
                        <h3>Give your post a title</h3>
                         <p>An accurate, descriptive title can help people discover your post.</p>
                    </div>

                     <div class="spacer" >
                          <form class="form_user_upload_video">
                                <div class="upload_video_title">
                                    <span class="upload_video">
                                        <iframe class="user_upload_video_view" src="https://www.youtube.com/embed/fzrfrXhE-w4" frameborder="0" allowfullscreen></iframe>
                                     </span>
                                    <span class="video_title">
                                     <textarea class="txtarea_video_title"  rows="4" cols="50" placeholder="Add heading to your post.." minlength="5" required></textarea>
                                             
                                    </span>
                                </div>

                                <div class="upload_video_tag">
                                  <label class="lbl_upload_video_tag">Tag</label>
                                  <input class="txt_upload_video_tag" type="text" placeholder="tag1,tag2.."/>
                                </div>

                                <div class="form-group btn-container">                                   
                                    <button style="margin-right:10px;" type="button" class="btn btn-default user_upload_video_back ">
                                        Back</button>
                                    <button type="button" class="btn btn-info user_upload_video_next">Next</button>
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
                 <button id="Btn" type="button">X</button>
             </div>

                <div class="user_upload_category">

                     <div class="heading" style="margin-bottom:10px;">
                        <h3>Pick a section</h3>
                         <p>Submitting to the right section to make sure your post gets the right exposure it deserves!</p>
                    </div>

                     <div class="spacer" >
                          <form class="form_user_upload_category">
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

                             <label for="Comic">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/anime.jpg" />
                                        <span class="category_content">
                                            <span class="category_heading">Comic</span>
                                            <span class="category_decs">Embrace your inner weeb!</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Comic" value="Comic"/>
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

                                <label for="Sports">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/sports.jpg" />
                                        <span class="category_content">
                                            <span class="category_heading">Sports</span>
                                            <span class="category_decs">The sports fanatics hub </span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Sports" value="Sports"/>
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
  
                             <label for="School">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/school.jpg" />
                                        <span class="category_content">
                                            <span class="category_heading">School</span>
                                            <span class="category_decs">Survival guide for students.</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="School" value="School"/>
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
                                    <button style="padding: 6px 17px" type="button" class="btn btn-info user_upload_category_next">Post</button>
                                </div>
                               
                           </form>
                     </div>
                </div>
        </div>
 </div>



 <!-- ----------------------------------- ------ report page-------------------------------- -->

 <div id="back_user_report">
        <div style="top: 40px;" id="back_panel">
             <div class ="close_">
                  <button id="Btn" type="button">X</button>
             </div>

                <div class="user_upload_category">

                     <div class="heading" style="margin-bottom:10px;">
                        <h3>Report</h3>
                         <p>Choosing the right reason help us process the report as soon as possible.</p>
                    </div>

                     <div class="spacer" >
                     <form class="form_user_report">
                        <div class="form-group CategorySelection">
                        
                       <div class="CategorySelection_child">

                             <label for="Spam">
                                    <span class="main_block">
                                        <span class="category_content">
                                            <span class="category_heading">Spam</span>
                                        </span>

                                        <span class="category_radio">
                                            <input checked="checked" type="radio" name="report" id="Spam" value="Spam"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="Pornography">
                                    <span class="main_block">
                                        <span class="category_content">
                                            <span class="category_heading">Pornography</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="report" id="Pornography" value="Pornography"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="Hatred and bullying">
                                    <span class="main_block">
                                        <span class="category_content">
                                            <span class="category_heading">Hatred and bullying</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="report" id="Hatred and bullying" value="Hatred and bullying"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="Self-Harm">
                                    <span class="main_block">
                                        <span class="category_content">
                                            <span class="category_heading">Self-Harm</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="report" id="Self-Harm" value="Self-Harm"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="Violent, gory and harmful content">
                                    <span class="main_block">
                                        <span class="category_content">
                                            <span class="category_heading">Violent, gory and harmful content</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="report" id="Violent, gory and harmful content" value="Violent, gory and harmful content"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="Child Porn">
                                    <span class="main_block">
                                        <span class="category_content">
                                            <span class="category_heading">Child Porn</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="report" id="Child Porn" value="Child Porn"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="Illegal activities">
                                    <span class="main_block">
                                        <span class="category_content">
                                            <span class="category_heading">Illegal activities e.g. Drug Uses</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="report" id="Illegal activities" value="Illegal activities"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="Deceptive content">
                                    <span class="main_block">
                                        <span class="category_content">
                                            <span class="category_heading">Deceptive content</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="report" id="Deceptive content" value="Deceptive content"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="Copyright and trademark infringement">
                                    <span class="main_block">
                                        <span class="category_content">
                                            <span class="category_heading">Copyright and trademark infringement</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="report" id="Copyright and trademark infringement" value="Copyright and trademark infringement"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="I just don't like it">
                                    <span class="main_block">
                                        <span class="category_content">
                                            <span class="category_heading">I just don't like it</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="report" id="I just don't like it" value="I just don't like it"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>


 

                           </div>
                    </div>
                    
                                <div class="form-group btn-container">
                                   <button style="margin-right:10px; padding: 6px 17px" type="button" class="btn btn-default user_report_back ">
                                        Back</button>
                                    <button style="padding: 6px 17px" type="button" class="btn btn-info user_report_next">Next</button>
                                </div>
                               
                     </form>
                     </div>
                </div>
        </div>
 </div>
   

<!-- ----------------------------------- ------ report explnation-------------------------------- -->

     <div id="back_user_report_info">
        <div style="top: 40px;" id="back_panel">
             <div class ="close_">
                <button id="Btn" type="button">X</button>
             </div>

                <div class="user_upload_category">

                     <div class="heading" style="margin-bottom:10px;">
                        <h3>Report</h3>
                         <p>Choosing the right reason help us process the report as soon as possible.</p>
                    </div>

                     <div class="spacer" >
                          <form class="form_user_report_info">
                               <div class="form-group CategorySelection">
                                   <div class="CategorySelection_child">
                                 <!--      <div class='report_info'>

                                         <p>Report as pornography?</p>
                                            
                                              <p class='remove_mar'>&#9679;  We remove:</p>
                                                <p class='remove_mar'>&#9679;  Photos or videos of sexual intercourse</p>
                                                <p>&#9679; Posts showing sexual intercourse, genitals or close-ups of fully-nude buttocks</p>
                                            
                                            <p>If you report someone's post, OKAMI doesn't tell them who reported it.<br/></p>

                                      </div> -->

                                     </div>
                                </div>
                    
                                <div class="form-group btn-container">
                                   <button style="margin-right:10px; padding: 6px 17px" type="button" class="btn btn-default user_report_info_back ">
                                        Back</button>
                                    <button style="padding: 6px 17px" type="submit" class="btn btn-danger user_report_info_post">Report</button>
                                </div>
                               
                           </form>
                     </div>
                </div>
        </div>
 </div>


    
<!-- ----------------------------------- ------ snack bar-------------------------------- -->

        <div id="snackbar"><i  id="snackbar_icon" style="font-size:30px;padding-right: 5px;" class="fa" aria-hidden="true"></i>
        <label id="snackbar_label">Some text some message..</label></div>
    
</body>
</html>
