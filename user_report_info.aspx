<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_report_info.aspx.cs" Inherits="user_report_info" %>


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
 

    <style>



        
#back_user_report_info {
    z-index: 7;
    background-color: rgba(51, 51, 51, 0.84);
    position: fixed;
    height: 100%;
    width: 100%;
    visibility: hidden;
    top: 0px;
    left: 0px;
    overflow: scroll;
    visibility: visible;
}

    #back_user_report_info .user_upload_category .heading h3 {
        font-size: 30px;
        font-weight: 700;
    }

    #back_user_report_info .user_upload_category .spacer .btn-container {
        float: right;
        padding-right: 10px;
    }

    #back_user_report_info .user_upload_category .spacer button {
        width:auto;
    }

        #back_user_report_info .user_upload_category .spacer button:focus {
            outline: none;
        }

    #back_user_report_info .user_upload_category .spacer .form-control {
        padding: 0px;
    }


    #back_user_report_info .CategorySelection {
        border: 1px solid #d8d2d2;
        border-radius: 5px;
        height: 220px;
        overflow: auto;
        padding: 12px 10px;
    }

        #back_user_report_info .CategorySelection label {
            width: 100%;
            margin-bottom: 0px;
        }

            #back_user_report_info .CategorySelection label:hover > .main_block {
                background-color: #efefef;
                cursor: pointer;
            }

            #back_user_report_info .CategorySelection .report_info{
                font-weight:100;
            }

            #back_user_report_info .CategorySelection .report_info .remove_mar{
                margin:0px;
            }

#back_user_report .btn-container {
    float: right;
    padding-right: 10px;
}



    </style>
</head>
<body>
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
                          <form runat="server">
                               <div class="form-group CategorySelection">
                                   <div class="CategorySelection_child">
                                      <div class="report_info">

                                          <p>Report as spam?</p>
                                            
                                              <p class="remove_mar">&#9679;  We remove:</p>
                                                <p class="remove_mar">&#9679;  Clickbait</p>
                                                <p class="remove_mar">&#9679;  Advertising</p>
                                                <p class="remove_mar">&#9679; Scam</p>
                                                <p>&#9679; Script bot</p>
                                            
                                            <p>If you report someone's post, 9GAG doesn't tell them who reported it.<br/></p>

                                      </div>

                                     </div>
                                </div>
                    
                                <div class="form-group btn-container">
                                   <button style="margin-right:10px; padding: 6px 17px" type="button" class="btn btn-default user_report_back ">
                                        Back</button>
                                    <button style="padding: 6px 17px" type="submit" class="btn btn-danger user_report">Report</button>
                                </div>
                               
                           </form>
                     </div>
                </div>
        </div>
 </div>
   
</body>
</html>


