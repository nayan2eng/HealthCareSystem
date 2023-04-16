using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClinicManagement
{
    public class Doctor
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public bool IsAvailable { get; set; }
        public string Address { get; set; }
        public int Appointments { get; set; }
        public string Specialist { get; set; }
        public int fees;
        public string timings;
        public string days;
        public string type;

        public void AddDoctor()
        {                           
                string query = "insert into tbl_doctor (doc_id, doc_name, doc_specialization, doc_phone, doc_address, doc_isavailable, doc_fees, doc_time, doc_days, doc_type) values ('"
                + ID + "','" + Name + "','" + Specialist + "','" + Phone + "','" + Address + "','" + IsAvailable + "','" + fees + "','" + timings + "','" + days + "','" + type + "')";

            Connection objconn = new Connection();
            objconn.ExecuteQueries(query);
        }
        
       
       /*
        public void AddDoctor(Doctor objDoc, Cardiologist objCardio)
        {
            string query = "insert into tbl_doctor (doc_id, doc_name, doc_specialization, doc_phone, doc_address, doc_isavailable, doc_fees, doc_time, doc_days, doc_type) values ('"
                + objDoc.ID + "','" + objDoc.Name + "','" + objDoc.Specialist + "','" + objDoc.Phone + "','" + objDoc.Address + "','" + objDoc.IsAvailable + "','" + objCardio.fees + "','" + objCardio.days + "','" + objCardio.timings + "','" + objCardio.type + "' )";

            Connection objconn = new Connection();
            objconn.ExecuteQueries(query);
        }

        public void AddDoctor(Doctor objDoc, ChildSpecialist objChildSpecialist)
        {
            string query = "insert into tbl_doctor (doc_id, doc_name, doc_specialization, doc_phone, doc_address, doc_isavailable, doc_fees, doc_time, doc_days, doc_type) values ('"
                + objDoc.ID + "','" + objDoc.Name + "','" + objDoc.Specialist + "','" + objDoc.Phone + "','" + objDoc.Address + "','" + objDoc.IsAvailable + "','" + objChildSpecialist.fees + "','" + objChildSpecialist.days + "','" + objChildSpecialist.timings + "','" + objChildSpecialist.type + "')";

            Connection objconn = new Connection();
            objconn.ExecuteQueries(query);
        }


        public void AddDoctor(Doctor objDoc, Dermatologist objDermatologist)
        {
            string query = "insert into tbl_doctor (doc_id, doc_name, doc_specialization, doc_phone, doc_address, doc_isavailable, doc_fees, doc_time, doc_days, doc_type) values ('"
                + objDoc.ID + "','" + objDoc.Name + "','" + objDoc.Specialist + "','" + objDoc.Phone + "','" + objDoc.Address + "','" + objDoc.IsAvailable + "','" + objDermatologist.fees + "','" + objDermatologist.days + "','" + objDermatologist.timings + "','" + objDermatologist.type + "')";

            Connection objconn = new Connection();
            objconn.ExecuteQueries(query);
        }


        public void AddDoctor(Doctor objDoc, GeneralPhysician objGeneralPhysician)
        {
            string query = "insert into tbl_doctor (doc_id, doc_name, doc_specialization, doc_phone, doc_address, doc_isavailable, doc_fees, doc_time, doc_days, doc_type) values ('"
                + objDoc.ID + "','" + objDoc.Name + "','" + objDoc.Specialist + "','" + objDoc.Phone + "','" + objDoc.Address + "','" + objDoc.IsAvailable + "','" + objGeneralPhysician.fees + "','" + objGeneralPhysician.days + "','" + objGeneralPhysician.timings + "','" + objGeneralPhysician.type + "')";

            Connection objconn = new Connection();
            objconn.ExecuteQueries(query);
        }

        */
    }

    //public class OtherDocDetails : Doctor
    //{
    //    public int fees;
    //    public string timings;
    //    public string days;
    //    public string type;
              
    //}

    //public class Cardiologist : OtherDocDetails
    //{
    //    public void AdditionalDocDetails(int fees, string timings, string days, string type)
    //    {
    //        this.fees = fees;
    //        this.timings = timings;
    //        this.days = days;
    //        this.type = type;
    //    }

    //}


    //public class ChildSpecialist : OtherDocDetails
    //{
    //    public void AdditionalDocDetails(int fees, string timings, string days, string type)
    //    {
    //        this.fees = fees;
    //        this.timings = timings;
    //        this.days = days;
    //        this.type = type;
    //    }

    //}


    //public class Dermatologist : OtherDocDetails
    //{
    //    public void AdditionalDocDetails(int fees, string timings, string days, string type)
    //    {
    //        this.fees = fees;
    //        this.timings = timings;
    //        this.days = days;
    //        this.type = type;
    //    }

    //}


    //public class GeneralPhysician : OtherDocDetails
    //{
    //    public void AdditionalDocDetails(int fees, string timings, string days, string type)
    //    {
    //        this.fees = fees;
    //        this.timings = timings;
    //        this.days = days;
    //        this.type = type;
    //    }

    //}







}

