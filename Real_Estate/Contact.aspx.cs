using System;
using System.Web.UI;

namespace Real_Estate
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                formResult.Style["display"] = "none";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Form mathi badhi details get karvani
            string name = contactName.Value;
            string email = contactEmail.Value;
            string phone = contactPhone.Value;
            string property = contactProperty.Value;
            string method = contactMethod.Value;
            string timeline = contactTimeline.Value;
            string message = contactMessage.Value;

            // Ekdam simple HTML vagar koi advance CSS na
            formResult.InnerHtml = $@"
                <h4>Inquiry Received Successfully</h4>
                <div><strong>Name:</strong> {name}</div>
                <div><strong>Email:</strong> {email}</div>
                <div><strong>Phone:</strong> {phone}</div>
                <div><strong>Property:</strong> {property}</div>
                <div><strong>Contact Method:</strong> {method}</div>
                <div><strong>Timeframe:</strong> {timeline}</div>
                <div><strong>Message:</strong> {message}</div>
            ";

            // Result div ne show karvu
            formResult.Style["display"] = "block";

            // Data submit thaya pachi form clear kari devu
            contactName.Value = "";
            contactEmail.Value = "";
            contactPhone.Value = "";
            contactMessage.Value = "";
        }
    }
}