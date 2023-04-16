using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ClinicManagement
{
    public class Connection
    {
        string connectionString = "Data Source = (local)\\SQLEXPRESS;Initial Catalog = HealthCare; Trusted_Connection=True";
        SqlConnection con;
        
        public SqlConnection OpenConnection()
        {
            con = new SqlConnection(connectionString);
            return con;
        }

        public void CloseConnection()
        {
            con.Close();
        }


        public void ExecuteQueries(string query)
        {
            con = OpenConnection();
            SqlCommand cmd = new SqlCommand(query, con);

            SqlDataReader sqlreader;
            con.Open();
            sqlreader = cmd.ExecuteReader();   
            
            CloseConnection();            
            
            if (sqlreader.RecordsAffected != 0)
            {
                HttpContext.Current.Response.Write("<script>alert('Record Added successfully!');</script>");
            }
            else
            {
                HttpContext.Current.Response.Write("Error in adding the Record. Please Contact Support");
            }
        }

    }
}