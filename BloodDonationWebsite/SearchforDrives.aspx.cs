using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodDonationWebsite
{
    public partial class SearchforDrives : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand cmd;
        public SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=LAPTOP-RMU15EVM\\SQLEXPRESS;Initial Catalog=donation;Integrated Security=true");
            con.Open();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmd = new SqlCommand("select name, location, format(drive_date, 'dd-MM-yyyy') as drive_date, drive_time from drive where name='" + DropDownList1.SelectedItem.Text + "'", con);
            dr = cmd.ExecuteReader();
            dr.Read();
            txtdrive.Text = dr[1].ToString();
            txtlocation.Text = dr[0].ToString();
            txtdate.Text = dr[2].ToString();
            txttime.Text = dr[3].ToString();
            

        }
        protected void Button1_Click(object sender, EventArgs e)
        {


        }
    }
}