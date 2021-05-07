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
    public partial class AddAuthors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnAddAuthor_Click(object sender, EventArgs e)
        {
            if (txtAuthorFirst.Text.Trim() != "" && txtAuthorLast.Text.Trim() != "")
            {
                lblErrorMessage.Visible = false;
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "INSERT INTO Authors VALUES ('" + txtAuthorLast.Text + "', '" +
                    txtAuthorFirst.Text + "', '" + txtAuthorGender.Text + "', '" + txtAuthorDate.Text +
                    "', '" + txtAuthorFirst.Text + " " + txtAuthorLast.Text + "')";
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                txtAuthorLast.Text = "";
                txtAuthorFirst.Text = "";
                txtAuthorGender.Text = "";
                txtAuthorDate.Text = "";
            }
            else
            {
                lblErrorMessage.Visible = true;
            }
        }
    }
}