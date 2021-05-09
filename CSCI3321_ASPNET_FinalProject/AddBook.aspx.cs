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
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            //Create the database connection
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            //Create the command and query
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "INSERT INTO Books VALUES ('" + txtBookTitle.Text + "', " + ddlAuthor.SelectedValue  + ", " +
                    System.Convert.ToDecimal(txtPrice.Text)  + ", '" + DateTime.Parse(txtPublish.Text) + "', " + ddlPublisher.SelectedValue + ", " + ddlGenre.SelectedValue + ", " + 1 + ")";

            //Open connection
            conn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
                txtBookTitle.Text = "";
                txtPrice.Text = "";
                txtPublish.Text = "";
                ddlAuthor.ClearSelection();
                ddlPublisher.ClearSelection();
                ddlGenre.ClearSelection();
                lblComplete.Text = "The Book has been added to the database.";
            }
            conn.Close();
        }

        protected void txtBookTitle_TextChanged(object sender, EventArgs e)
        {
            lblComplete.Text = "";
        }
    }
}