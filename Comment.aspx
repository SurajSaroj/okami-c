<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="Comment.aspx.cs" Inherits="Comment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="main_head" Runat="Server">

    <link href="css/Comment.css" rel="stylesheet" />    
    <script>
            $(document).ready(function () {
                  $(function () {
                    $('.pots_desc_txtarea').css("height", "60px");                 
                        $('.pots_desc_txtarea').autosize({ append: "\n" });
                });


                  $(".content_heading h2").hover(function () {
                      $(".content_heading h2").css("color", "black");
                  });
            });
     
    </script>




    <style>
  .content_heading {
            text-align: left;
        }

        .content_heading h2:hover{
            cursor:default;
        }

        .content_likes_comm_btn {
            margin-top: 30px;
        }
  </style>

</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="User_profile" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main_content" Runat="Server">

                <div class="col-9 page-content">
 <!--    ----------------------           post 1  -------------------------------------    -->
                    <div class="content_post">
                          <div class="content_heading" >
                              <h2><label id="Label1" runat="server"></label></h2>
                          </div>

                          <div class="content-img">
                              <img src="http://i.memeful.com/media/post/ER5rbyd_700wa_0.gif" id="commentimage"  runat="server"/>
                              <video id="commentvideo"  runat="server" width="490px" height="auto" controls><source class="image" src=""></video>
                          </div>

                           <div class="content_view_likes">
                               <span class="post_likes_count"><label id="likecount" runat="server"></label> <i class="fa fa-thumbs-up" aria-hidden="true"></i></span>
                               <span class="post_comment_count"><label id="commentcount" runat="server"></label> <i class="fa fa-comment" aria-hidden="true"></i></span>
                               <span class="post_flag_count"><label id="flagcount" runat="server"></label> <i class="fa fa-flag" aria-hidden="true"></i></span>
                           </div>
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
                                    <button><i class="fa fa-flag" aria-hidden="true"></i> Flag</button>

                                </span>
                           </div>
                      </div>


     
<!-- ------------------------ post comment code---------------------- -->
                           <hr/>            
                          <div class="">
                            <div class="row">
<!-- ----------------------------    wrirte a comment   -------------------------------  -->
                                <div class="col">
                                    <div class="panel panel-white post panel-shadow">
                                        <div class="post-heading">
                                            <div class="com_pull-left image">
                                                <img src="http://bootdey.com/img/Content/user_1.jpg" class="img-circle avatar" alt="user profile image"/>
                                            </div>
                                            <div class="com_pull-left meta">
                                                <div class="title h5">
                                                    <a href="#"><b>Ryan Haywood</b></a>
                                                    made a post.
                                                </div>
                                                <h6 class="text-muted time">5/7/2017</h6>
                                            </div>
                                        </div> 
                                        <div class="post-description"> 
                                            <p><textarea  class="pots_desc_txtarea"  cols='92' rows="4" placeholder="Write your Comment.."></textarea></p>
                                             
                                            <a class="post_comm_add_gif"  target="_blank" href="http://memeful.com/">
                                                    <i class="fa fa-paperclip fa-2x" aria-hidden="true"></i></a>

                                            <div class="stats" style="text-align:right">
                                                <button class="btn btn-default stat-item comm_post">
                                                    <i class="fa fa-pencil" aria-hidden="true"></i> Post
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
<!-- ----------------------------    view a comment in img tag   -------------------------------  -->
                                <div class="col">
                                    <div class="panel panel-white post panel-shadow">
                                        <div class="post-heading">
                                            <div class="com_pull-left image">
                                                <img src="http://bootdey.com/img/Content/user_1.jpg" class="img-circle avatar" alt="user profile image"/>
                                            </div>
                                            <div class="com_pull-left meta">
                                                <div class="title h5">
                                                    <a href="#"><b>Ryan Haywood</b></a>
                                                    made a post.
                                                </div>
                                                <h6 class="text-muted time">5/7/2017</h6>
                                            </div>
                                        </div> 
                                        <div class="post-description"> 
                                            <img class="comm_img" src="http://i.memeful.com/media/post/BRkm0vw_700wa_0.gif"/>

                                        
                                            <div class="stats">
                                                <button class="btn btn-default stat-item comm_btn_like">
                                                    <i class="fa fa-thumbs-up icon"></i>2
                                                </button>
                                                <button class="btn btn-default stat-item comm_btn_dislike">
                                                    <i class="fa fa-thumbs-down icon"></i>12
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

<!-- ---- ---------------comment part over    -------------------------------------------- -->
<!-- ----------------------------    view a comment   -------------------------------  -->
                                <div class="col">
                                    <div class="panel panel-white post panel-shadow">
                                        <div class="post-heading">
                                            <div class="com_pull-left image">
                                                <img src="http://bootdey.com/img/Content/user_1.jpg" class="img-circle avatar" alt="user profile image"/>
                                            </div>
                                            <div class="com_pull-left meta">
                                                <div class="title h5">
                                                    <a href="#"><b>Ryan Haywood</b></a>
                                                    made a post.
                                                </div>
                                                <h6 class="text-muted time">5/7/2017</h6>
                                            </div>
                                        </div> 
                                        <div class="post-description"> 
                                            <p>Bootdey is a gallery of free snippets resources templates and utilities for bootstrap css hmtl js framework. Codes for developers and web designers</p>
                                            <div class="stats">
                                                <button class="btn btn-default stat-item comm_btn_like">
                                                    <i class="fa fa-thumbs-up icon"></i>2
                                                </button>
                                                <button class="btn btn-default stat-item comm_btn_dislike">
                                                    <i class="fa fa-thumbs-down icon"></i>12
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

<!-- ---- ---------------comment part over    -------------------------------------------- -->

                 </div>





</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="User_profile_close" Runat="Server">
</asp:Content>