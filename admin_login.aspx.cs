using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=BCA-11\\SQLEXPRESS;Initial Catalog=UR_Pets;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        int i = 0; // Declare i here

        try
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from admin_login where username=@username and password=@password"; // Use parameters
            cmd.Parameters.AddWithValue("@username", txt_username.Text); // Get username from textbox
            cmd.Parameters.AddWithValue("@password", txt_password.Text); // Get password from textbox
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd); // Pass cmd to SqlDataAdapter
            da.Fill(dt);
            i = dt.Rows.Count; // No need to convert to string and then to integer
            if (i == 1)
            {
                Response.Redirect("admin_dashboard.aspx");
            }
            else
            {
                l1.Text = "You have entered an invalid username or password";
            }
        }
        catch (Exception ex)
        {
            // Handle the exception
            l1.Text = "Error connecting to the database: " + ex.Message;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
    }
}
