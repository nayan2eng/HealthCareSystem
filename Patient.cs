using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClinicManagement
{
    public class Patient
    {
        public int ID;
        public string Token;
        public string Name;
        public string Gender;
        public string Phone;
        public string Address;
        public double Height;
        public double Weight;
        public int Age;


        public void AddPatient(Patient objPat)
        {
            string query = "insert into tbl_patient (pat_id, pat_token, pat_name, pat_gender, pat_phone, pat_address, pat_height, pat_weight, pat_age) values ('"
                + objPat.ID + "','" + objPat.Token + "','" + objPat.Name + "','" + objPat.Gender
                + "','" + objPat.Phone + "','" + objPat.Address + "','" + objPat.Height + "','" + objPat.Weight 
                + "','" + objPat.Age + "')";

            Connection objconn = new Connection();
            objconn.ExecuteQueries(query);
        }
        
    }


    public class EmergencyCare : Patient
    {
        public int RoomNo;

    }



    


}