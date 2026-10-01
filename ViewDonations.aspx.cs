using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MediCareConnect
{
    public partial class ViewDonations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDonations();
            }
        }

        void LoadDonations()
        {
            string conString = ConfigurationManager
                .ConnectionStrings["MediCareDB"]
                .ConnectionString;

            using (SqlConnection con = new SqlConnection(conString))
            {
                string query = "SELECT * FROM dbo.[Table]";

                SqlDataAdapter da = new SqlDataAdapter(query, con);

                DataTable dt = new DataTable();

                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}