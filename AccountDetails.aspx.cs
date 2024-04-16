using System;
using System.Data.SqlClient;

public partial class Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // This is the page load event of the Dashboard page
        // You can put any code related to Dashboard page load here
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string connectionString = "Data Source=BCA-11\\SQLEXPRESS;Initial Catalog=UR_Pets;Integrated Security=True";

        using (SqlConnection con = new SqlConnection(connectionString))
        {
            string query = @"UPDATE [UR_Pets].[dbo].[userreg]
                         SET [UserName] = @UserName,
                             [Mobile Number] = @MobileNumber,
                             [Password] = @Password,
                             [Confirm Password] = @ConfirmPassword
                         WHERE [Email] = @Email";

            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                // Add parameters to prevent SQL injection and improve security
                cmd.Parameters.AddWithValue("@UserName", txtusername.Text);
                cmd.Parameters.AddWithValue("@MobileNumber", txtmobnum.Text);
                cmd.Parameters.AddWithValue("@Email", txtemail.Text);
                cmd.Parameters.AddWithValue("@Password", txtpass.Text);
                cmd.Parameters.AddWithValue("@ConfirmPassword", txtconpass.Text);

                try
                {
                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Write("<script>alert('User details updated successfully')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('No user found with the provided email')</script>");
                    }
                }
                catch (Exception ex)
                {
                    // Handle any exceptions
                    Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
                }
            }
        }
    }
}
