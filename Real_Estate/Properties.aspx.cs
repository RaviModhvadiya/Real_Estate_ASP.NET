using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Real_Estate
{
    public partial class Properties : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProperties();
            }
        }

        void BindProperties()
        {
            using (SqlConnection con = new SqlConnection(s))
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM Properties ORDER BY PropertyID DESC", con))
            using (SqlDataAdapter da = new SqlDataAdapter(cmd))
            {
                DataSet ds = new DataSet();
                con.Open();
                da.Fill(ds);
                con.Close();

                rptProperties.DataSource = ds;
                rptProperties.DataBind();
            }
        }
    }
}