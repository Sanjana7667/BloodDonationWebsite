using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodDonationWebsite
{
    public partial class ContactUs : System.Web.UI.Page
    {
        public SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=LAPTOP-RMU15EVM\\SQLEXPRESS;Initial Catalog=donation;Integrated Security=true");
            con.Open();
        }
    }
}