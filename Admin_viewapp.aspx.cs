using System;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Web.UI.WebControls;

public partial class Admin_viewapp : System.Web.UI.Page
{
    private const string FromEmail = "ur.pets2024@gmail.com";
    private const string EmailPassword = "nbgp duwl wkvx ofvk";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Define your connection string
            string connectionString = "Data Source=BCA-11\\SQLEXPRESS;Initial Catalog=UR_Pets;Integrated Security=True";

            // Define your SQL query
            string query = "SELECT * FROM Book_app";

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



    protected void BookAppointmentButton_Click_Click(object sender, EventArgs e)
    {
        try
        {
            // Retrieve the email address entered by the user
            string userEmail = txtEmail.Text;

            // Assuming you have appointment details (replace this with your actual appointment details)
            string appointmentDetails = "Your appointment has been booked successfully!\n" +
                "\nInstructions: Please arrive 15 minutes before the appointment.\n" +
                "\nLocation: Wilson Garden, Bengaluru\n" +
                "\nContact: If you have any questions, please call 63607 50465.\n";

            // Send the confirmation email to the user
            SendConfirmationEmail(userEmail, appointmentDetails);

            // Optionally, display a message indicating that the appointment has been booked
            ConfirmationMessageLiteral.Text = "Appointment booked successfully. Confirmation email sent.";
        }
        catch (Exception ex)
        {
            // Log error message
            Console.WriteLine("Error booking appointment: " + ex.Message);
            ConfirmationMessageLiteral.Text = "Error booking appointment: " + ex.Message;
        }
    }

    private void SendConfirmationEmail(string recipientEmail, string appointmentDetails)
    {
        using (var smtpClient = new SmtpClient("smtp.gmail.com"))
        {
            smtpClient.Port = 587;
            smtpClient.Credentials = new NetworkCredential(FromEmail, EmailPassword);
            smtpClient.EnableSsl = true;

            // Create the email message
            var mailMessage = new MailMessage(FromEmail, recipientEmail)
            {
                Subject = "Appointment Confirmation",
                Body = appointmentDetails,
                IsBodyHtml = false // Change to true if you want to send HTML email
            };

            // Send the email
            smtpClient.Send(mailMessage);
        }
    }
    
    protected void gridView_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
