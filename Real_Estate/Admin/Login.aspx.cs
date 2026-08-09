using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                divError.Style["display"] = "none";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Value;
            string password = txtPassword.Value;

            // Simple mock authentication (Replace with Database logic later)
            if (email == "admin@realestate.luxury" && password == "admin123")
            {
                // In a real app, you would set a Session or Authentication Cookie here
                // Session["AgentLoggedIn"] = true;

                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                divError.Style["display"] = "block";
            }
        }
    }
}