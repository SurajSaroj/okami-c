using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Comment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Request.QueryString["c_ID"]))
        {
            try
            {
                string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT Post_Heading, Post_Content, Post_Date, Post_Category, Post_Type, Post_Tags, Post_Like_Count ,Post_Comments_Count,Post_Report_Count FROM Post_Data WHERE C_ID=(@Id)"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Parameters.AddWithValue("@Id", Request.QueryString["c_ID"]);
                            cmd.Connection = con;
                            da.SelectCommand = cmd;
                            DataRow dr;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                dr = dt.Rows[0];
                                if (Convert.ToString(dr[4]) == "Video")
                                {
                                    commentvideo.Visible = true;
                                    commentvideo.Src = Convert.ToString(dr[1]);
                                    commentimage.Visible = false;
                                }
                                else {
                                    commentvideo.Visible = false;
                                    commentimage.Src = Convert.ToString(dr[1]);
                                    commentimage.Visible = true;
                                }
                                Label1.InnerText = Convert.ToString(dr[0]);
                                likecount.InnerText = Convert.ToString(dr[6]);
                                commentcount.InnerText = Convert.ToString(dr[7]);
                                flagcount.InnerText = Convert.ToString(dr[8]);

                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
