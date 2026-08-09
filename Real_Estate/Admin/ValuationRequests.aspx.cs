using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            var valuations = new List<ValuationModel>
            {
                new ValuationModel { RequestDate = "Aug 08, 2026", ClientName = "Elena Rostova", PropertyType = "Brutalist Concrete Villa", Location = "Lake Como, Italy", Goal = "Off-Market Sale", Status = "Pending Review" },
                new ValuationModel { RequestDate = "Aug 06, 2026", ClientName = "Marcus Chen", PropertyType = "Triplex Penthouse", Location = "Singapore", Goal = "Portfolio Assessment", Status = "In Progress" }
            };

            rptValuations.DataSource = valuations;
            rptValuations.DataBind();
        }

        public class ValuationModel
        {
            public string RequestDate { get; set; }
            public string ClientName { get; set; }
            public string PropertyType { get; set; }
            public string Location { get; set; }
            public string Goal { get; set; }
            public string Status { get; set; }
        }
    }
}