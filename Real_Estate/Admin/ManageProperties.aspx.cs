using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            // Mirroring the array from your frontend script.js
            var properties = new List<PropertyModel>
            {
                new PropertyModel { Id = 1, Title = "The Aegean Cliffside Sanctuary", Type = "villa", Price = "$5,400,000", Location = "Santorini, Greece" },
                new PropertyModel { Id = 2, Title = "Kyoto Bamboo Forest Estate", Type = "villa", Price = "$4,850,000", Location = "Kyoto, Japan" },
                new PropertyModel { Id = 3, Title = "Amalfi Coastal Pavilion", Type = "villa", Price = "$6,200,000", Location = "Positano, Italy" },
                new PropertyModel { Id = 6, Title = "Manhattan Sky Horizon Penthouse", Type = "penthouse", Price = "$8,900,000", Location = "New York, USA" },
                new PropertyModel { Id = 7, Title = "The Eiffel Minimalist Sky Deck", Type = "penthouse", Price = "$6,500,000", Location = "Paris, France" },
                new PropertyModel { Id = 11, Title = "Shou-Sugi-Ban Zen Residence", Type = "townhouse", Price = "$3,800,000", Location = "Tokyo, Japan" },
                new PropertyModel { Id = 12, Title = "Copenhagen Nordic Timber House", Type = "townhouse", Price = "$2,950,000", Location = "Copenhagen, Denmark" }
            };

            rptProperties.DataSource = properties;
            rptProperties.DataBind();
        }

        public class PropertyModel
        {
            public int Id { get; set; }
            public string Title { get; set; }
            public string Type { get; set; }
            public string Price { get; set; }
            public string Location { get; set; }
        }
    }
}