<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menu_testing.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    
    <link href="Content/bootstrap.css" rel="stylesheet" />

   
    <script src="Scripts/jquery-1.9.1.min.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
     <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />

    <script>

    var selectNavbar = $('#navbar');
        var selectNavbarHeader = $('.navbar-header');


var adjustable = function() {
    if (document.documentElement.clientWidth <= 767) {
        alert("hua hua hua");
    $('.adjustable-drop .hide').removeClass('hide');
  } else {
    var collection = [];
    var widthFree = selectNavbar.width() - selectNavbarHeader.outerWidth(true) - selectNavbar.find('.navbar-right').outerWidth(true);
    $('.adjustable-drop').find('> li').removeClass('hide').each(function() {
      if ( widthFree >= $(this).outerWidth(true) ) {
        widthFree -= $(this).outerWidth(true);
      } else {
        collection.push(this);
      }
    });
    $(collection).addClass('hide');
  }
};

$(window).resize(function() {
  adjustable(); 
});

        $(window).trigger('resize');




        
       

            $(document).ready(function () {

                
              //fa-check  fa-exclamation-circle 

                // show_warning 
                $("#snackbar_btn").click(function () {
                    $("#snackbar #snackbar_icon").addClass('fa-check ');
                    $("#snackbar_label").text('error login');
                    $("#snackbar").addClass('show_info');
                    $("#snackbar").fadeIn(100);

                    setTimeout(function () {

                        $("#snackbar").fadeOut("slow", function () {
                            $("#snackbar").removeClass("show_info");
                            $("#snackbar #snackbar_icon").removeClass('fa-check ');        
                        });   
                        }, 2000);   
                });
               
            });
        
        

        </script>
   <style>
#snackbar {
    display:none;
    visibility: hidden;
    min-width: 200px;
    margin-left: -125px;
    color: #fff;
    text-align: center;
    border-radius: 2px;
    padding: 16px;
    position: fixed;
    z-index: 1;
    left: 50%;
    bottom: 30px;
    font-size: 17px;
}

       #snackbar #snackbar_label {
               margin-bottom: 0px;
                font-weight: 100;
       }

#snackbar.show_info {

    background-color: #49d86e;
    visibility: visible;
}

#snackbar.show_warning {

    background-color: #e86d69!important;
    visibility: visible;
}
</style>
</head>

<body>
    
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
  <h3>Right Aligned Navbar</h3>
  <p>The .navbar-right class is used to right-align navigation bar buttons.</p>
</div>

    <!--  -------------------     type 2 menu                    ----- -->

    <div class="container">

  <!-- Static navbar -->
  <nav class="navbar navbar-default">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Project name</a>
    </div>
    
    <div id="navbar" class="navbar-collapse collapse">
      <ul class="nav navbar-nav adjustable-drop">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
        <li><a href="#">Additional-1</a></li>
        <li><a href="#">Additional-2</a></li>
        <li><a href="#">Additional-3</a></li>
        <li><a href="#">Additional-4</a></li>
        <li><a href="#">Additional-5</a></li>
          <li><a href="#">Additional-6</a></li>
        <li><a href="#">Additional-7</a></li>
        <li><a href="#">Additional-8</a></li>
        <li><a href="#">Additional-9</a></li>
        <li><a href="#">Additional-10</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="./">Default <span class="sr-only">(current)</span></a></li>
        <li><a href="../navbar-static-top/">Static top</a></li>
        <li><a href="../navbar-fixed-top/">Fixed top</a></li>
      </ul>
    </div><!--/.nav-collapse -->
  </nav>

  <!-- Main component for a primary marketing message or call to action -->
  
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <form class="navbar-form navbar-left">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
  </div>
</nav>

        <form class="navbar-form navbar-left">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


    <button id="snackbar_btn">Show Snackbar</button>

    <div id="snackbar"><i  id="snackbar_icon" style="font-size:30px;padding-right: 5px;" class="fa" aria-hidden="true"></i>
        <label id="snackbar_label">Some text some message..</label></div>

    <script>
       
</script>


    <a class="btn btn-info" onclick="toastr.info('Hi! I am info message.');">Info message</a>
<!--Warning message-->
<a class="btn btn-warning" onclick="toastr.warning('Hi! I am warning message.');">Warning message</a>
<!--Success message-->
<a class="btn btn-success" onclick="toastr.success('Hi! I am success message.');">Success message</a>
<!--Error message-->
<a class="btn btn-danger" onclick="toastr.error('Hi! I am error message.');">Error message</a>
</body>
</html>
