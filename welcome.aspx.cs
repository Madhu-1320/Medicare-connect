using System;

namespace MediCareConnect
{
    public partial class welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void btnDonate_Click(object sender, EventArgs e)
        {
            Response.Redirect("Donation.aspx");
        }

        protected void btnViewDonations_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewDonations.aspx");
        }
    }
}