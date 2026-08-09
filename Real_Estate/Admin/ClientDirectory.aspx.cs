using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate.Admin
{
    public partial class ClientDirectory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadClients();
            }
        }

        private void LoadClients()
        {
            var clients = new List<ClientModel>
            {
                new ClientModel { Id = 101, Name = "Julian Vance", Email = "julian@vance.com", Phone = "+1 (555) 019-2831", Tier = "Premium", LastActive = "Today" },
                new ClientModel { Id = 102, Name = "Lars Davidson", Email = "lars.d@techfounder.net", Phone = "+44 7911 123456", Tier = "Black Card", LastActive = "Yesterday" },
                new ClientModel { Id = 103, Name = "Aria Kozlov", Email = "aria@kozlovdesign.com", Phone = "+91 98765 43210", Tier = "Standard", LastActive = "Aug 05, 2026" },
                new ClientModel { Id = 104, Name = "Rachel Bennett", Email = "rachel.portfolio@invest.com", Phone = "+1 (800) 888-9020", Tier = "Black Card", LastActive = "Aug 01, 2026" }
            };

            rptClients.DataSource = clients;
            rptClients.DataBind();
        }

        public class ClientModel
        {
            public int Id { get; set; }
            public string Name { get; set; }
            public string Email { get; set; }
            public string Phone { get; set; }
            public string Tier { get; set; }
            public string LastActive { get; set; }
        }
    }
}