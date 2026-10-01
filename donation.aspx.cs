using System;

namespace MediCareConnect
{
    public partial class Donation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Text = "";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtAmount.Text.Trim() == "")
            {
                lblMessage.Text = "Please enter donation amount.";
            }
            else
            {
                lblMessage.Text = "Donation Submitted Successfully!";
            }
        }
    }
}