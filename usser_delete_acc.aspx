<%@ Page Language="C#" AutoEventWireup="true" CodeFile="usser_delete_acc.aspx.cs" Inherits="usser_delete_acc" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Okami</title>
    <link href="css/user_upload_category.css" rel="stylesheet" />

    <!-- ----------------------- --------to be added in all page--------------------   -->

    <link rel="icon"  type="image/png" href="image/logo1.png"/>
      <link href="Content/bootstrap.css" rel="stylesheet" />  
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/user_del_acc.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

<!-- ----------------------- -------------------------------------------------------------   -->
        <link href="css/login_signup.css" rel="stylesheet" />
     <script src="Scripts/bootstrap-filestyle.min.js"></script>
 

    <style>



        
#back_user_del_acc {

    display:block;
}

    </style>
</head>
<body>
 <div id="back_user_del_acc">
        <div style="top: 100px;" id="back_panel">
             <div class ="close_">
                 <a id="Btn" href="#">X</a>
             </div>

                <div class="user_upload_category">

                     <div class="heading" style="margin-bottom:40px;">
                        <h3>Are you sure you want to delete your account?</h3>
                         <p style="padding-left:25px;">This will delete your current account and all of its content.</p>
                    </div>

                     <div class="spacer" >
                          <form runat="server">
                    
                                <div class="form-group btn-container">
                                   <button style="margin-right:10px; padding: 6px 17px" type="button" class="btn btn-default user_acc_delete_back ">
                                        Back</button>
                                    <button style="padding: 6px 17px" type="submit" class="btn btn-danger user_acc_delete">Delete</button>
                                </div>
                               
                           </form>
                     </div>
                </div>
        </div>
 </div>
   
</body>
</html>


