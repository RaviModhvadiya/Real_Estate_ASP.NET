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
                lblError.Visible = false;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string email = txtEmail.Text;
                string password = txtPassword.Text;

                if (email == "admin@realestate.luxury" && password == "admin123")
                {
                    Session["AdminEmail"] = email;
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    lblError.Visible = true;
                }
            }
        }
    }
}