<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <title></title>
    <link href="css/sidebar_advertisement.css" rel="stylesheet" />
    <script>
        post_counter = 0;

    var pageIndex = 0;
    var pageCount;
    $(window).scroll(function () {

            //    console.log(($(window).scrollTop() + 10) + " == " + ($(document).height() - $(window).height()));

        if (($(window).scrollTop()) >= $(document).height() - $(window).height())
        {
           // console.log('8- $jview_name ' + $jview_name);
                GetRecords();
            }

    });
         $(function () {
                GetRecords();
        });
        
    function GetRecords() {

                pageIndex++;
            if (pageIndex == 1 || pageIndex <= pageCount) {
                $("#loader").show();
            $.ajax({
                type: "POST",
                url: "Default2.aspx/GetImages",
                data: '{pageIndex: ' + pageIndex + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {
                alert(response.responseText);
            },
                error: function (response) {
                alert(response.responseText);
            }
            });
        }
    }
        function OnSuccess(response)
        {

        var xmlDoc = $.parseXML(response.d);
        var xml = $(xmlDoc);
     //   console.log(xmlDoc);
        pageCount = parseInt(xml.find("PageCount").eq(0).find("PageCount").text());

    //    console.log('pageCount ' + pageCount);
     
        var images = xml.find("Images");
        //console.log(images);
        var repeatColumns = parseInt("<%=dlImages.RepeatColumns == 0 ? 1 : dlImages.RepeatColumns %>");
        var rowCount = Math.ceil(images.length / repeatColumns);
        var j = 0;
       
      //  var rawImageData = "R0lGODlhCwALAIAAAAAA3pn/ZiH5BAEAAAEALAAAAAALAAsAAAIUhA+hkcuO4lmNVindo7qyrIXiGBYAOw==";
        images.each(function () {
            var image = $(this);
            var row = $("[id*=dlImages] .item:last").closest("tr");
            if ($(".is_used[value='1']", row).length == repeatColumns) {

            row = $("[id*=dlImages] tr").eq(0).clone();
        $(".is_used", row).val("0");
                $(".image", row).attr("src", image.find("Post_Content").text());
                $(".button", row).attr("src", "");
                $(".loader", row).remove();
                $("[id*=dlImages]").append(row);
                j = 0;
            } else {
            row = $("[id*=dlImages] .item:last").closest("tr");
        }
            var cell = $(".item", row).eq(j);
            $(".name", cell).html(image.find("Post_Heading").text());
            
            $(".post_likes_count", cell).html(image.find("Post_Like_Count").text());
            $(".post_comment_count", cell).html(image.find("Post_Comments_Count").text());
            $(".post_flag_count", cell).html(image.find("Post_Report_Count").text());

           // console.log(image.find("Post_Category").text());
            var $post_type = image.find("Post_Type").text();
            post_counter = post_counter + 1;
    //        console.log('post type ' + $post_type);
        //  Image Gif Video
          if ($post_type == "Video")
          {
              $('.content-img:eq(' + (post_counter - 1) + ')').html('<video width="490px" height="auto" controls><source class="image" src="<%#Eval("Post_Content") %>"></video>');

          }
          else if ($post_type == "Image" )
          {
             
              $('.content-img:eq(' + (post_counter - 1) + ')').html('<img  class="image" src="<%#Eval("Post_Content") %>"></img>');
          }
          else if ($post_type == "Gif") {
              $('.content-img:eq(' + (post_counter - 1) + ')').html('<img class="image" src="<%#Eval("Post_Content") %>"></img>');
          }
            

          $(".clickcomment", cell).attr("href", "/comment.aspx?C_ID=" + image.find("c_ID").text());

            $(".button", cell).attr("href", image.find("Url").text());
            $(".is_used", cell).attr("value", "1");
            var img = $(".image", cell);
            var loader = $("<img class='loader' src='loader.gif' />");
            img.after(loader);
            img.hide();
            img.attr("src", image.find("Post_Content").text());
            img.load(function () {
            $(this).parent().find(".loader").remove();
                $(this).fadeIn();
            });
            j++;
        });
        $("[id*=dlImages] .is_used[value='0']").closest(".item").remove();
    }
</script>


    <style>
  </style>

</head>
<body>
             



    <asp:DataList ID="dlImages" runat="server" RepeatLayout="Table" RepeatColumns="1"
        CellPadding="20" CellSpacing="20" Height="200px" Width="200px">
        <ItemTemplate>
              <div class="content_post">

            <table class="item" cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td>
                          <div class="content_heading" >
                             <a target="_blank" href="Comment.aspx">
                               <h2 class="name"><%# Eval("Post_Heading") %></h2>
                              </a>
                          </div>
                    </td>
                </tr>
                <tr>
                    <td class="body">
                       <div class="content-img">
                             <img  class="image" src="<%#Eval("Post_Content") %>"></img>
                          </div>
                       
                      </td>
                </tr>
                <tr>
                    <td>
                        <div class="content_view_likes">
                               <span class="post_likes_count"><%# Eval("Post_Like_Count") %> </span><i style="padding-left: 4px;" class="fa fa-thumbs-up" aria-hidden="true"></i>
                               <span class="post_comment_count"><%# Eval("Post_Comments_Count") %></span> <i class="fa fa-comment" aria-hidden="true"></i>
                               <span class="post_flag_count"><%# Eval("Post_Report_Count") %></span> <i class="fa fa-flag" aria-hidden="true"></i>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="">
                        <div class="content_likes_comm_btn">
                               
                               <span class="post_like_btn">
                                   <button class="testing"><i class="fa fa-arrow-up" aria-hidden="true"></i> Like</button>
                               </span>
                                 <span class="post_dis_like_btn"> 
                                     <button><i class="fa fa-arrow-down" aria-hidden="true"></i> Dislike</button>

                                 </span>
                            <a href="#" class="clickcomment" target="_blank">
                                 <span class="post_comment_btn  ">
                                     <button><i class="fa fa-comments" aria-hidden="true"></i> Comment</button>

                                 </span>
                                </a>
                                <span class="post_flag_btn"> 
                                    <button><i class="fa fa-flag" aria-hidden="true"></i> Report</button>

                                </span>
                           </div>
                        <input type="hidden" class="is_used" value="0" />
                    </td>
                </tr>
            </table>

                  </div>
        </ItemTemplate>
    </asp:DataList>



    <div class="col-3 pull-right advertisement">
        <div class="add_container">
 
 <!-- ----------------------------- add 1   --------------------------------------------------     -->     
          
                <a class="add_anchor" target="_blank" href="https://9gag.com/gag/am21GW6?ref=fsidebar" >
                    <div class="add_content">
                        <div class="add_img">
                            <img class="" src="https://img00.deviantart.net/71e3/i/2015/111/3/2/fashion_show_advertisement_by_jocelyntan-d6djrpl.jpg" />
                        </div>

                        <div class="add_heading">
                            
                        </div>
                    </div>
                </a>
  
 <!-- ----------------------------- add 2    --------------------------------------------------     -->     
            
                <a class="add_anchor" target="_blank" href="https://www.flipkart.com/" >
                    <div class="add_content">
                        <div class="add_img">
                            <img class="" src="http://indianonlineseller.com/wp-content/uploads/2016/10/fk-ad.jpg" />
                        </div>

                        <div class="add_heading">
                            
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
                          When you dream of a bike
                        </div>
                    </div>
                </a>
          
 
 <!-- ----------------------------- add 4    --------------------------------------------------     -->     
            
                <a class="add_anchor" target="_blank" href="https://9gag.com/gag/aq164VL?ref=fsidebar" >
                    <div class="add_content">
                        <div class="add_img">
                            <img class="" src="image/add/add4.jpg" />
                        </div>

                        <div class="add_heading">
                           First day on the gym
                        </div>
                    </div>
                </a>
    
 <!-- ----------------------------- add 1    --------------------------------------------------     -->     
            
                <a class="add_anchor" target="_blank" href="https://9gag.com/gag/aERGeqG?ref=fsidebar" >
                    <div class="add_content">
                        <div class="add_img">
                            <img class="" src="image/add/add5.jpg" />
                        </div>

                        <div class="add_heading">
                            That moment when you realize the weekend is near.
                        </div>
                    </div>
                </a>
<!-- ----------------------------- add end  --------------------------------------------------     -->     
    
                
         </div>
     </div>
             
</body>
</html>
