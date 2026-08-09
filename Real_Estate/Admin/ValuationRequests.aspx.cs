using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

namespace Real_Estate.Admin
{
    public partial class ValuationRequests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadValuations();
            }
        }

        private void LoadValuations()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("RequestDate");
            dt.Columns.Add("ClientName");
            dt.Columns.Add("PropertyType");
            dt.Columns.Add("Location");
            dt.Columns.Add("Goal");
            dt.Columns.Add("Status");

            dt.Rows.Add("Aug 08, 2026", "Elena Rostova", "Brutalist Concrete Villa", "Lake Como, Italy", "Off-Market Sale", "Pending Review");
            dt.Rows.Add("Aug 06, 2026", "Marcus Chen", "Triplex Penthouse", "Singapore", "Portfolio Assessment", "In Progress");

            rptValuations.DataSource = dt;
            rptValuations.DataBind();
        }

        protected void btnAssess_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Assess Request Button Clicked');</script>");
        }
    }
}