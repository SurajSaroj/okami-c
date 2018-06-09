<%@ Page Language="C#" AutoEventWireup="true" CodeFile="url_testing.aspx.cs" Inherits="url_testing" %>

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
          <script src='https://www.google.com/recaptcha/api.js'></script>
        <link href="font-awesome/css/animate_font_awsome.css" rel="stylesheet" />
    <script src="java%20script/jquery.autosize-min.js"></script>
        <script src="java%20script/jquery.validate.min.js"></script>

<!-- -----------------------  user upload popup-------------------------------------------------------------   -->
 

    <script>

        $(document).ready(function () {

            var fb_add = "https://www.facebook.com/plugins/video.php?href=";

            var yt_add = "http://www.youtube.com/embed/";
            var final_url;
            var cut_url;

       //     var video_url_pattern = new RegExp("(http|https)://[\w-]+(\.[\w-]+)+([\w.,@?^=%&amp;:/~+#-]*[\w@?^=%&amp;/~+#-])?")

            $(".submit_button").click(function () {

              
                var url_value;
                url_value = $(".txt_url").val();
                exp = /(youtube|youtu|facebook)\.(com|be)\/((watch\?v=([-\w]+))|(video\/([-\w]+))|(projects\/([-\w]+)\/([-\w]+))|([-\w]+))/;

                exp_fb = /(facebook)\.(com)\/((watch\?v=([-\w]+))|(video\/([-\w]+))|(projects\/([-\w]+)\/([-\w]+))|([-\w]+))/;

                exp_yt_watch = /(youtube)\.(com)\/((watch\?v=([-\w]+))|(video\/([-\w]+))|(projects\/([-\w]+)\/([-\w]+))|([-\w]+))/;

                exp_yt_be = /(youtu)\.(be)\/((watch\?v=([-\w]+))|(video\/([-\w]+))|(projects\/([-\w]+)\/([-\w]+))|([-\w]+))/;


                if (url_value.match(exp))
                {
                    alert("true");
                }
                else {
                    alert("false");
                }

                if (url_value.match(exp_fb))
                {
                    alert("facebook url");
                    final_url = fb_add + url_value;
                    $(".iframe_test").attr("src", final_url);
                }

                if (url_value.match(exp_yt_watch)) {
                    alert("youtube.com");
                    cut_url = url_value.split('=').pop();
                    console.log(cut_url);
                    final_url = yt_add + cut_url;
                    $(".iframe_test").attr("src", final_url);

                }

                if (url_value.match(exp_yt_be)) {
                    alert("youtu.be");
                    cut_url = url_value.split('/').pop();
                    console.log(cut_url);
                    final_url = yt_add + cut_url;
                    $(".iframe_test").attr("src", final_url);
                }

//=-----------------facebook https://www.facebook.com/beyounick182/videos/1917140345221069/  --------------------------------
                               https://www.facebook.com/J9Prank/videos/287582398389606/
                var final_url = fb_add + url_value;

//=-----------------youtube type 1 from url   https://www.youtube.com/watch?v=SnG4TbgTrMA   --------------------------------
   
   /*             var cut_url = url_value.split('=').pop();

                console.log(cut_url);

                var final_url = yt_add + cut_url; */
               

//=-----------------youtube type 2 from url  https://youtu.be/zMK7uG9DZF0   type 3  https://youtu.be/bb7P8uw_gQw?t=3--------------------------------

   //             var cut_url = url_value.split('/').pop();

   //             console.log(cut_url);

//                var final_url = yt_add + cut_url;


            //    $(".iframe_test").attr("src", final_url);
               // console.log($(".iframe_test"));

            });

        });

 </script>

    <style>
        .iframe_test{
            height:520px;
            width:520px;
        }
        </style>

</head>
<body>
    <form id="form_testing">
    <div><br/><br/>
            url <input class="txt_url" type="text" style="width:500px;" /><br/><br/>
        <input class="submit_button" type="button" value="click me"/>
    </div>
    </form>
    <br/><br/><br/><br/>
    <iframe class="iframe_test" src="https://www.youtube.com/embed/D0a0aNqTehM" frameborder="0" allowFullScreen="true"></iframe>
</body>
</html>
