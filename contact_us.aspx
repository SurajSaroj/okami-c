<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="contact_us.aspx.cs" Inherits="contact_master_test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="main_head" Runat="Server">

    
<link href="css/Contact_us.css" rel="stylesheet" />  

    <script>
        $(window).load(function () {
            $(".navbar-inverse .adjustable-drop li:nth-child(3)").addClass("active");

        });
 
      $(document).ready(function () {
            $(function () {
                $('.contact_us_txtarea').css("height", "104px");
                $('.contact_us_txtarea').autosize({ append: "\n" });

            });
        });

      </script>
     
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="User_profile" Runat="Server">
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="main_content" Runat="Server">


    
              <div class="col-9 page-content">
 <!--    ----------------------           contact us  -------------------------------------    -->
                  

    	<div class="contact_us_container">
        	<div class="contact-us">
            	<div class="col-sm-20">
                    <div class="contact_us_heading">
                    <h1 class="h1">
                    CONTACT US <small>Feel free to contact us</small>
                    </h1>
                    </div>
                    <form name="form1" class="contact_us_form">

                      <div class="form-group">
                        <label for="usr"><i class="fa fa-user" aria-hidden="true"></i>Full Name</label>
                        <input type="text" class="form-control"  name="fname" id="fname" required placeholder="eg. Rahul Rai"/>
                      </div>

                      <div class="form-group">
                          <label for="usr"><i class="fa fa-envelope" aria-hidden="true"></i> Email Address</label>
                        <input type="email" class="form-control"  name="email" id="email12" required placeholder="eg. xyz@gmai.com"/>
                      </div>

                      <div class="form-group">
                          <label for="usr"><i class="fa fa-phone" aria-hidden="true"></i> Contact No.</label>
                        <input type="text" class="form-control"  name="phone1" id="phone1" required pattern="[789][0-9]{9}" placeholder="eg. 9906531471"/>
                      </div>

		               <div class="form-group">
                           <div id="err" style="color:red; font-size:12px; display:none"></div>
                            <label for="usr"><i class="fa fa-question-circle" aria-hidden="true"></i> Query</label>
                       	<textarea cols='92' rows="6" class="form-control contact_us_txtarea" required name="query" id="query" placeholder="Type your query"></textarea>
                      </div>


                        <div class="button-group">
                      <button type="submit" name="submit" id="submit" class="btn btn-default"><i class="fa fa-pencil" aria-hidden="true"></i> Submit</button>
                        </div>
                            </form>
                    
                </div>
                <div class="col-sm-20" style="padding-left:10px;padding-right:10px;">
                    <div class="contact_us_heading" style="border-bottom: 1px solid #a9a9a9;">
                        <h3 class="h2">
                            <i class="fa fa-globe" aria-hidden="true"></i>  Our office
                        </h3>
                    </div>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3770.9365736516584!2d72.84722041439919!3d19.066526087093347!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c91dc7b91b81%3A0x64de056561407522!2sHiray+College!5e0!3m2!1sen!2sin!4v1504942920910" width="100%" height="500px" frameborder="0" style="border:0"></iframe>
                </div>
            </div>
        </div>
 <!--    ----------------------     contact us end  -------------------------------------    -->
              </div>



</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="User_profile_close" Runat="Server">
</asp:Content>

