using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

namespace CSCI3321_ASPNET_FinalProject
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAddBook_Click(object sender, EventArgs e)
        {
            if (txtPubDate.Text != "" && !DateTime.TryParse(txtPubDate.Text, out DateTime notUsed))
            {
                lblErrorMessage.Text = "Please use the valid date format of YYYY/MM/DD";
                lblErrorMessage.Visible = true;
            }

            else if (txtBookName.Text.Trim() != "" && txtBookPrice.Text.Trim() != "" && txtPubDate.Text.Trim() != "")
            {

                lblErrorMessage.Visible = false;

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;

                if (txtWordCount.Text == "")
                {
                    cmd.CommandText = "INSERT INTO Books VALUES ('" + txtBookName.Text + "', " +
                        ddlAuthorID.SelectedValue + ", " + txtBookPrice.Text + ", '" + txtPubDate.Text + "', " +
                        ddlPublisherID.SelectedValue + ", " + ddlGenreID.SelectedValue + ", NULL )";
                }
                else
                {
                    cmd.CommandText = "INSERT INTO Books VALUES ('" + txtBookName.Text + "', " +
                        ddlAuthorID.SelectedValue + ", " + txtBookPrice.Text + ", '" + txtPubDate.Text + "', " +
                        ddlPublisherID.SelectedValue + ", " + ddlGenreID.SelectedValue + ", " + txtWordCount.Text + ")";
                }

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                txtBookName.Text = "";
                txtBookPrice.Text = "";
                txtPubDate.Text = "";
                txtWordCount.Text = "";
            }
            else
            {
                lblErrorMessage.Text = "Please fill all required fields";
                lblErrorMessage.Visible = true;
            }
        }
    }
}