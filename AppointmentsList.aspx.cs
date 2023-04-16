using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ClinicManagement
{
    public partial class AppointmentsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Connection objconn = new Connection();
            objconn.OpenConnection();

            SqlDataAdapter sda = new SqlDataAdapter("select * from tbl_appointment", objconn.OpenConnection());
            DataTable dt = new DataTable();
            sda.Fill(dt);
            appList.DataSource = dt;
            appList.DataBind();


        }
    }
}