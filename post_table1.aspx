<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="post_table1.aspx.cs" Inherits="post_table1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="main_head" Runat="Server">

    
 
<script type="text/javascript">
    var pageIndex = 0;
    var pageCount;
    $(window).scroll(function () {

       console.log(($(window).scrollTop()) + " == " + ($(document).height() - $(window).height()));

        if (($(window).scrollTop()) >= $(document).height() - $(window).height()) {

           
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
                url: "post_table1.aspx/GetImages",
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
    function OnSuccess(response) {
        var xmlDoc = $.parseXML(response.d);
        var xml = $(xmlDoc);
        pageCount = parseInt(xml.find("PageCount").eq(0).find("PageCount").text());
        var images = xml.find("Images");
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
                $(".image", row).attr("src", image.find("Url").text());
                $(".button", row).attr("src", "");
                $(".loader", row).remove();
                $("[id*=dlImages]").append(row);
                j = 0;
            } else {
                row = $("[id*=dlImages] .item:last").closest("tr");
            }
            var cell = $(".item", row).eq(j);
            $(".name", cell).html(image.find("Name").text());
            $(".button", cell).attr("href", image.find("Url").text());
            $(".is_used", cell).attr("value", "1");
            var img = $(".image", cell);
            var loader = $("<img class = 'loader' src = 'loader.gif' />");
            img.after(loader);
            img.hide();
            img.attr("src", image.find("Url").text());
            img.load(function () {
                $(this).parent().find(".loader").remove();
                $(this).fadeIn();
            });
            j++;
        });
        $("[id*=dlImages] .is_used[value='0']").closest(".item").remove();
    }
</script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="User_profile" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="main_content" Runat="Server">

    
 <form id="form1">
      
       <div class="col-9 page-content">

    <asp:DataList ID="dlImages" runat="server" RepeatLayout="Table" RepeatColumns="1"
        CellPadding="20" CellSpacing="20" Height="200px" Width="200px">
        <ItemTemplate>
              <div class="content_post">

            <table class="item" cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td>
                          <div class="content_heading" >
                              <a href="post_comment.aspx">
                               <h2 class="name"><%# Eval("Name") %></h2>
                              </a>
                          </div>
                    </td>
                </tr>
                <tr>
                    <td class="body">
                          <div class="content-img">
                              <img  class="image" src='<%#Eval("Url") %>'/>
                          </div>
                      
                      </td>
                </tr>
                <tr>
                    <td>
                        <div class="content_view_likes">
                               <span class="post_likes_count">428784 <i class="fa fa-thumbs-up" aria-hidden="true"></i></span>
                               <span class="post_comment_count">89 <i class="fa fa-comment" aria-hidden="true"></i></span>
                               <span class="post_flag_count">89 <i class="fa fa-flag" aria-hidden="true"></i></span>
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
                                 <span class="post_comment_btn">
                                     <button><i class="fa fa-comments" aria-hidden="true"></i> Comment</button>

                                 </span>
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

             </div>
    </form>


</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="User_profile_close" Runat="Server">
</asp:Content>

