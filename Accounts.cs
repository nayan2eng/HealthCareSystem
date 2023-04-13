using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace ClinicManagement
{
    public class Accounts
    {
        public int ID { get; set; }
        public DateTime Date { get; set; }
        public string Doctor { get; set; }
        public int totalAppointments { get; set; }
        public int Fee { get; set;}
  
        public void GenerateBill()
        {
            //int TotalBill;
            //Cardiologist objcardbill = new Cardiologist();
            //objcardbill.fees = 1000;

            //TotalBill = totalAppointments * objcardbill.fees;

            string query = "insert into tbl_bill (bill_id, bill_date, bill_doctor, bill_totalapp, bill_docfee, bill_totalbill) values ('"
            + ID + "','" + Date + "','" + Doctor + "','" + totalAppointments + "','" + Fee + "','" + Fee * totalAppointments + "')";

            Connection objconn = new Connection();
            objconn.ExecuteQueries(query);


        }



    }
}