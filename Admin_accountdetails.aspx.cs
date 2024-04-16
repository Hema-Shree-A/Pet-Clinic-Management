using System;
using System.Data.SqlClient;

public partial class Admin_accountdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Load existing data when the page is first loaded
            LoadAccountDetails();
        }
    }

    private void LoadAccountDetails()
    {
        try
        {
            string connectionString = "Data Source=BCA-11\\SQLEXPRESS;Initial Catalog=UR_Pets;Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT UserName, Password FROM [dbo].[admin_login] WHERE UserName = @UserName";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    // Add parameter to prevent SQL injection
                    cmd.Parameters.AddWithValue("@UserName", "admin"); // Provide the username for which you want to load details

                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        // Populate the text boxes with the existing data
                        txtusername.Text = reader["UserName"].ToString();
                        txtpass.Text = reader["Password"].ToString();
                    }

                    reader.Close();
                }
            }
        }
        catch (Exception ex)
        {
            // Handle any exceptions
            Response.Write("<script>alert('An error occurred while loading account details: " + ex.Message + "');</script>");
        }
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            string connectionString = "Data Source=BCA-11\\SQLEXPRESS;Initial Catalog=UR_Pets;Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"UPDATE [dbo].[admin_login]
                                 SET [Password] = @Password,
[ConfirmPassword] = @ConfirmPassword
                                 WHERE [UserName] = @UserName";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    // Add parameters to prevent SQL injection and improve security
                    cmd.Parameters.AddWithValue("@UserName", "admin");
                    cmd.Parameters.AddWithValue("@Password", txtpass.Text);
                    cmd.Parameters.AddWithValue("@ConfirmPassword", txtconpass.Text);

                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();

                    if (rowsAffected > 0)
                    {
                        // Update successful
                        Response.Write("<script>alert('Password updated successfully!');</script>");
                    }
                    else
                    {
                        // Update failed
                        Response.Write("<script>alert('Failed to update password!');</script>");
                    }
                }
            }
        }
        catch (Exception ex)
        {
            // Handle any exceptions
            Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
        }
    }
}
