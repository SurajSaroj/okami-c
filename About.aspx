<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="main_head" Runat="Server">

     <script>

        $(window).load(function(){
            $(".navbar-inverse .adjustable-drop li:nth-child(2)").addClass("active");
         });

         $(document).ready(function () { 
             $(".abt_content_heading").click(function () {
                 $(".abt_content_body").slideToggle(400);
             });

         });
</script>


    <style>
       
            .page-content .about_us_container{
                display: inline-block;   
                    margin-bottom: 30px;
            }

            .col-sm-20 {
                background-color: white;
                padding: 5px 15px;
                padding-bottom: 15px;
            }

             .col-sm-20 .heading h1{ 
                font-size: 40px;
                }

                .col-sm-20 .heading {

                }


               .col-sm-20 .heading .exp{ 
            font-size: 15px;
            color: grey;
            font-weight: 200;
            }

        .about .abt_content p i {
            font-size:50px;
            color:rgba(199, 199, 199, 0.61);     
                margin-left: 50px;
                    padding-top: 5px;
        }


              .abt_content p .abt_content_name_p1 {
            font-size: 20px;
            font-weight: 600;
            letter-spacing: 1px;
            }

            .abt_content p .abt_content_name_p2 {
            font-size: 20px;
            color: #0894b5;
            font-weight: 600;
            letter-spacing: 1px;
            }

        .about .abt_content p {
            font-size: 17px;
        }

        .about .abt_content_heading{
                display: inline-block;
                padding-left: 10px;
                font-size: 17px;
               color: #0894b5;
                font-weight: 400;
                cursor: pointer;
                font-family: cursive;
            }

            .about .abt_content_heading:hover {
                 color: #101010;
            }

            .about .abt_content_body{
            padding-left: 25px;
            padding-right: 25px;
            font-size: 15px;
            cursor: default;
            display:none;
            padding-bottom:0px;
            padding-top:10px
            }

            
                  .team1{
                 display: inline-block;
                 width: 49.7%;
                 margin-top: 10px;
                 text-align: center;
                 padding-top: 10px;
                 padding-bottom: 10px;
                }
              

                .team1 .team_img{
                        border: 7px solid rgba(169, 164, 164, 0.31);
                        width: 200px;
                        border-radius: 100px;
                        background-color: #e4e4e4;
                        height: 200px;
                        margin: auto;
               }

                  .team1 .name_desg{
                  margin-top: 10px;
                 }

                   .team1 .name_desg .team_name{
                          font-size: 28px;
                            font-weight: 700;
                            font-family: inherit;
                      }

                   .team1 .name_desg .team_desg{
                              margin-left:7px;
                            font-size: 20px;
                            font-family: -webkit-body;
                      }

                    .team1 .team_abt {
                            padding-left: 5px;
                            padding-right: 5px;
                            padding-top: 5px;
                            color: rgb(10, 10, 10);
                    }


                  .tech_part{
                 display: inline-block;
                 width: 32.9%;
                 margin-top: 10px;
                 text-align: center;
                 padding-top: 10px;
                 padding-bottom: 10px;
                }

                .tech_part .tech_img{
                    width: 120px;
                    height: 120px;
                    margin: auto;
                }

                 .tech_part .tech_name {
                        margin-top: 10px;
                        font-size: 17px;
                        font-family: sans-serif;
                        font-weight: 700;
                        letter-spacing: 1px;
                    }



            @media (min-width: 1100px) {
                 .about_us_container {
                      width: 930px;
                  }

                .col-sm-20 {
                    width: 85%;
                    background-color: white;
                    padding: 5px 15px;
                }
           }

        @media (max-width: 767px) {

            .about .heading ,.about .abt_content{
                text-align:left;
            }

            .about .abt_content_heading, .about .abt_content_body{
                display:block;
                text-align:left;
            }
            
        }
    </style>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="User_profile" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main_content" Runat="Server">
     <div class="col-9 page-content">
                     

         <div class="about_us_container">
                 <div class="col-sm-20 about">
                     <div class="heading">
                         <h1>About Us <span class="exp">It's Nice to Meet You!</span></h1>
                      </div>
                     <div class="abt_content">
                         <p><i class="fa fa-quote-left fa-flip-vertical" aria-hidden="true"></i>
                            <span class="abt_content_name_p1">OKA</span><span class="abt_content_name_p2">MI</span> is online platform and social media website. Users upload and
                             share "user-generated content" or other content from external social media websites.<br/>&nbsp;&nbsp;&nbsp;
                         With millions of visitors and post everyday, OKAMI is the online website for you to LOL & kill time !</p>
                     </div>
                     <div class="abt_content_heading">
                         Still not convinced? 
                     </div>
                     <div class="abt_content_body">
                         &#9679; <b>OKAMI site loads fast</b> and allows effortless scrolling. Waste no time for a pick-me-up or simply a good laugh.<br/>
                         &#9679; <b>Carry unlimited fun</b> in your pocket. Enjoy OKAMI anytime, anywhere, and anyplace. Never be bored again in class, at work, or on bathroom breaks beause its mobile friendly.<br/>
                         &#9679; <b>Out-humor others.</b> Always be the first person to share the latest memes & videos with the outside world.<br/>
                         &#9679; <b>Get a superb body.</b> Research shows that 78% of our users have developed abs from laughing. Start your day with OKAMI because it’s the healthiest addiction you can ever hope for.<br/>
                         &#9679; <b>Connect with millions of fellow</b>. Discuss any topic that interests you, whether it is relationship, gaming or simply food.<br/>
                         &#9679; <b>Shape the definition of fun!</b> UPVOTE and COMMENT to determine the funny contents that deserve to rule the world. Oh, and UPLOAD anything secretly. Your parents will never know.<br/>
                       </div>
                 </div>

              <div class="col-sm-20 about">
                     <div class="heading">
                         <h1>Our Team<span class="exp"></span></h1>
                      </div>
                     <div class="abt_content">
                         <div class="our_team">
                             <div class="team1">

                                 <div class="">
                                     <img class="team_img" src="image/Amit.jpg" />
                                 </div>
                                 <div class="name_desg">
                                     <span class="team_name">Amit Jain</span>
                                     <span class="team_desg">Developer</span>
                                 </div>
                                 <div class="team_abt">
                                     A Developer team is responsible for determining the specific objectives of the system and is also
                                     ultimately responsible for delivering a system that meets these objectives
                                 </div>
                             </div>

                             <div class="team1">

                                 <div class="">
                                     <img class="team_img" src="image/Soham.jpg" />
                                 </div>
                                 <div class="name_desg">
                                     <span class="team_name">Soham Kena</span>
                                     <span class="team_desg">Programmer</span>
                                 </div>
                                 <div class="team_abt">
                                     A programmer is a technical specialist responsible for developing specific computer programs that meet the specifications.
                                     This includes writing the actual code that makes the program work. 
                                 </div>
                             </div>
                         </div>

                         <div class="our_team">
                             <div class="team1">

                                 <div class="">
                                     <img class="team_img" src="image/janvhi.png" />
                                 </div>
                                 <div class="name_desg">
                                     <span class="team_name">Janvi Shah</span>
                                     <span class="team_desg">Project Manager</span>
                                 </div>
                                 <div class="team_abt">
                                     A project manager is responsible for coordinating the team members and the resources to complete a project on time. 
                                     Project managers need a number of different skills, including technical and business skills. 
                                 </div>
                             </div>

                             <div class="team1">

                                 <div class="">
                                     <img class="team_img" src="image/Adit.jpg" />
                                 </div>
                                 <div class="name_desg">
                                     <span class="team_name">Adit Wagh</span>
                                     <span class="team_desg">Systems Analyst</span>
                                 </div>
                                 <div class="team_abt">
                                    A system analyst is a professional with expertise in analyzing and designing business systems. 
                                     A system analyst understands how the current systems operate and developing new systems that meet specific objectives.
                                 </div>
                             </div>
                         </div>

                     </div>
                 </div>

<!--  --------------------------     ---------- technologies used --------------        --------------- -->

              <div class="col-sm-20 about" style="padding-bottom: 20px;">
                     <div class="heading">
                         <h1>Technologies Used<span class="exp"></span></h1>
                      </div>
                       <div class="abt_content">
                         <div class="our_team">
                             <div class="tech_part">

                                 <div class="tech_img">
                                     <img class="tech_img" src="image/logo/html5.png"/>
                                 </div>
                                 <div class="tech_name">Html 5</div>
                             </div>

                             <div class="tech_part">

                                 <div class="tech_img">
                                     <img class="tech_img" src="image/logo/css3.png" />
                                 </div>
                                 <div class="tech_name">CSS 3</div>
                             </div>

                              <div class="tech_part">

                                 <div class="tech_img">
                                     <img  class="tech_img" src="image/logo/boostrap.png" />
                                 </div>
                                 <div class="tech_name">Bootstrap</div>
                             </div>
                         </div>


                     </div>

                   <div class="abt_content">
                         <div class="our_team">
                             <div class="tech_part">

                                 <div class="tech_img">
                                     <img class="tech_img" src="image/logo/jquery.png" />
                                 </div>
                                 <div class="tech_name">jQuery</div>
                             </div>

                             <div class="tech_part">

                                 <div class="tech_img">
                                     <img class="tech_img" src="image/logo/c.png" />
                                 </div>
                                 <div class="tech_name">C#</div>
                             </div>

                              <div class="tech_part">

                                 <div class="tech_img">
                                     <img class="tech_img" src="image/logo/mssql.png" />
                                 </div>
                                 <div class="tech_name">Microsoft SQL</div>
                             </div> 
                         </div>


                     </div>
                 </div>
          </div>
</div>





</asp:Content>

