using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClinicManagement
{
    public class DoctorAppointments
    {
        
        public void GetAppointments()
        {
            string query = "select * from tbl_appointment where app_id = '1065'";
            Connection objconn = new Connection();
            objconn.ExecuteQueries(query);
        }
    }

  
}