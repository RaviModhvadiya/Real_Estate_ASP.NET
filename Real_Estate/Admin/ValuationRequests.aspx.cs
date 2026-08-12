using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

namespace Real_Estate.Admin
{
    public partial class ValuationRequests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Your data binding will go here later
            }
        }

        // Add this missing method to fix the error
        protected void gvValuations_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditRow")
            {
                string id = e.CommandArgument.ToString();
                // Edit logic goes here
            }
            else if (e.CommandName == "DeleteRow")
            {
                string id = e.CommandArgument.ToString();
                // Delete logic goes here
            }
        }
    }
}