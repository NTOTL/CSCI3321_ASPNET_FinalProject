using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSCI3321_ASPNET_FinalProject
{
    public partial class AddPublishers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnPublisher_Click(object sender, EventArgs e)
        {
            //Create the database connection
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            //Create the command and query
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "INSERT INTO Publishers VALUES ('" + txtName.Text + "', '" + txtAddress.Text + "', '" +
                    txtCity.Text + "', '" + txtPost.Text + "', '" + txtCountry.Text + "', '" + txtPhone.Text + "')";

            //Open connection
            conn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
                txtName.Text = "";
                txtAddress.Text = "";
                txtCity.Text = "";
                txtPost.Text = "";
                txtCountry.Text = "";
                txtPhone.Text = "";
                lblComplete.Text = "The Publisher has been added to the database.";
            }
            conn.Close();
        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {
            lblComplete.Text = "";
        }

    }
}
