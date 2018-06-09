<%@ Page Language="C#" AutoEventWireup="true" CodeFile="scrolling_ad_testing.aspx.cs" Inherits="scrolling_ad_testing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="java%20script/scroll_speed_ctrl.js"></script>
    <script>



        $(document).ready(function () {
            var counter = 1;
            var distance1 = 0;
            var move = 0;
            var abc = 0;
            var scroll_pause = 400;

            $(window).on('scroll', function () {
                scrolling(counter);
            });
                //======================== code for category movements ================================

            function scrolling(abc)
            {
//                counter = abc;

                var distance; 
                
                currScroll = $(window).scrollTop();

                 if (counter >= 1 && counter <= 11)
                 distance = $('.advertisement .add_anchor:nth-child(' + counter + ')').offset().top - ($(window).scrollTop() + 10);

                 if ($('.advertisement .add_container').css("position") == "absolute" || $('.advertisement .add_container').css("position") == "inherit") {
                     distance1 = $('.advertisement .add_anchor:nth-child(1)').offset().top - ($(window).scrollTop());
                     move = $(window).scrollTop();
                 }

                 if (distance <= 0) {
                     console.log("scroll down -------");

                     $('.advertisement .add_container').css({ "position": "fixed", "top": distance1, "width": "340px" });

                     if ($(window).scrollTop() >= (move + scroll_pause)) {
 
                        $('.advertisement .add_container').css({ "position": "inherit", "top": (scroll_pause * counter), "width": "340px" });
                         counter = counter + 1;
                         //  lastScrollTop = currScroll; 
                         scrolling(counter);
                     }

                 }
                
            }

        });


    </script>
    <style>
        
/* -------------------------- ---------- advertisement / sidebar -----------------------------------------*/
.advertisement {
    width: 340px;
    height: 100%;
    position: absolute;
    top: 400px;
    right: 10px;
}


    .advertisement .add_container {
        width: 100%;
        height: 100%;
            position: absolute;
        text-align: center;
    }

    .advertisement .add_anchor {
        margin: auto;
        display: inline-block;
        padding: 5px;
        border-radius: 5px;
        width: 310px;
        background-color: rgb(248, 248, 248);
        margin-bottom: 18px;
    }

        .advertisement .add_anchor:focus, .advertisement .add_anchor:hover,
        .advertisement .add_anchor:hover .add_heading {
            text-decoration: none;
            color: black;
        }


    .advertisement.add_img {
        width: 300px;
        height: 140px;
    }

        .advertisement.add_img img {
            width: 100%;
            height: 140px;
            border: 1px solid #d4cfcf;
        }

    .advertisement .add_heading {
        color: #0894b5;
        word-wrap: break-word;
        font-size: 15px;
        font-weight: bold;
        text-align: center;
        font-family: cursive;
    }


    </style>
</head>
<body style="background-color:#d4d4d4;">

    <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
      <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
      <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
      <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
      <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
      <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
      <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
      <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
      <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
      <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
      <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
    <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
      <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
          <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
      <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
      <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
      <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
      <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
      <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
    <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>
      <div class="post_tp" style="    width: 300px;
    height: 300px;
    background-color: #266ca9;margin:10px;">

        sssss
     </div>

     
  <div class="col-3 pull-right advertisement">
        <div class="add_container box">
 
 <!-- ----------------------------- add 1    --------------------------------------------------     -->     
            
                <a class="add_anchor stop" target="_blank" href="https://9gag.com/gag/am21GW6?ref=fsidebar" >
                    <div class="add_content">
                        <div class="add_img">
                            <img class="" src="image/add/add1.jpg" />
                        </div>

                        <div class="add_heading">
                           1
                        </div>
                    </div>
                </a>
  
 <!-- ----------------------------- add 2    --------------------------------------------------     -->     
            
                <a class="add_anchor" target="_blank" href="https://9gag.com/gag/a6QzNbR?ref=fsidebar" >
                    <div class="add_content">
                        <div class="add_img">
                            <img class="" src="image/add/add2.jpg" />
                        </div>

                        <div class="add_heading">
                            qwqqwqwqwqwqwqwqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq2
                        </div>
                    </div>
                </a>
    
 <!-- ----------------------------- add 3    --------------------------------------------------     -->     
            
                <a class="add_anchor" target="_blank" href="https://9gag.com/gag/aB86dLZ?ref=fsidebar" >
                    <div class="add_content">
                        <div class="add_img">
                            <img class="" src="image/add/add3.jpg" />
                        </div>

                        <div class="add_heading">
                          3
                        </div>
                    </div>
                </a>
          
  <!-- ----------------------------- add 1    --------------------------------------------------     -->     
            
                <a class="add_anchor stop" target="_blank" href="https://9gag.com/gag/am21GW6?ref=fsidebar" >
                    <div class="add_content">
                        <div class="add_img">
                            <img class="" src="image/add/add1.jpg" />
                        </div>

                        <div class="add_heading">
                            wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4
                        </div>
                    </div>
                </a>
  
 <!-- ----------------------------- add 2    --------------------------------------------------     -->     
            
                <a class="add_anchor" target="_blank" href="https://9gag.com/gag/a6QzNbR?ref=fsidebar" >
                    <div class="add_content">
                        <div class="add_img">
                            <img class="" src="image/add/add2.jpg" />
                        </div>

                        <div class="add_heading">
                           5
                        </div>
                    </div>
                </a>
    
 <!-- ----------------------------- add 3    --------------------------------------------------     -->     
            
                <a class="add_anchor" target="_blank" href="https://9gag.com/gag/aB86dLZ?ref=fsidebar" >
                    <div class="add_content">
                        <div class="add_img">
                            <img class="" src="image/add/add3.jpg" />
                        </div>

                        <div class="add_heading">
                          6
                        </div>
                    </div>
                </a>
          
 
             <!-- ----------------------------- add 1    --------------------------------------------------     -->     
            
                <a class="add_anchor stop" target="_blank" href="https://9gag.com/gag/am21GW6?ref=fsidebar" >
                    <div class="add_content">
                        <div class="add_img">
                            <img class="" src="image/add/add1.jpg" />
                        </div>

                        <div class="add_heading">
                            7
                        </div>
                    </div>
                </a>
  
 <!-- ----------------------------- add 2    --------------------------------------------------     -->     
            
                <a class="add_anchor" target="_blank" href="https://9gag.com/gag/a6QzNbR?ref=fsidebar" >
                    <div class="add_content">
                        <div class="add_img">
                            <img class="" src="image/add/add2.jpg" />
                        </div>

                        <div class="add_heading">
                            8
                        </div>
                    </div>
                </a>
    
 <!-- ----------------------------- add 3    --------------------------------------------------     -->     
            
                <a class="add_anchor" target="_blank" href="https://9gag.com/gag/aB86dLZ?ref=fsidebar" >
                    <div class="add_content">
                        <div class="add_img">
                            <img class="" src="image/add/add3.jpg" />
                        </div>

                        <div class="add_heading">
                         9
                        </div>
                    </div>
                </a>
          
 
             <!-- ----------------------------- add 1    --------------------------------------------------     -->     
            
                <a class="add_anchor stop" target="_blank" href="https://9gag.com/gag/am21GW6?ref=fsidebar" >
                    <div class="add_content">
                        <div class="add_img">
                            <img class="" src="image/add/add1.jpg" />
                        </div>

                        <div class="add_heading">
                           10
                        </div>
                    </div>
                </a>
  
 <!-- ----------------------------- add 2    --------------------------------------------------     -->     
            
                <a class="add_anchor" target="_blank" href="https://9gag.com/gag/a6QzNbR?ref=fsidebar" >
                    <div class="add_content">
                        <div class="add_img">
                            <img class="" src="image/add/add2.jpg" />
                        </div>

                        <div class="add_heading">
                           11
                        </div>
                    </div>
                </a>
    
 <!-- ----------------------------- add 3    --------------------------------------------------     -->     
            
                <a class="add_anchor" target="_blank" href="https://9gag.com/gag/aB86dLZ?ref=fsidebar" >
                    <div class="add_content">
                        <div class="add_img">
                            <img class="" src="image/add/add3.jpg" />
                        </div>

                        <div class="add_heading">
                          12
                        </div>
                    </div>
                </a>
          
 
<!-- ----------------------------- add end  --------------------------------------------------     -->     
    
                
         </div>
     </div>
    
</body>
</html>
