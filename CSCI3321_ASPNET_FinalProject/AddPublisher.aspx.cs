using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace CSCI3321_ASPNET_FinalProject
{
    public partial class AddPublisher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnAddPublisher_Click(object sender, EventArgs e)
        {
            if (txtPubName.Text.Trim() != "" && txtPubCountry.Text.Trim() != "")
            {
                lblErrorMessage.Visible = false;
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "INSERT INTO Publishers VALUES ('" + txtPubName.Text + "', '" +
                    txtPubAddress.Text + "', '" + txtPubCity.Text + "', '" + txtPubZip.Text + "', '" +
                    txtPubCountry.Text + "', '" + txtPubPhone.Text + "')";
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                txtPubName.Text = "";
                txtPubAddress.Text = "";
                txtPubCity.Text = "";
                txtPubZip.Text = "";
                txtPubCountry.Text = "";
                txtPubPhone.Text = "";
            }
            else
            {
                lblErrorMessage.Visible = true;
            }
        }
    }
}