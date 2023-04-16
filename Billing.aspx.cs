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
    public partial class Billing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Connection objconn = new Connection();
            objconn.OpenConnection();

            SqlDataAdapter sda = new SqlDataAdapter("select id, bill_id, bill_date, bill_doctor, bill_totalapp, bill_totalbill from tbl_bill", objconn.OpenConnection());
            DataTable dt = new DataTable();
            sda.Fill(dt);
            billList.DataSource = dt;
            billList.DataBind();
        }
    }
}