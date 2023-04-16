using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClinicManagement
{
    public class Attendance
    {
        public int ID;
        public string ClinicRemarks;
        public DateTime Date;
        public int PatientId;
        public Patient Patient;
    }
}