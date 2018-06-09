using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index_testing : System.Web.UI.Page
{

    //[WebMethod(EnableSession = true)]
    //protected void cat_Freshh(object sender, EventArgs e)
    //{
    //    //Session["Procedure_info"] = "[Procedure_Fresh]";
    //    //Session["View_info"] = "View_Fresh";
        
    //    Class1.procedureinfo = "[Procedure_Fresh]";


    //}

    [WebMethod]
    public  static void cat_Fresh(string ProcName)
    {
        //Session["Procedure_info"] = "[Procedure_Fresh]";
        //Session["View_info"] = "View_Fresh";
        if (int.Parse(ProcName) == 1)
        {
          Class1.procedureinfo = "[Procedure_Fresh]";
        }
        else if (int.Parse(ProcName) == 2)
        {
            Class1.procedureinfo = "[Procedure_Trending]";
        }
        else if (int.Parse(ProcName) == 3)
        {
            Class1.procedureinfo = "[Procedure_Video]";
        }
        else if (int.Parse(ProcName) == 4)
        {
            Class1.procedureinfo = "[Procedure_Funny]";
        }
        else if (int.Parse(ProcName) == 5)
        {
            Class1.procedureinfo = "[Procedure_Animals]";
        }
        else if (int.Parse(ProcName) == 6)
        {
            Class1.procedureinfo = "[Procedure_Sports]";
        }
        else if (int.Parse(ProcName) == 7)
        {
            Class1.procedureinfo = "[Procedure_Food]";
        }
        else if (int.Parse(ProcName) == 8)
        {
            Class1.procedureinfo = "[Procedure_Gif]";
        }
        else if (int.Parse(ProcName) == 9)
        {
            Class1.procedureinfo = "[Procedure_Relationship]";
        }
        else if (int.Parse(ProcName) == 10)
        {
            Class1.procedureinfo = "[Procedure_Gaming]";
        }
        else if (int.Parse(ProcName) == 11)
        {
            Class1.procedureinfo = "[Procedure_Programmers]";
        }
        else if (int.Parse(ProcName) == 12)
        {
            Class1.procedureinfo = "[Procedure_Science]";
        }
        else if (int.Parse(ProcName) == 13)
        {
            Class1.procedureinfo = "[Procedure_Comic]";
        }
        else if (int.Parse(ProcName) == 14)
        {
            Class1.procedureinfo = "[Procedure_School]";
        }

    }

    //[WebMethod]
    //public static void cat_Trending()
    //{
    //  //  Response.Write("cat_Trending <br/>");
    //    Class1.procedureinfo = "[Procedure_Trending]";
    //}

    //[WebMethod]
    //public static void cat_Video()
    //{       
    //    Class1.procedureinfo = "[Procedure_Video]";
    // //   ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
    //}

    //[WebMethod]
    //public static void cat_Funny()
    //{

    //    Class1.procedureinfo = "[Procedure_Funny]";
    //}

    //[WebMethod]
    //public static  void cat_Animals()
    //{
    //    //Session["Procedure_info"] = "[Procedure_Animals]";
    //    //Session["View_info"] = "View_Animals";
    //    Class1.procedureinfo = "[Procedure_Animals]";

    //}

    //[WebMethod]
    //public static void cat_Sports()
    //{
    //    // Session["Procedure_info"] = "[Procedure_Sports]";
    //    //Session["View_info"] = "View_Sports";
    //    Class1.procedureinfo = "[Procedure_Sports]";
    //}

    //[WebMethod]
    //public static void cat_Food()
    //{

    //    Class1.procedureinfo = "[Procedure_Food]";
    //}

    //[WebMethod]
    //public static void cat_Gif()
    //{
    //    Class1.procedureinfo = "[Procedure_Gif]";
    //}

    //[WebMethod]
    //public static void cat_Relationship()
    //{

    //    Class1.procedureinfo = "[Procedure_Relationship]";
    //}

    //[WebMethod]
    //public static void cat_Gaming()
    //{

    //    Class1.procedureinfo = "[Procedure_Gaming]";
    //}

    //[WebMethod]
    //public static void cat_Programmers()
    //{
    //    Class1.procedureinfo = "[Procedure_Programmers]";
    //}

    //[WebMethod]
    //public static void cat_Science()
    //{
    //    Class1.procedureinfo = "[Procedure_Science]";
    //}

    //[WebMethod]
    //public static void cat_Comic()
    //{
    //    Class1.procedureinfo = "[Procedure_Comic]";

    //}

    //[WebMethod]
    //public static void cat_School()
    //{
    //    Class1.procedureinfo = "[Procedure_School]";
    //}


}
