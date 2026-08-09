using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

namespace Real_Estate.Admin
{
    public partial class ClientDirectory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadClients();
            }
        }

        private void LoadClients()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Id");
            dt.Columns.Add("Name");
            dt.Columns.Add("Email");
            dt.Columns.Add("Phone");
            dt.Columns.Add("Tier");
            dt.Columns.Add("LastActive");

            dt.Rows.Add("101", "Julian Vance", "julian@vance.com", "+1 (555) 019-2831", "Premium", "Today");
            dt.Rows.Add("102", "Lars Davidson", "lars.d@techfounder.net", "+44 7911 123456", "Black Card", "Yesterday");
            dt.Rows.Add("103", "Rachel Bennett", "rachel@invest.com", "+1 (800) 888-9020", "Standard", "Aug 01, 2026");

            rptClients.DataSource = dt;
            rptClients.DataBind();
        }

        protected void btnAddClient_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Add Client Button Clicked');</script>");
        }

        protected void btnViewProfile_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('View Profile Button Clicked');</script>");
        }
    }
}