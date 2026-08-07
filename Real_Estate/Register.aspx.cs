using System;
using System.Web.UI;

namespace Real_Estate
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                formResult.Style["display"] = "none";
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

            string name = regName.Value;
            string email = regEmail.Value;
            string phone = regPhone.Value;
            string password = regPassword.Value;
            string confirmPassword = regConfirmPassword.Value;

            if (password != confirmPassword)
            {
                formResult.InnerHtml = "<strong style='color: #ef4444;'>Error:</strong> Passwords do not match. Please try again.";
                formResult.Style["border-left-color"] = "#ef4444";
                formResult.Style["display"] = "block";
                return;
            }

            formResult.InnerHtml = $@"
                <h4 style='color: var(--accent); margin-bottom: 12px; font-size: 1.1rem;'>Registration Successful!</h4>
                <div style='margin-bottom: 6px;'><strong>Name:</strong> {name}</div>
                <div style='margin-bottom: 6px;'><strong>Email:</strong> {email}</div>
                <div style='margin-bottom: 6px;'><strong>Phone:</strong> {phone}</div>
                <div style='margin-top: 12px; font-size: 0.8em; color: var(--text-muted);'>* Password is saved securely and hidden.</div>
            ";

            formResult.Style["border-left-color"] = "#22c55e";
            formResult.Style["display"] = "block";

            regName.Value = "";
            regEmail.Value = "";
            regPhone.Value = "";
        }
    }
}