<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_report.aspx.cs" Inherits="user_report" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Okami</title>
    <link href="css/user_upload_category.css" rel="stylesheet" />

    <!-- ----------------------- --------to be added in all page--------------------   -->

    <link rel="icon"  type="image/png" href="image/logo1.png"/>
      <link href="Content/bootstrap.css" rel="stylesheet" />  
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />

    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

<!-- ----------------------- -------------------------------------------------------------   -->
        <link href="css/login_signup.css" rel="stylesheet" />
     <script src="Scripts/bootstrap-filestyle.min.js"></script>
    <link href="css/user_report.css" rel="stylesheet" />
    <script src="java%20script/user_report.js"></script>

    <script>

 
            

</script>

    <style>


    </style>
</head>
<body>


 <!-- ----------------------------------- ------ report page-------------------------------- -->

 <div id="back_user_report">
        <div style="top: 40px;" id="back_panel">
             <div class ="close_">
                 <a id="Btn" href="#">X</a>
             </div>

                <div class="user_upload_category">

                     <div class="heading" style="margin-bottom:10px;">
                        <h3>Report</h3>
                         <p>Choosing the right reason help us process the report as soon as possible.</p>
                    </div>

                     <div class="spacer" >
                          <!--  <form> --> 
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
                                    <button style="padding: 6px 17px" type="submit" class="btn btn-info user_report_next">Next</button>
                                </div>
                               
                     <!--  </form> -->
                     </div>
                </div>
        </div>
 </div>
   

<!-- ----------------------------------- ------ report explnation-------------------------------- -->

     <div id="back_user_report_info">
        <div style="top: 40px;" id="back_panel">
             <div class ="close_">
                 <a id="Btn" href="#">X</a>
             </div>

                <div class="user_upload_category">

                     <div class="heading" style="margin-bottom:10px;">
                        <h3>Report</h3>
                         <p>Choosing the right reason help us process the report as soon as possible.</p>
                    </div>

                     <div class="spacer" >
                          <form>
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


</body>
</html>

