<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="User_profile.aspx.cs" Inherits="User_profile_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="main_head" Runat="Server">

    <link href="css/User_profile.css" rel="stylesheet" />
    <link href="css/index.css" rel="stylesheet" />


    <script>
        $(window).ready(function () {
//------------------------------- code for  tab change   ----------------------------------------

            $(".btn-pref .btn").click(function () {
                $(".btn-pref .btn").removeClass("btn-primary").addClass("btn-default");
                // $(".tab").addClass("active"); // instead of this do the below 
                $(this).removeClass("btn-default").addClass("btn-primary");
            });

        });        
    </script>

    <style>

        .advertisement {
    width: 340px;
    height: 100%;
    position: absolute;
    top: 405px;
    right: 80px;
}
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="User_profile" Runat="Server">

    
    <!-------------------------    -------  user_profile view  ------------------------------------>

    <div class="prof_container">
    <div class="card hovercard">
        <div class="card-background">
            <img class="card-bkimg" alt="" src="image/logo1.png" />
           
        </div>
        <div class="useravatar">
            <img alt="" src="image/logo1.png" />
        </div>
        <div class="card-info">
            <span class="card-title">Pamela Anderson</span>
        </div>

       <div class="card-about">
            <span class="card-about_user">My Funny collection </span>
        </div>

    </div>
    <div class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">
        <div class="btn-group" role="group">
            <button type="button" id="stars" class="btn btn-primary"  href="#tab1" data-toggle="tab">
               
                <div class="hidden-xs"><i class="fa fa-pencil-square-o"  aria-hidden="true"></i>Posts</div>
            </button>
        </div>
        <div class="btn-group" role="group">
            <button type="button" id="favorites" class="btn btn-default"  href="#tab1" data-toggle="tab">
                <div class="hidden-xs"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i>Likes</div>
            </button>
        </div>
        <div class="btn-group" role="group">
            <button type="button" id="following" class="btn btn-default"   href="#tab1" data-toggle="tab">
                <div class="hidden-xs"><i class="fa fa-comments-o" aria-hidden="true"></i>Comments</div>
            </button>
        </div>
    </div>
  </div>
   

    <!--------------------------------------------------------------------------------------------->
    
        <div class="well">
            <div class="tab-content">
                  <div class="tab-pane fade in active" id="tab1">
         


</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="main_content" Runat="Server">
    
                <div class="col-9 page-content">
 <!--    ----------------------           post 1  -------------------------------------    -->
                    <div class="content_post">
                          <div class="content_heading" >
                              <a href="post_comment.aspx"><h2>back to school days</h2></a>
                          </div>

                          <div class="content-img">
                              <img src="image/logo1.png"/>
                          </div>

                           <div class="content_view_likes">
                               <span class="post_likes_count">428784 <i class="fa fa-thumbs-up" aria-hidden="true"></i></span>
                               <span class="post_comment_count">89 <i class="fa fa-comment" aria-hidden="true"></i></span>
                               <span class="post_flag_count">89 <i class="fa fa-flag" aria-hidden="true"></i></span>
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
                                    <button><i class="fa fa-flag" aria-hidden="true"></i> Report</button>

                                </span>
                           </div>
                      </div>

   <!--    ----------------------           post 2   -------------------------------------    -->
                      
 <!--    ----------------------           post end  -------------------------------------    -->
              </div>




    <!--    ----------------------   advertisement  -------------------------------------    -->
 
    <div class="col-3 pull-right advertisement">
        <div class="add_container">
 
 <!-- ----------------------------- add 1    --------------------------------------------------     -->     
            
                <a class="add_anchor" target="_blank" href="https://9gag.com/gag/am21GW6?ref=fsidebar" >
                    <div class="add_content">
                        <div class="add_img">
                            <img class="" src="image/add/add1.jpg" />
                        </div>

                        <div class="add_heading">
                            Pizza, money and woman. Am I doing it right?
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
                            Pizza, money and woman. Am I doing it right?
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

</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="User_profile_close" Runat="Server">
       
           </div>
      </div>
    </div>
</asp:Content>