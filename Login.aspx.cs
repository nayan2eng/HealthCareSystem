using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ClinicManagement
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            AdminUser objadminuser = new AdminUser();
            DoctorUser objdocuser = new DoctorUser();
            AccountsUser objaccuser = new AccountsUser();
           
            objadminuser.user = txt_user.Text;
            objadminuser.password = txt_pwd.Text;
            
            if (txt_user.Text == "admin" && txt_pwd.Text == "123456")
            {
                Response.Redirect("./Home.aspx");
            }
            else if (txt_user.Text == "accounts" && txt_pwd.Text == "123456")
            {
                //Response.Redirect("./Accounts.aspx");
                Response.Redirect("./AccountBill.aspx");
            }

            else
            {
                Response.Write("<script>alert('Invalid User!');</script>");
            }
        }
    }
}