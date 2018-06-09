using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ajax_testing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void cat_click(object sender, EventArgs e)
    {
      
        Response.Write("cat_Animals <br/>");

        Class1.viewinfo = "View_Animals";
        Class1.procedureinfo = "[Procedure_Animals]";


    }
}