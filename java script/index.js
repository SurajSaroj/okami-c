
var fileName;
var class_clicked;
var image_title;
var image_tag;
var video_title;
var video_tag;
var url_value
var post_category;
var final_url;
var cut_url;
var fb_add = "https://www.facebook.com/plugins/video.php?href=";

var yt_add = "http://www.youtube.com/embed/";

var exp = /(youtube|youtu|facebook)\.(com|be)\/((watch\?v=([-\w]+))|(video\/([-\w]+))|(projects\/([-\w]+)\/([-\w]+))|([-\w]+))/;

var exp_fb = /(facebook)\.(com)\/((watch\?v=([-\w]+))|(video\/([-\w]+))|(projects\/([-\w]+)\/([-\w]+))|([-\w]+))/;

var exp_yt_watch = /(youtube)\.(com)\/((watch\?v=([-\w]+))|(video\/([-\w]+))|(projects\/([-\w]+)\/([-\w]+))|([-\w]+))/;

var exp_yt_be = /(youtu)\.(be)\/((watch\?v=([-\w]+))|(video\/([-\w]+))|(projects\/([-\w]+)\/([-\w]+))|([-\w]+))/;



var counter = 1;
var distance1 = 0;
var move = 0;
var abc = 0;
var scroll_pause = 400;


var isMobile = {
    Android: function () {
        return navigator.userAgent.match(/Android/i);
    
    },
    BlackBerry: function () {
        return navigator.userAgent.match(/BlackBerry/i);
    },
    iOS: function () {
        return navigator.userAgent.match(/iPhone|iPad|iPod/i);
    },
    Opera: function () {
        return navigator.userAgent.match(/Opera Mini/i);
    },
    Windows: function () {
        return navigator.userAgent.match(/IEMobile/i);
    },
    any: function () {
        return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
    }
};

//var isMobile= true;
if (isMobile.any()) {
   // alert("This is a Mobile Device");
}


            $(document).ready(function () {

                $(".move_top").click(function () {
                    $("html, body").animate({ scrollTop: 0 },500);
                    return false;
                });
                 
                $(window).bind('load scroll resize', function () {
               
//--------------------- code for move_top button display block and none=============
                  //  $(".form-control").val($(window).width());

                  
                    if (($(window).scrollTop() >= 200) && ($(window).width()>=985)) {

                      $(".move_top").css("display", "block");

                  }
                  else {
                      $(".move_top").css("display", "none");
                 }

//======================== code for category movements ================================

      //    console.log("Window" + $(window).scrollTop() + "-:Cat:-" + $('.pull-left').offset().top);

                    var navHeight = $(window).height();
                
          if ((navHeight >= 530) && ((window.matchMedia('(min-width:767px)').matches)))
              {
                    // for category movements

                  if (($(window).scrollTop() + 10) >= $('.pull-left').offset().top) {
                      $('.pull-left .list-box').css({ "position": "fixed", "top": "10px" });
                  }
                  else {
                      $('.pull-left .list-box').css({ "position": "inherit", "top": "auto" });
                     }

              // // for sidebar / advertisement scroll movements

                  //if (($(window).scrollTop() + 10) >= $('.advertisement').offset().top)
                  //{
                  //   // $('.advertisement .add_container').css({ "position": "fixed", "top": "10px", "width": "340px" });
                  //    scrolling(counter);
                  //}
                  //else {
                  //    counter = 1;
                  //    $('.advertisement .add_container').css({ "position": "inherit", "top": "auto", "width": "340px" });
                     
                  //}
            }
            else
          {
            //  counter = 0;
              $('.pull-left .list-box').css({ "position": "inherit", "top": "auto" });
              $('.advertisement .add_container').css({ "position": "inherit", "top": "auto", "width": "340px"});
            }

             }); 


 //---------------------------- scrolling function---------------------------------

                function scrolling(abc) {
                    //                counter = abc;

                    var distance;

                 //   console.log("counter= "+abc);
                    currScroll = $(window).scrollTop();

                    if (counter >= 1 && counter <= 11)
                        distance = $('.advertisement .add_anchor:nth-child(' + counter + ')').offset().top - ($(window).scrollTop() + 10);

                    if ($('.advertisement .add_container').css("position") == "absolute" || $('.advertisement .add_container').css("position") == "inherit") {
                        distance1 = $('.advertisement .add_anchor:nth-child(1)').offset().top - ($(window).scrollTop());
                        move = $(window).scrollTop();
                    }

                    if (distance <= 0) {
                    //    console.log("scroll down -------");

                        $('.advertisement .add_container').css({ "position": "fixed", "top": distance1, "width": "340px" });

                        if ($(window).scrollTop() >= (move + scroll_pause)) {

                            $('.advertisement .add_container').css({ "position": "inherit", "top": (scroll_pause * counter), "width": "340px" });
                            counter = counter + 1;
                            //  lastScrollTop = currScroll; 
                            scrolling(counter);
                        }

                    }

                }



   //---------------------------- upload poup  ---------------------------------
            
//------------------------------------------ user _upload clicked -----------------------------------------

                $(".post_upload_button").click(function () {
                    class_clicked = $(this).attr('class');
                  //  console.log($class_clicked);
                });


                $(function () {

                    $('#back_user_upload #file_field').change(function (event) {
                         tmppath = URL.createObjectURL(event.target.files[0]);
                         fileName = event.target.files[0].name;
                        //alert(fileName);
                        var extension=fileName.split('.').pop();

                        if (extension == "png" || extension == "jpg" || extension == "jpeg" || extension == "gif")
                        {
                            $("#back_user_upload_img .upload_img_title img").fadeIn("fast").attr('src', tmppath);

                            //   $('#back_user_upload_img').css("display", "block");

                            //  alert(tmppath);
                            $class_clicked = "post_upload_button";

                            $("#back_user_upload").fadeOut(200, function () { $("#back_user_upload").css("display", "none"); });

                            setTimeout(function () {
                                $("#back_user_upload_img").fadeIn(400, function () { $("#back_user_upload_img").css("display", "block"); });
                            }, 70);
                        } else
                        {
                           // alert("can upload only image")

                            $("#snackbar #snackbar_icon").addClass('fa-exclamation-circle');
                            $("#snackbar_label").text('Please upload Image format [.jpg/.jpeg/.png/.gif]');
                            $("#snackbar").addClass('show_warning');
                            $("#snackbar").fadeIn(100);

                            setTimeout(function () {

                                $("#snackbar").fadeOut("slow", function () {
                                    $("#snackbar").removeClass("show_warning");
                                    $("#snackbar #snackbar_icon").removeClass('fa-exclamation-circle');
                                });
                            }, 2000);   
                        }

                    });

                });

//----------------------------------open dialog on click of  choose file button of post upload ------------------------------------------------------------------------
 /**/       $('#back_user_upload .post_upload_button').click(function (event) {

                 if ($(event.target).is(".post_upload_button"))
                 {
                     $(this).find('input[type="file"]').click();
                   //  console.log("post_upload_button 1 " + ($(event.target).is(".post_upload_button")));
                 }
             });

//----------------------- ----------------------------------------------------------------------
               

/**/       $(".after_log_in .btn_upload").click(function () {
                    $("#back_user_upload").fadeIn(400, function () { $("#back_user_upload").css("display", "block"); });
                });


/**/        $("#back_user_upload .paste_image_url , #back_user_upload .paste_video_url").click(function () {

                    $class_clicked = $(this).attr('class');
                 //   console.log($class_clicked);

                    $("#back_user_upload").fadeOut(200, function () { $("#back_user_upload").css("display", "none"); });

                    setTimeout(function () {
                        if ($class_clicked == "paste_video_url")
                        {
                            $("#back_user_upload_url .heading p").replaceWith("<p> Type or paste URL from Facebook or Youtube</p>");
                        }
                        else if ($class_clicked == "paste_image_url")
                        {
                            $("#back_user_upload_url .heading p").replaceWith("<p> Type or paste URL of image [.jpg, .jpeg, .gif, .png]</p>");
                        }

                        $("#back_user_upload_url .form_user_upload_url .input_url").val("");
                        $("#back_user_upload_url").fadeIn(400, function () { $("#back_user_upload_url").css("display", "block"); });
                    }, 70);
                });



        //user_upload_url_back
 /**/        $("#back_user_upload_url .user_upload_url_back").click(function () {
                    $("#back_user_upload_url").fadeOut(200, function () { $("#back_user_upload_url").css("display", "none"); });

                    setTimeout(function () {
                        $("#back_user_upload").fadeIn(400, function () { $("#back_user_upload").css("display", "block"); });
                    }, 70);
                });

            //user_upload_url_next
 /**/        $("#back_user_upload_url .user_upload_url_next").click(function () {


                url_value = $("#back_user_upload_url .input_url").val();

                     if ($class_clicked == "paste_image_url")
                     {
                         

                         if ($("#back_user_upload_url .form_user_upload_url").valid())
                         {

                             $("<img>", {
                                 src: url_value,
                                 load: function ()
                                 {

                                     $("#back_user_upload_img .form_user_upload_img .user_upload_img_view").attr("src", url_value);

                                     $("#back_user_upload_url").fadeOut(200, function () { $("#back_user_upload_url").css("display", "none"); });
                                     setTimeout(function () {

                                         $("#back_user_upload_img").fadeIn(400, function () { $("#back_user_upload_img").css("display", "block"); });
                                     }, 70);
                                 },
                                 error: function () {
                                     $("#snackbar #snackbar_icon").addClass('fa-exclamation-circle');
                                     $("#snackbar_label").text('Invalid image url');
                                     $("#snackbar").addClass('show_warning');
                                     $("#snackbar").fadeIn(100);


                                     setTimeout(function () {

                                         $("#snackbar").fadeOut("slow", function () {
                                             $("#snackbar").removeClass("show_warning");
                                             $("#snackbar #snackbar_icon").removeClass('fa-exclamation-circle');
                                         });
                                     }, 2000);   
                                 }
                                 
                             });
                           
                                      
                               
                         } 
                     }
                     else if ($class_clicked == "paste_video_url")
                     {
                         
                         if ($("#back_user_upload_url .form_user_upload_url").valid())
                         {

                             if (url_value.match(exp))
                             {
                                 if (url_value.match(exp_fb))
                                 {
                                     final_url = fb_add + url_value;

                                     $("#back_user_upload_video .form_user_upload_video .user_upload_video_view").attr("src", final_url);
                                     $("#back_user_upload_url").fadeOut(200, function () { $("#back_user_upload_url").css("display", "none"); });
                                     setTimeout(function () {
                                         $("#back_user_upload_video").fadeIn(400, function () { $("#back_user_upload_video").css("display", "block"); });
                                     }, 70);
                                 }
                                else if (url_value.match(exp_yt_watch)) {
                                   
                                     cut_url = url_value.split('=').pop(); 
                                     final_url = yt_add + cut_url;

                                     $("#back_user_upload_video .form_user_upload_video .user_upload_video_view").attr("src", final_url);
                                     $("#back_user_upload_url").fadeOut(200, function () { $("#back_user_upload_url").css("display", "none"); });
                                     setTimeout(function () {
                                         $("#back_user_upload_video").fadeIn(400, function () { $("#back_user_upload_video").css("display", "block"); });
                                     }, 70);
                                     
                                 }
                                 else if (url_value.match(exp_yt_be)) {
                                    
                                     cut_url = url_value.split('/').pop();
                                     final_url = yt_add + cut_url;

                                     $("#back_user_upload_video .form_user_upload_video .user_upload_video_view").attr("src", final_url);
                                     $("#back_user_upload_url").fadeOut(200, function () { $("#back_user_upload_url").css("display", "none"); });
                                     setTimeout(function () {
                                         $("#back_user_upload_video").fadeIn(400, function () { $("#back_user_upload_video").css("display", "block"); });
                                     }, 70);
                                    
                                 }

                             }
                             else {
                                // alert("incorrect video url");

                                 $("#snackbar #snackbar_icon").addClass('fa-exclamation-circle');
                                 $("#snackbar_label").text('Invalid Video url');
                                 $("#snackbar").addClass('show_warning');
                                 $("#snackbar").fadeIn(100);


                                 setTimeout(function () {

                                     $("#snackbar").fadeOut("slow", function () {
                                         $("#snackbar").removeClass("show_warning");
                                         $("#snackbar #snackbar_icon").removeClass('fa-exclamation-circle');
                                     });
                                 }, 2000);   
                             }




                         }
                         
                         
                     }      
                });

//----------------------- ----------------------------------------------------------------------
     //   user_upload_img_back,user_upload_video_back   
/**/        $("#back_user_upload_img .user_upload_img_back , #back_user_upload_video .user_upload_video_back").click(function () {

                    console.log("value inside variable $class_clicked "+$class_clicked);
                            if ($class_clicked == "post_upload_button")
                            {
                                console.log("inside first if of back "+$class_clicked);
                                $("#back_user_upload_img").fadeOut(200, function () { $("#back_user_upload_img").css("display", "none"); });
                              
                                setTimeout(function () {
                                    $("#back_user_upload").fadeIn(400, function () { $("#back_user_upload").css("display", "block"); });
                                }, 70);
                            }
                         else if ($class_clicked == "paste_video_url" || $class_clicked == "paste_image_url")
                            { 
                                console.log("inside second if of back " + $class_clicked);
                             $("#back_user_upload_video").fadeOut(200, function () { $("#back_user_upload_video").css("display", "none"); });
                             $("#back_user_upload_img").fadeOut(200, function () { $("#back_user_upload_img").css("display", "none"); });

                             setTimeout(function () {
                                 $("#back_user_upload_url").fadeIn(400, function () { $("#back_user_upload_url").css("display", "block"); });
                             }, 70);
                        }
                });


        // user_upload_img_next,user_upload_video_next
/**/     $("#back_user_upload_img .user_upload_img_next , #back_user_upload_video .user_upload_video_next").click(function () {


                         if ($("#back_user_upload_img .form_user_upload_img").valid() && $("#back_user_upload_video .form_user_upload_video").valid())
                         {
                             var image_title = $("#back_user_upload_img .txtarea_img_title ").val();
                             var image_tag = $("#back_user_upload_img .txt_upload_img_tag ").val();
                             var video_title = $("#back_user_upload_video .txtarea_video_title").val();
                             var video_tag = $("#back_user_upload_video .txt_upload_video_tag ").val();

                             console.log("category of upload $class_clicked= " + $class_clicked);
                             console.log("image title " + image_title);
                             console.log("image tag " + image_tag);
                             console.log("video title " + video_title);
                             console.log("video tag " + video_tag);

                            $("#back_user_upload_video").fadeOut(200, function () { $("#back_user_upload_video").css("display", "none"); });
                            $("#back_user_upload_img").fadeOut(200, function () { $("#back_user_upload_img").css("display", "none"); });

                            setTimeout(function () {
                                $("#back_user_upload_category").fadeIn(400, function () { $("#back_user_upload_category").css("display", "block"); });
                            }, 70);
                        }
                });

        //user_upload_category_back ,
/**/        $("#back_user_upload_category .user_upload_category_back").click(function () {

                    $("#back_user_upload_category").fadeOut(200, function () { $("#back_user_upload_category").css("display", "none"); });
                    setTimeout(function () {
                        if ($class_clicked == "paste_video_url") {
                            $("#back_user_upload_video").fadeIn(400, function () { $("#back_user_upload_video").css("display", "block"); });

                        }
                        else if ($class_clicked == "paste_image_url" || $class_clicked == "post_upload_button") {
                            $("#back_user_upload_img").fadeIn(400, function () { $("#back_user_upload_img").css("display", "block"); });
                        }
                    }, 70);
                });

        // user_upload_category_next
/**/        $("#back_user_upload_category .user_upload_category_next").click(function () {

    
    post_category = $("input[name='Category']:checked").val();
   
    console.log("fileName " + fileName);
    console.log("image_title " + image_title);
    console.log("image_tag " + image_tag);
    console.log("video_title " + video_title);
    console.log("video_tag " + video_tag);
    console.log("img_url_value " + url_value);
    console.log("video_url_value " + url_value);
    console.log("post_category " + post_category);

    $("#snackbar #snackbar_icon").addClass('fa-check');
    $("#snackbar_label").text('Post uploaded successfully!');
    $("#snackbar").addClass('show_info');
    $("#snackbar").fadeIn(100);
    setTimeout(function () {

        $("#snackbar").fadeOut("slow", function () {
            $("#snackbar").removeClass("show_info");
            $("#snackbar #snackbar_icon").removeClass('fa-check');
        });
    }, 2000);   

                    $("#back_user_upload_category").fadeOut(10, function () { $("#back_user_upload_category").css("display", "none"); });
                });
//----------------------- ---------------close button popup-------------------------------------------------------

/**/        $(".close_ #Btn").click(function () {
                    $("#back_user_upload #post_upload_button_reset").click();
                    $class_clicked = "";
                     fileName;
                     class_clicked="";
                     image_title = "";
                     image_tag = "";
                     video_title = "";
                     video_tag = "";
                     url_value = "";
                     post_category = "";
                     final_url = "";
                    $("#back_user_upload_img .txtarea_img_title ").val("");
                    $("#back_user_upload_img .txt_upload_img_tag ").val("");
                    $("#back_user_upload_video .txtarea_video_title").val("");
                    $("#back_user_upload_video .txt_upload_video_tag ").val("");

                    $("#back_user_upload").fadeOut(200, function () { $("#back_user_upload").css("display", "none"); });
                    $("#back_user_upload_url").fadeOut(200, function () { $("#back_user_upload_url").css("display", "none"); });
                    $("#back_user_upload_img").fadeOut(200, function () { $("#back_user_upload_img").css("display", "none"); });
                    $("#back_user_upload_video").fadeOut(200, function () { $("#back_user_upload_video").css("display", "none"); });
                    $("#back_user_upload_category").fadeOut(200, function () { $("#back_user_upload_category").css("display", "none"); });

                });







//--------------------------------------------------------------------------------





//---------------------------- login and signup popup ---------------------------------

                
  /*              

                $("#back_signup").click(function () {
                    $("#back_signup").css("visibility", "hidden");
                });


                $(".btn_login").click(function () {

                    $("#back_login").slideDown(350);
                    $("#back_signup").slideUp(300);
                    $("#back_email_signup").slideUp(300);
                    $("#back_forgot_pass").slideUp(300);

                });

                $(".btn_signup").click(function () {

                    $("#back_signup").slideDown(400);

                    $("#back_login").slideUp(300);
                    $("#back_email_signup").slideUp(300);
                    $("#back_forgot_pass").slideUp(300);

                });

                $(".close_ #Btn").click(function () {

                    $("#back_signup").slideUp(300);
                    $("#back_email_signup").slideUp(300);
                    $("#back_login").slideUp(300);
                    $("#back_forgot_pass").slideUp(300);

  
                });



                $(".alternative #email").click(function () {

                    $("#back_login").slideUp(300);
                    $("#back_signup").slideUp(300);
                    $("#back_forgot_pass").slideUp(300);

                    setTimeout(function () {
                
                        $("#back_email_signup").slideDown(300);
                    },290);
                });

                $(".alternative #login").click(function () {

                    $("#back_email_signup").slideUp(300);
                    $("#back_signup").slideUp(300);
                    $("#back_forgot_pass").slideUp(300);

                    setTimeout(function () { 
                        $("#back_login").slideDown(300);
                    },290);
                });


                $(".forgot_pass a").click(function () {

                     $("#back_email_signup").slideUp(300);
                    $("#back_signup").slideUp(300);
                    $("#back_login").slideUp(300);

                    setTimeout(function () {
                        $("#back_forgot_pass").slideDown(300);
                    }, 290);
               

                });

                */
//--------- nav bar toggle when window size is reduced---------------------------------------------------------

                $('.navbar-toggle').click(function () {
                    if ($('.navbar-inverse').css("display") == "block") {
                        $('.navbar-inverse').css('display', 'none');

                    } else if ($('.navbar-inverse').css("display") == "none") {
                        $('.navbar-inverse').css('display', 'block');
                    }
                });

 //---------------category toggle when window size is reduced---------------------------------------------------------------------------

                var category = $('.list-box ul');  
                $(".drop_down_button").click(function () {

                    if ($('#drop_down_button_icon').is(".glyphicon-triangle-bottom")) {
    
                        $('#drop_down_button_icon').removeClass("glyphicon-triangle-bottom").addClass("glyphicon-triangle-top");
                    }
                    else {
                        $('#drop_down_button_icon').removeClass("glyphicon-triangle-top").addClass("glyphicon-triangle-bottom");
                    }
                    
                    category.slideToggle(300);
                });


            });


            function alignment() {

           //     alert("inside alignment function");
              //  if (document.documentElement.clientWidth <= 767) {
                if ((window.matchMedia('(max-width: 767px)').matches)  ){

          //         alert("inside alignment function if (max-width: 767px) ");
                    //--------------- ------------JAB CHOTA HOGA TAB    -----------

                    $('.pull-left').css("margin-top", "10px");
                    $('.search_bar').css("margin-top", "0px");
                    $('.input-group').css('width', 'auto');
                    $('.navbar-nav li ').css('width', 'auto');
                   $('.navbar-inverse').css("display", "none");
                    $('.container-fluid').css("padding-right", "0px");
                    $('.container-fluid').css("padding-left", "0px");
                    $('.list-box ul').css("display", "none");
                    $(".page-content").css("margin-left","0px");

                }
               else if (
                    ((window.matchMedia('(min-width:767px)').matches   ))&&
                   (window.matchMedia('(max-width: 1100px)').matches)
                   ){

                  
                 //  alert(navWidth); 1030 945
                    $('.pull-left').css("margin-top", "10px");
                  $('.navbar-nav li ').css('width', 'auto');
                    $('.search_bar').css("margin-top", "15px");
                    $('.container-fluid').css("padding-right", "50px");
                    $('.navbar-inverse').css("display", "block");
                    $('.input-group').css("width", "300px");


                    var navWidth = $(window).width();
                  //  $(".form-control").val(navWidth);
                   //964
                    if (window.matchMedia('(min-width:964px)').matches ){
                  //  if (navWidth >= 947) {
                    //    $(".form-control").val("inside 1st if " + navWidth);
                        $('.page-content').css("margin-left", navWidth - 740);
                    }
                    else if (
                        (window.matchMedia('(max-width:964px)').matches) &&
                        ((window.matchMedia('(min-width:767px)').matches)  )
                    ){
                     //   $(".form-control").val("inside 2st if " + navWidth);
                        $('.page-content').css("margin-left", "235px");

                    } else if ((window.matchMedia('(max-width: 767px)').matches)) {
                   //     $(".form-control").val("inside 3st if" + navWidth);
                       $('.page-content').css("margin-left","0px");
                    }
            
                    
               }
               else
               {
                   

                    $('.search_bar').css("margin-top", "15px");
                    $('.input-group').css('width', '300px');
                    $('.navbar-nav li ').css('width', '220px');
                    $('.container-fluid').css("padding-right", "100px");
                    $('.container-fluid').css("padding-left", "50px");
                    $('.navbar-right li').css('width', 'auto');
                    $('.navbar-inverse').css("display", "block");
                    $('.page-content').css("margin-left", "300px");


                }

            }


            $(window).load(function () {
                $('body').css('display', 'block');
               alignment();
            });


            $(window).bind('resize', function () {

                if ($('.drop_down_button').css("display") == "none") {
                    $('.list-box ul').css("display", "block");
               $('#drop_down_button_icon').removeClass("glyphicon-triangle-top").addClass("glyphicon-triangle-bottom");
                }
                alignment();

            });
