

$(document).ready(function () {


// --------------on click of post report button show report popup -------------------------------

    $(".content_post .content_likes_comm_btn .post_flag_btn button").click(function () {

       // $("#back_user_report").css("display", "block");
        $("#back_user_report").fadeIn(500, function () { $("#back_user_report").css("display", "block"); });
    });


//----------------------------- creating div for report info and storing in variable--------------------
    var report_category;

var $spam = "<div class='report_info'><p>Report as spam?</p><p class=''>We remove:</p><p class='remove_mar' >&#9679; Clickbait</p > <p class='remove_mar'>&#9679;  Advertising</p> <p class='remove_mar'>&#9679; Scam</p> <p>&#9679; Script bot</p><p>If you report someone's post, OKAMI doesn't tell them who reported it.<br /></p> </div > ";
var $pornography = "<div class='report_info'><p>Report as pornography?</p><p class=''>We remove:</p><p class='remove_mar' >&#9679; Photos or videos of sexual intercourse</p > <p class=''>&#9679;  Posts showing sexual intercourse, genitals or close-ups of &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fully-nude buttocks</p><p>If you report someone's post, OKAMI doesn't tell them who reported it.<br /></p> </div > ";
var $hatred = "<div class='report_info'><p>Report as hatred and bullying?</p><p class='' > We remove:</p > <p class='remove_mar'>&#9679;Posts that contain credible threat</p><p class='remove_mar'>&#9679; Posts that targets people to degrade or shame them</p> <p class='remove_mar' >&#9679; Personal information shared to blackmail or harass</p ><p class=''>&#9679;Posts or threats to post nude photo of you</p> <p>If you report someone's post, OKAMI doesn't tell them who reported it.<br /></p> </div > ";
var $self = "<div class='report_info'><p>Report as self injury?</p><p class='' > We remove posts encouraging or promoting self injury, which includes suicide, cutting and eating disorders. We may also remove posts identifying victims of self injury if the post attacks or makes fun of them.</p> <p>If you report someone's post, OKAMI doesn't tell them who reported it.<br /></p> </div > ";
var $violent = "<div class='report_info'><p>Report as violent, gory and harmful content?</p><p class=''>We remove:</p><p class='remove_mar' >&#9679; Photos or videos of extreme graphic violence</p > <p class='remove_mar' >&#9679; Posts that encourage violence or attacks anyone based on &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;their religious, ethnic or sexual background</p > <p class='' >&#9679; Specific threats of physical harm, theft, vandalism or financial &nbsp;&nbsp;&nbsp; harm.</p > <p>If you report someone's post, OKAMI doesn't tell them who reported it.<br /></p></div > ";
var $child = "<div class='report_info'><p>Report as child porn?</p><p class=''>We remove:</p><p class='remove_mar' >&#9679; Photos or videos of sexual intercourse with children</p ><p class=''>&#9679;  Posts of nude or partially nude children.</p><p>If you report someone's post, OKAMI doesn't tell them who reported it.<br /></p></div > ";
var $illegal = "<div class='report_info'><p>Report as illegal activities?</p><p class=''>We remove:</p><p class='remove_mar' >&#9679; Posts promoting illegal activities, e.g. the use of hard drugs</p >  <p class=''>&#9679; Posts intended to sell or distribute drugs.</p><p>If you report someone's post, OKAMI doesn't tell them who reported it.<br /></p> </div >";
var $deceptive = "<div class='report_info'><p>Report as deceptive content?</p><p class=''>We remove:</p><p class='remove_mar' >&#9679; Purposefully fake or deceitful news</p ><p class=''>&#9679; Hoax disproved by a reputable source</p><p>If you report someone's post, OKAMI doesn't tell them who reported it.<br /></p></div >";
var $copyright = "<div class='report_info'><p>We remove posts that include copyright or trademark infringement. If someone is using your photo without your permission or impersonating you, we may remove the content and disable the account.</p><p>To report a claim of copyright infringement, please tap continue and fill out the form.<br /></p></div > ";
var $like = "<div class='report_info'><p>What can I do if I see something I don't like on OKAMI?</p><p class='remove_mar' >&#9679; Report it if it doesn't follow 9GAG rules.</p >  <p class=''>&#9679; Downvote it to decide which posts/comments can go viral.</p><p>If you report someone's post, OKAMI doesn't tell them who reported it.<br /></p></div >";



$("#back_user_report .user_report_next").click(function () {

    //------------------------------------------------------------------------------------------------------------------
    var $index = 1;
    var $counter = 1;
    var $display;

    $("input[name='report']").each(function (index, element) {
        //   console.log(element.checked);
        if (element.checked) {
            $index = $counter;
        } else { $counter++; }

    });

    console.log($index);
    switch ($index) {
        case 1:
            $display = $spam;
            break;
        case 2:
            $display = $pornography;
            break;
        case 3:
            $display = $hatred;
            break;
        case 4:
            $display = $self;
            break;
        case 5:
            $display = $violent;
            break;
        case 6:
            $display = $child;
            break;
        case 7:
            $display = $illegal;
            break;
        case 8:
            $display = $deceptive;
            break;
        case 9:
            $display = $copyright;
            break;
        case 10:
            $display = $like;
            break;
    }

    //-------------------------------------------------------------------------------------------------------
    $("#back_user_report_info .CategorySelection_child").append($display);

   // $("#back_user_report_info").css("display", "block");
    
        $("#back_user_report").fadeOut(200, function () { $("#back_user_report").css("display", "none"); });
    
        setTimeout(function () {
             $("#back_user_report_info").fadeIn(500, function () { $("#back_user_report_info").css("display", "block"); });
        }, 40)
});



$("#back_user_report .user_report_back").click(function () {

   // $("#back_user_report").css("display", "none");
    $("#back_user_report").fadeOut(200, function () { $("#back_user_report").css("display", "none"); });
});




//--------------------------------- user report info -----------------------------------------------------------------
    // #back_user_report_info .user_report_info_back

$("#back_user_report_info .user_report_info_back").click(function () {

    $("#back_user_report_info").fadeOut(200, function () { $("#back_user_report_info").css("display", "none"); });
        setTimeout(function () {
            $("#back_user_report").fadeIn(500, function () { $("#back_user_report").css("display", "block"); });
        }, 40);
    });





    $("#back_user_report_info .user_report_info_post").click(function () {

       // alert(" You have reported for " + $("input[name='report']:checked").val());
         report_category = $("input[name='report']:checked").val();
        $("#snackbar #snackbar_icon").addClass('fa-check');
        $("#snackbar_label").text(" You have reported for " + report_category);
        $("#snackbar").addClass('show_info');
        $("#snackbar").fadeIn(100);
        setTimeout(function () {

            $("#snackbar").fadeOut("slow", function () {
                $("#snackbar").removeClass("show_info");
                $("#snackbar #snackbar_icon").removeClass('fa-check');
            });
        }, 2000); 

        $("#back_user_report_info").fadeOut(200, function () { $("#back_user_report_info").css("display", "none"); });
});



    //----------- for both close button

    $("#back_user_report_info .close_ #Btn , #back_user_report .close_ #Btn ").click(function () {
        $display = "";
        $("#back_user_report_info").fadeOut(200, function () { $("#back_user_report_info").css("display", "none"); });
        $("#back_user_report").fadeOut(200, function () { $("#back_user_report").css("display", "none"); });
        $("#back_user_report_info .CategorySelection_child .report_info").remove();

    });



});
