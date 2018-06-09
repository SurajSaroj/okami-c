using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index_master_test : System.Web.UI.Page
{ 

    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dummy = new DataTable();
        dummy.Columns.Add("c_ID");
        dummy.Columns.Add("User_ID");
        dummy.Columns.Add("Post_Heading");
        dummy.Columns.Add("Post_Content");
        dummy.Columns.Add("Post_Date");
        dummy.Columns.Add("Post_Category");
        dummy.Columns.Add("Post_Type");
        dummy.Columns.Add("Post_Tags");
        dummy.Columns.Add("Post_Like_Count");
        dummy.Columns.Add("Post_Comments_Count");
        dummy.Columns.Add("Post_Report_Count");
        int count = dlImages.RepeatColumns == 0 ? 1 : dlImages.RepeatColumns;
        for (int i = 0; i < count; i++)
        {
            dummy.Rows.Add();
        }
        dlImages.DataSource = dummy;
        dlImages.DataBind();


    }


    [WebMethod(EnableSession = true)]
    public static string GetImages(int pageIndex)
    {



        return GetImagesData(pageIndex).GetXml();
    }

    public static DataSet GetImagesData(int pageIndex)
    {


        int pageSize = 4;

        string query = Class1.procedureinfo;

        SqlCommand cmd = new SqlCommand(query);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
        cmd.Parameters.AddWithValue("@PageSize", pageSize);
        cmd.Parameters.Add("@PageCount", SqlDbType.Int, 4).Direction = ParameterDirection.Output;
        return GetData(cmd);
    }

    private static DataSet GetData(SqlCommand cmd)
    {

        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnString))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataSet ds = new DataSet())
                {
                    sda.Fill(ds, "Images");
                    DataTable dt = new DataTable("PageCount");
                    dt.Columns.Add("PageCount");
                    dt.Rows.Add();
                    dt.Rows[0][0] = cmd.Parameters["@PageCount"].Value;
                    ds.Tables.Add(dt);
                    return ds;
                }
            }
        }


    }

}