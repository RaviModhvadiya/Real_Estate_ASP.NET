using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate.Admin
{
    public partial class Settings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                msgProfile.Visible = false;
                msgSecurity.Visible = false;
            }
        }

        protected void btnSaveProfile_Click(object sender, EventArgs e)
        {
            // Simulate saving data to a database
            msgProfile.Visible = true;
            msgSecurity.Visible = false;
        }

        protected void btnSaveSecurity_Click(object sender, EventArgs e)
        {
            // Simulate saving security preferences to a database
            msgSecurity.Visible = true;
            msgProfile.Visible = false;
        }
    }
}