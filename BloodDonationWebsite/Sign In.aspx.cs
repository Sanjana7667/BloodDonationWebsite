using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace BloodDonationWebsite
{
    public partial class Sign_In : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Fetch user input
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Connection string from Web.config
            string connectionString = ConfigurationManager.ConnectionStrings["donationConnectionString3"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    // Open the database connection
                    connection.Open();

                    // Query to check if the email and password match
                    string query = "SELECT COUNT(*) FROM users WHERE email = @Email AND password = @Password";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add parameters to prevent SQL injection
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@Password", password);

                        // Execute the query
                        int userCount = (int)command.ExecuteScalar();

                        if (userCount > 0)
                        {
                            // Email and password matched
                            Response.Write("<script>alert('Login successful!');</script>");
                            // Optionally redirect to another page
                            Response.Redirect("Events.aspx");
                        }
                        else
                        {
                            // Invalid email or password
                            Response.Write("<script>alert('Invalid email or password.');</script>");
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Handle any errors
                    Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
                }
            }
           
        }
    }
}
