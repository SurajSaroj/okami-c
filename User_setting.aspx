<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="User_setting.aspx.cs" Inherits="User_setting_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="main_head" Runat="Server">

    <link href="css/User_setting.css?version=51" rel="stylesheet" />
        <link href="css/user_del_acc.css" rel="stylesheet" />

    <script>
        $(document).ready(function () {
            $(".container_left_category").css("display", "none");

            $(".user_setting_email").attr("disabled", "disabled"); 


            $(".form_tab1 .delete_acc").click(function () {

               // $("#back_user_del_acc").css("display", "block");
             //   $("#back_user_del_acc").fadeIn(400, function () { $("#back_user_del_acc").css("display", "block"); });
                $("#back_user_del_acc").slideDown(250);
            });

            

            $("#back_user_del_acc .user_acc_delete_back").click(function () {
               // $("#back_user_del_acc").fadeOut(400, function () { $("#back_user_del_acc").css("display", "none"); });
                $("#back_user_del_acc").slideUp(250);
            });

          $("#back_user_del_acc .close_ #Btn").click(function () {

             // $("#back_user_del_acc").fadeOut(400, function () { $("#back_user_del_acc").css("display", "none"); });
              $("#back_user_del_acc").slideUp(250);
            });
        });
</script>

    <style>
        
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="User_profile" Runat="Server">

      <main class="container">
      <div class="user_setting_centered">
 <!------------------------- container ------------------------------------>
      <!------------------------- side menu ------------------------------------>
 	<div class="col-sm-2">
    <nav class="nav-sidebar">
		<ul class="nav tabs">
          <li class="active"><a href="#tab1" data-toggle="tab">Account</a></li>
          <li class=""><a href="#tab2" data-toggle="tab">Password</a></li>
          <li class=""><a href="#tab3" data-toggle="tab">Profile</a></li>                               
		</ul>
	</nav>
	</div>
<!------------------------- tab content ------------------------------------>
        
          <!-------------------------  tab 1  ------------------------------------>
<div class="tab-content">
<div class="tab-pane active text-style" id="tab1">
 
    <form class="form_tab1">
                    <div class="heading">
                        <h2>Account</h2>
                  </div>

                   <div class="form-group">
                          <label for="username">Username</label>
                          <input type="text" class="form-control" id="username" required/>
                           <p>Username can be used for login as well.. </p>
                        </div>

                    <div class="form-group">
                          <label>Your Name</label>
                          <input type="text" class="form-control user_setting_email" value="xyz@gmail.com"/>
                           <p>Email Id cannot be changed or altered..</p> 
                        </div>

                    <div class="active">
                         <div class="delete_acc"> Delete my Account</div>
                          <input class="btn btn-info" type="submit" value="Save Changes" />
                      </div>
      </form>
     
</div>
    <!-------------------------  tab 2  ------------------------------------>
<div class="tab-pane text-style" id="tab2">

        
        
                <form class="form_tab2">
                    <div class="heading">
                        <h2>Change Password</h2>
                  </div>
                        
                        <div class="form-group">
                          <label for="new_pass">New Password</label>
                          <input type="password" class="form-control" id="new_pass" min="6" required/>
                        </div>

                    <div class="form-group">
                          <label for="re_new_pass">Re-type New Password</label>
                          <input type="password" class="form-control" id="re_new_pass" min="6" required/>
                        </div>

                      <div class="active">
                          <input id="Submit" class="btn btn-info" type="submit" value="Save Changes" />
                          </div>
                    </form>

        
</div>

<!-------------------------  tab 3  ------------------------------------>
<div class="tab-pane text-style" id="tab3">
 <form class="form_tab3">
                    <div class="heading">
                        <h2>Profile</h2>
                  </div>
                    <label>Avtar</label>
                   <div class="main_user_avtar">
                       <div class="user_img">
                               <img class="user_avtar" src="image/user.png" />
                        </div>
                       <div class="choose_img">
                             <input type="file" class="filestyle"  data-buttonBefore="true" data-placeholder="No file" name="avtar" accept=".jpg, .gif, .png"/>
                           <p>JPG, GIF or PNG, Max size: 2MB</p>
                        </div>
                    </div>

                       <div class="form-group">
                          <label for="name">Your Name</label>
                          <input type="text" class="form-control" id="name" required/>
                           <p>This is the name that will be visible to other users.</p>
                        </div>
                
                        <div class="form-group">
                          <label  style="width:100%;">Gender</label>
                          <select name="gender">
                              <option>Select Gender..</option>
                              <option value="m">Male</option>
                              <option value="f">Female</option>
                              <option value="x">Unspecified</option>
                         </select>
                        </div>

                     <div class="form-group">
                          <label  style="width:100%;"for="year">Birthday</label>
                            <input style="width: 70%;" type="date" class="form-control" id="name" required/>                                 
                    </div>

                  <div class="form-group">
                          <label  style="width:100%;"for="year">Country</label>
                            <select name="country" id="country_selector">
                            <option value=""></option>
                            <option value="af">Afghanistan</option>
                            <option value="al">Albania</option>
                            <option value="dz">Algeria</option>
                            <option value="as">American Samoa</option>
                            <option value="ad">Andorra</option>
                            <option value="ao">Angola</option>
                            <option value="ai">Anguilla</option>
                            <option value="aq">Antarctica</option>
                            <option value="ag">Antigua And Barbuda</option>
                            <option value="ar">Argentina</option>
                            <option value="am">Armenia</option>
                            <option value="aw">Aruba</option>
                            <option value="au">Australia</option>
                            <option value="at">Austria</option>
                            <option value="az">Azerbaijan</option>
                            <option value="bs">Bahamas</option>
                            <option value="bh">Bahrain</option>
                            <option value="bd">Bangladesh</option>
                            <option value="bb">Barbados</option>
                            <option value="by">Belarus</option>
                            <option value="be">Belgium</option>
                            <option value="bz">Belize</option>
                            <option value="bj">Benin</option>
                            <option value="bm">Bermuda</option>
                            <option value="bt">Bhutan</option>
                            <option value="bo">Bolivia</option>
                            <option value="ba">Bosnia And Herzegovina</option>
                            <option value="bw">Botswana</option>
                            <option value="br">Brazil</option>
                            <option value="io">British Indian Ocean Territory</option>
                            <option value="bn">Brunei Darussalam</option>
                            <option value="bg">Bulgaria</option>
                            <option value="bf">Burkina Faso</option>
                            <option value="bi">Burundi</option>
                            <option value="kh">Cambodia</option>
                            <option value="cm">Cameroon</option>
                            <option value="ca">Canada</option>
                            <option value="cv">Cape Verde</option>
                            <option value="ky">Cayman Islands</option>
                            <option value="cf">Central African Republic</option>
                            <option value="td">Chad</option>
                            <option value="cl">Chile</option>
                            <option value="cn">China</option>
                            <option value="co">Colombia</option>
                            <option value="km">Comoros</option>
                            <option value="cg">Congo</option>
                            <option value="ck">Cook Islands</option>
                            <option value="cr">Costa Rica</option>
                            <option value="ci">Cote D'Ivoire</option>
                            <option value="hr">Croatia</option>
                            <option value="cu">Cuba</option>
                            <option value="cy">Cyprus</option>
                            <option value="cz">Czech Republic</option>
                            <option value="dk">Denmark</option>
                            <option value="dj">Djibouti</option>
                            <option value="dm">Dominica</option>
                            <option value="do">Dominican Republic</option>
                            <option value="ec">Ecuador</option>
                            <option value="eg">Egypt</option>
                            <option value="sv">El Salvador</option>
                            <option value="gq">Equatorial Guinea</option>
                            <option value="er">Eritrea</option>
                            <option value="ee">Estonia</option>
                            <option value="et">Ethiopia</option>
                            <option value="fk">Falkland Islands (Malvinas)</option>
                            <option value="fo">Faroe Islands</option>
                            <option value="fm">Federated States Of Micronesia</option>
                            <option value="fj">Fiji</option>
                            <option value="fi">Finland</option>
                            <option value="fr">France</option>
                            <option value="gf">French Guiana</option>
                            <option value="pf">French Polynesia</option>
                            <option value="ga">Gabon</option>
                            <option value="gm">Gambia</option>
                            <option value="ge">Georgia</option>
                            <option value="de">Germany</option>
                            <option value="gh">Ghana</option>
                            <option value="gi">Gibraltar</option>
                            <option value="gr">Greece</option>
                            <option value="gl">Greenland</option>
                            <option value="gd">Grenada</option>
                            <option value="gp">Guadeloupe</option>
                            <option value="gu">Guam</option>
                            <option value="gt">Guatemala</option>
                            <option value="gn">Guinea</option>
                            <option value="gw">Guinea-Bissau</option>
                            <option value="gy">Guyana</option>
                            <option value="ht">Haiti</option>
                            <option value="va">Holy See (Vatican City State)</option>
                            <option value="hn">Honduras</option>
                            <option value="hk">Hong Kong</option>
                            <option value="hu">Hungary</option>
                            <option value="is">Iceland</option>
                            <option value="in">India</option>
                            <option value="id">Indonesia</option>
                            <option value="iq">Iraq</option>
                            <option value="ie">Ireland</option>
                            <option value="ir">Islamic Republic Of Iran</option>
                            <option value="il">Israel</option>
                            <option value="it">Italy</option>
                            <option value="jm">Jamaica</option>
                            <option value="jp">Japan</option>
                            <option value="jo">Jordan</option>
                            <option value="kz">Kazakhstan</option>
                            <option value="ke">Kenya</option>
                            <option value="ki">Kiribati</option>
                            <option value="kw">Kuwait</option>
                            <option value="kg">Kyrgyzstan</option>
                            <option value="la">Lao People'S Democratic Republic</option>
                            <option value="lv">Latvia</option>
                            <option value="lb">Lebanon</option>
                            <option value="ls">Lesotho</option>
                            <option value="lr">Liberia</option>
                            <option value="ly">Libyan Arab Jamahiriya</option>
                            <option value="li">Liechtenstein</option>
                            <option value="lt">Lithuania</option>
                            <option value="lu">Luxembourg</option>
                            <option value="mo">Macao</option>
                            <option value="mg">Madagascar</option>
                            <option value="mw">Malawi</option>
                            <option value="my">Malaysia</option>
                            <option value="mv">Maldives</option>
                            <option value="ml">Mali</option>
                            <option value="mt">Malta</option>
                            <option value="mh">Marshall Islands</option>
                            <option value="mq">Martinique</option>
                            <option value="mr">Mauritania</option>
                            <option value="mu">Mauritius</option>
                            <option value="yt">Mayotte</option>
                            <option value="mx">Mexico</option>
                            <option value="mc">Monaco</option>
                            <option value="mn">Mongolia</option>
                            <option value="me">Montenegro</option>
                            <option value="ms">Montserrat</option>
                            <option value="ma">Morocco</option>
                            <option value="mz">Mozambique</option>
                            <option value="mm">Myanmar</option>
                            <option value="na">Namibia</option>
                            <option value="nr">Nauru</option>
                            <option value="np">Nepal</option>
                            <option value="nl">Netherlands</option>
                            <option value="an">Netherlands Antilles</option>
                            <option value="nc">New Caledonia</option>
                            <option value="nz">New Zealand</option>
                            <option value="ni">Nicaragua</option>
                            <option value="ne">Niger</option>
                            <option value="ng">Nigeria</option>
                            <option value="nu">Niue</option>
                            <option value="nf">Norfolk Island</option>
                            <option value="mp">Northern Mariana Islands</option>
                            <option value="no">Norway</option>
                            <option value="om">Oman</option>
                            <option value="pk">Pakistan</option>
                            <option value="pw">Palau</option>
                            <option value="ps">Palestinian Territory, Occupied</option>
                            <option value="pa">Panama</option>
                            <option value="pg">Papua New Guinea</option>
                            <option value="py">Paraguay</option>
                            <option value="pe">Peru</option>
                            <option value="ph">Philippines</option>
                            <option value="pl">Poland</option>
                            <option value="pt">Portugal</option>
                            <option value="pr">Puerto Rico</option>
                            <option value="qa">Qatar</option>
                            <option value="kr">Republic Of Korea</option>
                            <option value="xk">Republic of Kosovo</option>
                            <option value="mk">Republic Of Macedonia</option>
                            <option value="md">Republic Of Moldova</option>
                            <option value="rs">Republic Of Serbia</option>
                            <option value="re">Reunion</option>
                            <option value="ro">Romania</option>
                            <option value="ru">Russian Federation</option>
                            <option value="rw">Rwanda</option>
                            <option value="kn">Saint Kitts And Nevis</option>
                            <option value="lc">Saint Lucia</option>
                            <option value="vc">Saint Vincent And The Grenadines</option>
                            <option value="ws">Samoa</option>
                            <option value="sm">San Marino</option>
                            <option value="st">Sao Tome And Principe</option>
                            <option value="sa">Saudi Arabia</option>
                            <option value="sn">Senegal</option>
                            <option value="sc">Seychelles</option>
                            <option value="sl">Sierra Leone</option>
                            <option value="sg">Singapore</option>
                            <option value="sk">Slovakia</option>
                            <option value="si">Slovenia</option>
                            <option value="sb">Solomon Islands</option>
                            <option value="so">Somalia</option>
                            <option value="za">South Africa</option>
                            <option value="gs">South Georgia And The South Sandwich Islands</option>
                            <option value="es">Spain</option>
                            <option value="lk">Sri Lanka</option>
                            <option value="sd">Sudan</option>
                            <option value="sr">Suriname</option>
                            <option value="sz">Swaziland</option>
                            <option value="se">Sweden</option>
                            <option value="ch">Switzerland</option>
                            <option value="sy">Syrian Arab Republic</option>
                            <option value="tw">Taiwan</option>
                            <option value="tj">Tajikistan</option>
                            <option value="th">Thailand</option>
                            <option value="cd">The Democratic Republic Of The Congo</option>
                            <option value="tl">Timor-Leste</option>
                            <option value="tg">Togo</option>
                            <option value="tk">Tokelau</option>
                            <option value="to">Tonga</option>
                            <option value="tt">Trinidad And Tobago</option>
                            <option value="tn">Tunisia</option>
                            <option value="tr">Turkey</option>
                            <option value="tm">Turkmenistan</option>
                            <option value="tv">Tuvalu</option>
                            <option value="ug">Uganda</option>
                            <option value="ua">Ukraine</option>
                            <option value="ae">United Arab Emirates</option>
                            <option value="gb">United Kingdom</option>
                            <option value="tz">United Republic Of Tanzania</option>
                            <option value="us">United States</option>
                            <option value="um">United States Minor Outlying Islands</option>
                            <option value="uy">Uruguay</option>
                            <option value="uz">Uzbekistan</option>
                            <option value="vu">Vanuatu</option>
                            <option value="ve">Venezuela</option>
                            <option value="vn">Viet Nam</option>
                            <option value="vg">Virgin Islands, British</option>
                            <option value="vi">Virgin Islands, U.S.</option>
                            <option value="wf">Wallis And Futuna</option>
                            <option value="ye">Yemen</option>
                            <option value="zm">Zambia</option>
                            <option value="zw">Zimbabwe</option>
                        </select>
                        <p class="tips">Tell us where you're from so we can provide better service for you.</p>
                    </div>

                         <div class="form-group">
                          <label for="about_user">Tell people who you are</label>
                <textarea id="about_user" class="form-control about_user"  cols='92' rows="4" placeholder="Write something about yourself.."></textarea>
                        </div>

                    <div class="active">
                       
                          <input class="btn btn-info" type="submit" value="Save Changes" />
                      </div>
                   
 </form>

</div>
</div>
    
      
 <!-------------------------    ------------------------------------>
</div>


<!-- ----------------------------------  delete popup------------------------------------------------------- -->

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
                          <form>
                    
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
   
          
<!-- --------------------------------------------------------------------------------------- -->

</main>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="main_content" Runat="Server">
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="User_profile_close" Runat="Server">
</asp:Content>

