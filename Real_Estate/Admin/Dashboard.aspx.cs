using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data; // Added for simple DataTable

namespace Real_Estate.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadInquiries();
            }
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            LoadInquiries();
        }

        private void LoadInquiries()
        {
            // Using a simple DataTable for mock data instead of complex objects
            DataTable dt = new DataTable();
            dt.Columns.Add("Id");
            dt.Columns.Add("DateSubmitted");
            dt.Columns.Add("Name");
            dt.Columns.Add("Email");
            dt.Columns.Add("Phone");
            dt.Columns.Add("Property");
            dt.Columns.Add("Status");

            dt.Rows.Add("1", "Aug 07, 2026", "Julian Vance", "julian@vance.com", "+1 (555) 019-2831", "Japan Shou-Sugi-Ban Zen Residence", "New");
            dt.Rows.Add("2", "Aug 06, 2026", "Lars Davidson", "lars.d@techfounder.net", "+44 7911 123456", "Greece The Aegean Cliffside Sanctuary", "Reviewed");
            dt.Rows.Add("3", "Aug 05, 2026", "Aria Kozlov", "aria@kozlovdesign.com", "+91 98765 43210", "USA Manhattan Sky Horizon Penthouse", "New");

            if (dt.Rows.Count > 0)
            {
                rptInquiries.DataSource = dt;
                rptInquiries.DataBind();
                emptyState.Visible = false;
            }
            else
            {
                rptInquiries.Visible = false;
                emptyState.Visible = true;
            }
        }
    }
}