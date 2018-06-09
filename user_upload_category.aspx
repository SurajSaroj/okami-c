<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_upload_category.aspx.cs" Inherits="user_upload_category" %>

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


    </style>
</head>
<body>
 <div id="back_user_upload_category">
        <div style="top: 40px;" id="back_panel">
             <div class ="close_">
                 <a id="Btn" href="#">X</a>
             </div>

                <div class="user_upload_category">

                     <div class="heading" style="margin-bottom:10px;">
                        <h3>Pick a section</h3>
                         <p>Submitting to the right section to make sure your post gets the right exposure it deserves!</p>
                    </div>

                     <div class="spacer" >
                          <form runat="server">
                   <div class="form-group CategorySelection">
                       <div class="CategorySelection_child">
                             <label for="Funny">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/funny.jpg" />
                                        <span class="category_content">
                                            <span class="category_heading">Funny</span>
                                            <span class="category_decs">Why so serious</span>
                                        </span>

                                        <span class="category_radio">
                                            <input checked="checked" type="radio" name="Category" id="Funny" value="Funny"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="Gif">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/fox.gif" />
                                        <span class="category_content">
                                            <span class="category_heading">Gif</span>
                                            <span class="category_decs">Smile in 3 sec.</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Gif" value="Gif"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                            <label for="Animals">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/animals.jpg" />
                                        <span class="category_content">
                                            <span class="category_heading">Animals</span>
                                            <span class="category_decs">It's so fluffy I'm gonna die!</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Animals" value="Animals"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                            <label for="Food">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/food.jpg" />
                                        <span class="category_content">
                                            <span class="category_heading">Food</span>
                                            <span class="category_decs">Good Food is Good Mood</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Food" value="Food"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                              </label>

                            <label for="Gaming">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/gaming.jpg" />
                                        <span class="category_content">
                                            <span class="category_heading">Gaming</span>
                                            <span class="category_decs">We don't die, we respawn!</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Gaming" value="Gaming"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="Programmers">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/programmers.jpeg" />
                                        <span class="category_content">
                                            <span class="category_heading">Programmers</span>
                                            <span class="category_decs">We turn coffee into code</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Programmers" value="Programmers"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="Relationship">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/relationship.jpg" />
                                        <span class="category_content">
                                            <span class="category_heading">Relationship</span>
                                            <span class="category_decs">One person thousand feelings</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Relationship" value="Relationship"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="Science">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/science.jpg" />
                                        <span class="category_content">
                                            <span class="category_heading">Science</span>
                                            <span class="category_decs">Science is simply common sense at it's best</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Science" value="Science"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                             <label for="Videos">
                                    <span class="main_block">
                                        <img class="category_img" src="image/category_images/video.png" />
                                        <span class="category_content">
                                            <span class="category_heading">Videos</span>
                                            <span class="category_decs">Life without you is like youtube without videos!</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Videos" value="Videos"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>

                               <label for="Profile">
                                    <span class="main_block">
                                        <img class="category_img" src="image/kul_mod.jpg" />
                                        <span class="category_content">
                                            <span class="category_heading">My Profile Only</span>
                                            <span class="category_decs">Post will only be visible in your profile</span>
                                        </span>

                                        <span class="category_radio">
                                            <input type="radio" name="Category" id="Profile" value="Profile"/>
                                            <span class="check"> </span>
                                        </span>
                                    </span>
                                </label>
                           </div>
                    </div>
                    
                                <div class="form-group btn-container">
                                    
                                    <button style="margin-right:10px; padding: 6px 17px" type="button" class="btn btn-default user_upload_category_back ">
                                        Back</button>
                                    <button style="padding: 6px 17px" type="submit" class="btn btn-info user_upload_category_next">Post</button>
                                </div>
                               
                           </form>
                     </div>
                </div>
        </div>
 </div>
    
</body>
</html>
