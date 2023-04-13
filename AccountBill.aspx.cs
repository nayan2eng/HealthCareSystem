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
    public partial class AccountBill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindDoctors();
            }
        }

        public void BindDoctors()
        {

            Connection objconn = new Connection();
            objconn.OpenConnection();

            SqlDataAdapter sda = new SqlDataAdapter("select * from tbl_doctor", objconn.OpenConnection());
            DataTable dt = new DataTable();
            sda.Fill(dt);

            ddl_docbill.DataSource = dt;
            ddl_docbill.DataBind();
            ddl_docbill.DataValueField = "id";
            ddl_docbill.DataTextField = "doc_name";
            ddl_docbill.DataBind();
            ddl_docbill.Items.Insert(0, new ListItem("--Select--", "NA"));
        }

        protected void btn_genbill_Click(object sender, EventArgs e)
        {
            Accounts objaccounts = new Accounts();

            objaccounts.ID = int.Parse(txt_billid.Text);
            objaccounts.Date = cal_billdate.SelectedDate;
            objaccounts.Doctor = ddl_docbill.SelectedItem.Text;
            objaccounts.totalAppointments = int.Parse(txt_totalapp.Text);
            objaccounts.Fee = int.Parse(txt_fee.Text);

            objaccounts.GenerateBill();
            ClearForm();
        }

        protected void ClearForm()
        {
            txt_billid.Text = string.Empty;
            txt_totalapp.Text = string.Empty;
            txt_fee.Text = string.Empty;
            ddl_docbill.ClearSelection();
        }

        protected void ddl_docbill_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Connection objconn = new Connection();
            //objconn.OpenConnection();

            string connectionString = "Data Source = WSLAB4029;Initial Catalog = HealthCare; Trusted_Connection=True";
            SqlConnection con;
            con = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand("select doc_fees from tbl_doctor where doc_name=@docname", con);
            cmd.Parameters.AddWithValue("@docname", ddl_docbill.SelectedItem.Text);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
          
            while (sdr.Read())
            {
                txt_fee.Text = sdr[0].ToString();
            }
            sdr.Close();
         




        }
    }
}