using System;

namespace Real_Estate
{
    // Notice the inheritance: ": System.Web.UI.Page" is required here
    public partial class LoginRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Simple logic here
            Session["ClientID"] = "999";
            Response.Redirect("Default.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Simple logic here
        }
    }
}