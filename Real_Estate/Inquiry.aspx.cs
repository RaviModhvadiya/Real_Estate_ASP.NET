using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate
{
    public partial class Inquiry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // 1. Handle User Login State
                if (Session["ClientName"] != null)
                {
                    txtName.Text = Session["ClientName"].ToString();
                    txtName.ReadOnly = true;
                    txtName.CssClass = "form-control form-control-readonly";
                }
                else
                {
                    txtName.ReadOnly = false;
                    txtName.CssClass = "form-control";
                }

                // 2. Pre-fill the Property context from the URL
                string targetProperty = Request.QueryString["Property"];
                if (!string.IsNullOrEmpty(targetProperty))
                {
                    txtMessage.Text = $"I am interested in acquiring details for: {targetProperty}.\n\nPlease contact me at your earliest convenience.";
                }
            }
        }
    }
}