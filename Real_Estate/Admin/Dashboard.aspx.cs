using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            // Creating Mock Data to simulate what comes from Contact.aspx
            var inquiries = new List<Inquiry>
            {
                new Inquiry { Id = 1, DateSubmitted = "Aug 07, 2026", Name = "Julian Vance", Email = "julian@vance.com", Phone = "+1 (555) 019-2831", Property = "Japan   Shou-Sugi-Ban Zen Residence", Status = "New" },
                new Inquiry { Id = 2, DateSubmitted = "Aug 06, 2026", Name = "Lars Davidson", Email = "lars.d@techfounder.net", Phone = "+44 7911 123456", Property = "Greece   The Aegean Cliffside Sanctuary", Status = "Reviewed" },
                new Inquiry { Id = 3, DateSubmitted = "Aug 05, 2026", Name = "Aria Kozlov", Email = "aria@kozlovdesign.com", Phone = "+91 98765 43210", Property = "USA   Manhattan Sky Horizon Penthouse", Status = "New" },
                new Inquiry { Id = 4, DateSubmitted = "Aug 03, 2026", Name = "Rachel Bennett", Email = "rachel.portfolio@invest.com", Phone = "+1 (800) 888-9020", Property = "General Private Inquiry", Status = "Reviewed" }
            };

            if (inquiries.Count > 0)
            {
                rptInquiries.DataSource = inquiries;
                rptInquiries.DataBind();
                emptyState.Visible = false;
            }
            else
            {
                rptInquiries.Visible = false;
                emptyState.Visible = true;
            }
        }

        // Helper class to hold our mock data
        public class Inquiry
        {
            public int Id { get; set; }
            public string DateSubmitted { get; set; }
            public string Name { get; set; }
            public string Email { get; set; }
            public string Phone { get; set; }
            public string Property { get; set; }
            public string Status { get; set; }
        }
    }
}