using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSCI3321_ASPNET_FinalProject
{
    public partial class BookTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            String cmdText = "SELECT Books.Title, Authors.FullName, Books.Price, Books.PublishDate, Publishers.PublisherName, Genres.GenreName FROM Books INNER JOIN Authors ON Books.AuthorID = Authors.AuthorID INNER JOIN Genres ON Books.GenreID = Genres.GenreID INNER JOIN Publishers ON Books.PublisherID = Publishers.PublisherID";
            cmd.CommandText = cmdText;
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            DataTable dTable = new DataTable();
            dTable.Columns.Add("Title");
            dTable.Columns.Add("Author");
            dTable.Columns.Add("Price");
            dTable.Columns.Add("Publish Date");
            dTable.Columns.Add("Publisher");
            dTable.Columns.Add("Genre");
            while (reader.Read())
            {
                DataRow nextRow = dTable.NewRow();
                nextRow["Title"] = reader["Title"];
                nextRow["Author"] = reader["FullName"];
                nextRow["Price"] = reader["Price"];
                String temp = reader["PublishDate"].ToString();
                DateTime dt = DateTime.Parse(temp);
                nextRow["Publish Date"] = dt.ToString("dd/MM/yyyy");
                nextRow["Publisher"] = reader["PublisherName"];
                nextRow["Genre"] = reader["GenreName"];
                dTable.Rows.Add(nextRow);
            }
            gvBooks.DataSource = dTable;
            gvBooks.DataBind();
            conn.Close();
        }
    }
}