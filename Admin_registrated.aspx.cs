using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Admin_registrated: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Define your connection string
            string connectionString = "Data Source=BCA-11\\SQLEXPRESS;Initial Catalog=UR_Pets;Integrated Security=True";

            // Define your SQL query
            string query = "SELECT * FROM userreg";

            // Initialize SqlDataReader outside of the using block
            SqlDataReader reader = null;

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(query, connection);
                    connection.Open();
                    reader = command.ExecuteReader();

                    // Read data and store it in a DataTable
                    DataTable dataTable = new DataTable();
                    dataTable.Load(reader);

                    // Bind the DataTable to the GridView
                    gridView.DataSource = dataTable;
                    gridView.DataBind();
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions (e.g., log the error, display a friendly message, etc.)
                // For now, let's write the error to the console
                Console.WriteLine("An error occurred: " + ex.Message);
            }
            finally
            {
                // Close the reader and connection in a finally block to ensure resources are properly released
                if (reader != null && !reader.IsClosed)
                {
                    reader.Close();
                }
            }
        }
    }
}
