using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

namespace Real_Estate.Admin
{
    public partial class ManageProperties : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProperties();
            }
        }

        private void LoadProperties()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Id");
            dt.Columns.Add("Title");
            dt.Columns.Add("Type");
            dt.Columns.Add("Price");
            dt.Columns.Add("Location");

            dt.Rows.Add("1", "The Aegean Cliffside Sanctuary", "villa", "$5,400,000", "Santorini, Greece");
            dt.Rows.Add("2", "Kyoto Bamboo Forest Estate", "villa", "$4,850,000", "Kyoto, Japan");
            dt.Rows.Add("3", "Amalfi Coastal Pavilion", "villa", "$6,200,000", "Positano, Italy");
            dt.Rows.Add("6", "Manhattan Sky Horizon Penthouse", "penthouse", "$8,900,000", "New York, USA");

            rptProperties.DataSource = dt;
            rptProperties.DataBind();
        }

        protected void btnAddResidence_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Add Property Button Clicked');</script>");
        }
    }
}