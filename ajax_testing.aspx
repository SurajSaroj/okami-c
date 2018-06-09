<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ajax_testing.aspx.cs" Inherits="ajax_testing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script>

        $(document).ready(function () {

        $(".cat_Animals").click(function () {
            $.ajax({
                url: "Default2.aspx", success: function (result) {
                    $("#tptp1").html(result);
                }
            });
        });

});

</script>
</head>
<body>
    
    <div>
    <button class="cat_Animals" runat="server" onserverclick="cat_click">clik me to load </button>
    </div>

    <div id="tptp1">
    </div>
   
</body>
</html>
