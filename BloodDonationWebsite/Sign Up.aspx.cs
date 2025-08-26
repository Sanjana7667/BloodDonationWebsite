using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace BloodDonationWebsite
{
    public partial class Sign_Up : System.Web.UI.Page
    {
        public SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=LAPTOP-RMU15EVM\\SQLEXPRESS;Initial Catalog=donation;Integrated Security=true");
            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // First verify if passwords match
            if (txtPassword.Text != txtConfirmPassword.Text)
            {
                Response.Write("<script>alert('Passwords do not match!')</script>");
                return;
            }

            // Create database connection
            using (SqlConnection con = new SqlConnection("Data Source=LAPTOP-RMU15EVM\\SQLEXPRESS;Initial Catalog=donation;Integrated Security=true"))
            {
                try
                {
                    con.Open();

                    // Check if email already exists
                    string checkEmail = "SELECT COUNT(*) FROM users WHERE email = @email";
                    using (SqlCommand cmdCheck = new SqlCommand(checkEmail, con))
                    {
                        cmdCheck.Parameters.AddWithValue("@email", txtEmail.Text);
                        int count = (int)cmdCheck.ExecuteScalar();

                        if (count > 0)
                        {
                            Response.Write("<script>alert('Email already exists!')</script>");
                            return;
                        }
                    }

                    // Insert new user
                    string query = "INSERT INTO users (name, email, phone, password) VALUES (@name, @email, @phone, @password)";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@name", txtName.Text);
                        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                        // Note: In a production environment, you should hash the password
                        cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
                        cmd.Parameters.AddWithValue("@password", txtPassword.Text);

                        cmd.ExecuteNonQuery();
                    }

                    Response.Write("<script>alert('Registration Successful!')</script>");
                    Response.Redirect("Home.aspx");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('An error occurred: " + ex.Message.Replace("'", "\\'") + "')</script>");
                }
            }
        }
    }
}