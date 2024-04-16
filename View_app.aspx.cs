using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string connectionString = "Data Source=BCA-11\\SQLEXPRESS;Initial Catalog=UR_Pets;Integrated Security=True"; // Replace with your actual connection string
        string email = txtEmail.Text.Trim();

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand("SELECT * FROM [UR_Pets].[dbo].[Book_app] WHERE [Email ID] = @Email", connection);
            command.Parameters.AddWithValue("@Email", email);

            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();

            try
            {
                connection.Open();
                adapter.Fill(dataTable);
            }
            catch (Exception ex)
            {
                // Handle exceptions
                Response.Write("Error: " + ex.Message);
            }
            finally
            {
                connection.Close();
            }

            // Bind the retrieved data to a GridView or any other suitable control
            if (dataTable.Rows.Count > 0)
            {
                GridView1.DataSource = dataTable;
                GridView1.DataBind();
            }
            else
            {
                // Display message if no data found for the entered email
                Response.Write("No appointment data found for the entered email.");
            }
        }
        
    }
}
