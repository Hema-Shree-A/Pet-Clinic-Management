using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        // Establish connection to the database
        using (SqlConnection con = new SqlConnection("Data Source=BCA-11\\SQLEXPRESS;Initial Catalog=UR_Pets;Integrated Security=True"))
        {
            // Check if the email already exists
            string query = "SELECT COUNT(*) FROM [UR_Pets].[dbo].[userreg] WHERE [Email] = @Email";
            SqlCommand cmdCheckEmail = new SqlCommand(query, con);
            cmdCheckEmail.Parameters.AddWithValue("@Email", txtemail.Text);

            con.Open();
            int emailCount = (int)cmdCheckEmail.ExecuteScalar();

            if (emailCount > 0)
            {
                // Email already exists, show error message
                Response.Write("<script>alert('Email already exists. Please choose a different email.')</script>");
            }
            else
            {
                // Email does not exist, proceed with registration
                string insertQuery = @"INSERT INTO [UR_Pets].[dbo].[userreg]
                                       ([Username], [Mobile Number], [Email], [Password], [Confirm Password])
                                       VALUES (@Username, @MobileNumber, @Email, @Password, @ConfirmPassword)";
                SqlCommand cmdRegister = new SqlCommand(insertQuery, con);
                cmdRegister.Parameters.AddWithValue("@Username", txtusername.Text);
                cmdRegister.Parameters.AddWithValue("@MobileNumber", txtmobnum.Text);
                cmdRegister.Parameters.AddWithValue("@Email", txtemail.Text);
                cmdRegister.Parameters.AddWithValue("@Password", txtpass.Text);
                cmdRegister.Parameters.AddWithValue("@ConfirmPassword", txtconpass.Text);

                cmdRegister.ExecuteNonQuery();

                // Registration successful message
                Response.Write("<script>alert('User registered successfully')</script>");
            }
        }
    }
}
