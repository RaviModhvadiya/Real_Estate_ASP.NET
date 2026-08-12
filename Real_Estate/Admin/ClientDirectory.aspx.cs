using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

namespace Real_Estate.Admin
{
    public partial class ClientDirectory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Your data binding will go here later
            }
        }

        // Add this missing method to fix the error
        protected void gvClients_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditRow")
            {
                string clientId = e.CommandArgument.ToString();
                // Edit logic goes here
            }
            else if (e.CommandName == "DeleteRow")
            {
                string clientId = e.CommandArgument.ToString();
                // Delete logic goes here
            }
        }
    }
}