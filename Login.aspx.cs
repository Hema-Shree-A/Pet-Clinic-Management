using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
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
            cmd.CommandText = "select * from userreg where Email=@Email and Password=@Password"; // Use parameters
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd); // Pass cmd to SqlDataAdapter
            da.Fill(dt);
            i = dt.Rows.Count; // No need to convert to string and then to integer
            if (i == 1)
            {
                Response.Redirect("Dashboard.aspx");
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
