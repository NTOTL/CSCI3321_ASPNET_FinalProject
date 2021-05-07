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
            if (!Page.IsPostBack)
            {
                YearList.Items.Clear();

                for (int year = 1700; year < DateTime.Now.Year; year++)
                {
                    string targetYear = String.Format("{0}", year);
                    YearList.Items.Add(new ListItem(targetYear, year.ToString()));
                }
            }
        }
        protected void YearList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CalendarControl.VisibleDate = DateTime.Parse("01/01/" + YearList.SelectedValue);
        }
        protected void btnAuthor_Click(object sender, EventArgs e)
        {
            //Create the database connection
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            //Create the command and query
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "INSERT INTO Authors VALUES ('" + txtLastName.Text + "', '" + txtFirstName.Text + "', '" + 
                    radGender.SelectedValue + "', '" + CalendarControl.SelectedDate + "')";

            //Open connection
            conn.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
                txtLastName.Text = "";
                txtFirstName.Text = "";
                radGender.ClearSelection();
                lblComplete.Text = "The Author has been added to the database.";
            }
            conn.Close();
        }

        protected void txtLastName_TextChanged(object sender, EventArgs e)
        {
            lblComplete.Text = "";
        }

    }
}