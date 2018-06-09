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

public partial class post_table1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        DataTable dummy = new DataTable();
        dummy.Columns.Add("Id");
        dummy.Columns.Add("Name");
        dummy.Columns.Add("Url");
        int count = dlImages.RepeatColumns == 0 ? 1 : dlImages.RepeatColumns;
        for (int i = 0; i < count; i++)
        {
            dummy.Rows.Add();
        }
        dlImages.DataSource = dummy;
        dlImages.DataBind();


    }


    [WebMethod]
    public static string GetImages(int pageIndex)
    {
        return GetImagesData(pageIndex).GetXml();
    }

    public static DataSet GetImagesData(int pageIndex)
    {
        int pageSize = 4;
        string query = "[GetImagesPageWise]";
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