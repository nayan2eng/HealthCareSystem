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
    public partial class SetAppointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindDoctors();
                BindPatients();
            }

        }


        public void BindDoctors()
        {

            Connection objconn = new Connection();
            objconn.OpenConnection();

            SqlDataAdapter sda = new SqlDataAdapter("select * from tbl_doctor", objconn.OpenConnection() );
            DataTable dt = new DataTable();
            sda.Fill(dt);
    
            ddl_doctor.DataSource = dt;
            ddl_doctor.DataBind();
            ddl_doctor.DataValueField = "id";
            ddl_doctor.DataTextField = "doc_name";
            ddl_doctor.DataBind();
            ddl_doctor.Items.Insert(0, new ListItem("--Select--", "NA"));
        }


        public void BindPatients()
        {

            Connection objconn = new Connection();
            objconn.OpenConnection();

            SqlDataAdapter sda = new SqlDataAdapter("select * from tbl_patient", objconn.OpenConnection());
            DataTable dt = new DataTable();
            sda.Fill(dt);
       
            ddl_patient.DataSource = dt;
            ddl_patient.DataBind();
            ddl_patient.DataValueField = "id";
            ddl_patient.DataTextField = "pat_name";
            ddl_patient.DataBind();
            ddl_patient.Items.Insert(0, new ListItem("--Select--", "NA"));
        }

        protected void btn_setappoint_Click(object sender, EventArgs e)
        {
            Appointment objapp = new Appointment();


            if (!string.IsNullOrEmpty(txt_appid.Text))
            {
                objapp.ID = int.Parse(txt_appid.Text);
                objapp.Date = cal_appdate.SelectedDate;
                objapp.Time = txt_apptime.Text;
                objapp.Detail = txt_appdetail.Text;
                objapp.Patient = ddl_patient.SelectedItem.Text;
                objapp.Doctor = ddl_doctor.SelectedItem.Text;

                objapp.SetAppointment(objapp);
                ClearForm();
            }
            
        }

        protected void ClearForm()
        {
            txt_appid.Text = string.Empty;
            txt_apptime.Text = string.Empty;
            txt_appdetail.Text = string.Empty;
            ddl_patient.ClearSelection();
            ddl_doctor.ClearSelection();
        }

      
    }
}