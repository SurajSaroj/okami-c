using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.MasterPage
{


    protected void cat_Fresh(object sender, EventArgs e)
    {
        //Session["Procedure_info"] = "[Procedure_Fresh]";
        //Session["View_info"] = "View_Fresh";
        Response.Write("cat_Fresh");
Class1.procedureinfo = "[Procedure_Fresh]";
        //     Class1.viewinfo = "View_Fresh";

        ((UpdatePanel)main_content.FindControl("UpdatePanel1")).Update();

    }


    protected void cat_Trending(object sender, EventArgs e)
    {
        //Session["Procedure_info"] = "[Procedure_Trending]";
        //Session["View_info"] = "View_Trending";
        Response.Write("cat_Trending <br/>");
Class1.procedureinfo= "[Procedure_Trending]";
        //    Class1.viewinfo = "View_Trending";

        ((UpdatePanel)main_content.FindControl("UpdatePanel1")).Update();


    }
    

    protected void cat_Video(object sender, EventArgs e)
    {
        //Session["Procedure_info"] = "[Procedure_Video]";
        //Session["View_info"] = "View_Video";

        Response.Write("cat_Video <br/>");
 Class1.procedureinfo = "[Procedure_Video]";
        //   Class1.viewinfo = "View_Video";
        ((UpdatePanel)main_content.FindControl("UpdatePanel1")).Update();

    }


    protected void cat_Funny(object sender, EventArgs e)
    {
        //Session["Procedure_info"] = "[Procedure_Funny]";
        //Session["View_info"] = "View_Funny";
   Class1.procedureinfo = "[Procedure_Funny]";
        //   Class1.viewinfo = "View_Funny";
        ((UpdatePanel)main_content.FindControl("UpdatePanel1")).Update();
    }

    protected void cat_Animals(object sender, EventArgs e)
    {
        //Session["Procedure_info"] = "[Procedure_Animals]";
        //Session["View_info"] = "View_Animals";

        Response.Write("cat_Animals <br/>");
  Class1.procedureinfo = "[Procedure_Animals]";
        //   Class1.viewinfo = "View_Animals";

        ((UpdatePanel)main_content.FindControl("UpdatePanel1")).Update();
    }


    protected void cat_Sports(object sender, EventArgs e)
    {
        // Session["Procedure_info"] = "[Procedure_Sports]";
        //Session["View_info"] = "View_Sports";

        Response.Write("cat_Sports <br/>");
 Class1.procedureinfo = "[Procedure_Sports]";
        //      Class1.viewinfo = "View_Sports";
        ((UpdatePanel)main_content.FindControl("UpdatePanel1")).Update();
    }


    protected void cat_Food(object sender, EventArgs e)
    {

        //  Session["Procedure_info"] = "[Procedure_Food]";
        //Session["View_info"] = "View_Food";

        Response.Write("cat_Food <br/>");
 Class1.procedureinfo = "[Procedure_Food]";
        //  Class1.viewinfo = "View_Food";
        ((UpdatePanel)main_content.FindControl("UpdatePanel1")).Update();
    }

    protected void cat_Gif(object sender, EventArgs e)
    {
        //Session["Procedure_info"] = "[Procedure_Gif]";
        //Session["View_info"] = "View_Gif";

        Response.Write("cat_Gif <br/>");
 Class1.procedureinfo = "[Procedure_Gif]";
    //    Class1.viewinfo = "View_Gif";
       
    }

    protected void cat_Relationship(object sender, EventArgs e)
    {
        // Session["Procedure_info"] = "[Procedure_Relationship]";
        //Session["View_info"] = "View_Relationship";
  Class1.procedureinfo = "[Procedure_Relationship]";
        Class1.viewinfo = "View_Relationship";
      
    }

    protected void cat_Gaming(object sender, EventArgs e)
    {
       //Session["Procedure_info"] = "[Procedure_Gaming]";
       // Session["View_info"] = "View_Gaming";
Class1.procedureinfo = "[Procedure_Gaming]";
    //    Class1.viewinfo = "View_Gaming";
        
    }

    protected void cat_Programmers(object sender, EventArgs e)
    {
        //Session["Procedure_info"] = "[Procedure_Programmers]";
        //Session["View_info"] = "View_Programmers";
Class1.procedureinfo ="[Procedure_Programmers]" ;
     //   Class1.viewinfo = "View_Programmers";
        
    }


    protected void cat_Science(object sender, EventArgs e)
    {
        //Session["Procedure_info"] = "[Procedure_Science]";
        //Session["View_info"] = "View_Science";
Class1.procedureinfo = "[Procedure_Science]";
        Class1.viewinfo = "View_Science";
        
    }

    protected void cat_Comic(object sender, EventArgs e)
    {
        //Session["Procedure_info"] = "[Procedure_Comic]";
        //Session["View_info"] = "View_Comic";
 Class1.procedureinfo = "[Procedure_Comic]";
     //   Class1.viewinfo = "View_Comic";
       
      
    }

    protected void cat_School(object sender, EventArgs e)
    {
        //Session["Procedure_info"] = "[Procedure_School]";
        //Session["View_info"] = "View_School";
 Class1.procedureinfo = "[Procedure_School]";
      //  Class1.viewinfo = "View_School";
       
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        ScriptManager1.RegisterAsyncPostBackControl(lundbc);
        ScriptManager1.RegisterAsyncPostBackControl(lundbc1);
      
    }

    protected void lundbc_Click(object sender, EventArgs e)
    {
        Response.Write("cat_Fresh");
        Class1.procedureinfo = "[Procedure_Fresh]";
        //     Class1.viewinfo = "View_Fresh";

        ((UpdatePanel)main_content.FindControl("UpdatePanel1")).Update();
    }



    protected void lundbc1_ServerClick(object sender, EventArgs e)
    {
        Class1.procedureinfo = "[Procedure_Science]";
        ((UpdatePanel)main_content.FindControl("UpdatePanel1")).Update();
    }
}
