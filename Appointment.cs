using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClinicManagement
{
    public class Appointment
    {
        public int ID;
        public DateTime Date;
        public string Time;
        public string Detail;
        public int PatientId;
        public string Patient;
        public int DoctorId;
        public string Doctor;      


        public void SetAppointment(Appointment objApp)
        {
            string query = "insert into tbl_appointment (app_id, app_date, app_time, app_detail, app_patname, app_docname) values ('"
            + objApp.ID + "','" + objApp.Date + "','" + objApp.Time + "','" + objApp.Detail + "','" + objApp.Patient + "','" + objApp.Doctor + "')";

            Connection objconn = new Connection();
            objconn.ExecuteQueries(query);

        }
    }
}