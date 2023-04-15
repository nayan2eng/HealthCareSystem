using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClinicManagement
{
    public class User
    {
        public string user;
        public string password;
        
        public User()
        {
    

        }

    }

    public class AdminUser : User
    {
        public AdminUser()
        {
            string query = "select * from tbl_users where username = 'admin' AND password = 123456";
            Connection objconn = new Connection();
            objconn.ExecuteQueries(query);
        }

    }

    public class DoctorUser : User
    {
        public DoctorUser()
        {
            string query = "select * from tbl_users where username = 'doctor' AND password = 123456";
            Connection objconn = new Connection();
            objconn.ExecuteQueries(query);
        }

    }

    public class AccountsUser : User
    {
        public AccountsUser()
        {
            string query = "select * from tbl_users where username = 'account' AND password = 123456";
            Connection objconn = new Connection();
            objconn.ExecuteQueries(query);
        }

    }
}