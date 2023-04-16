using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicManagement
{
    public partial class AddDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_adddoctor_Click(object sender, EventArgs e)
        {      
            Doctor objdoctor = new Doctor();
 
            if (!string.IsNullOrEmpty(txt_docid.Text))
            {
               
                objdoctor.ID = int.Parse(txt_docid.Text);
                objdoctor.Name = txt_name.Text;
                objdoctor.Phone = txt_phone.Text;
                objdoctor.Address = txt_address.Text;
                objdoctor.IsAvailable = bool.Parse(txt_available.Text);
                objdoctor.Specialist = ddl_specialization.SelectedValue;
     
            
                if (ddl_specialization.SelectedValue == "1")
                {
                    objdoctor.fees = 2000;
                    objdoctor.days = "MON-WED";
                    objdoctor.timings = "11 AM";
                    objdoctor.type = "Consultant";
                    objdoctor.AddDoctor();
                }
                else if (ddl_specialization.SelectedValue == "2")
                {
                    objdoctor.fees = 1500;
                    objdoctor.days = "FRI-SUN-MON";
                    objdoctor.timings = "12 PM";
                    objdoctor.type = "Doctor";
                    objdoctor.AddDoctor();
                }
                else if (ddl_specialization.SelectedValue == "3")
                {
                    objdoctor.fees = 1000;
                    objdoctor.days = "TUE-THU";
                    objdoctor.timings = "9 AM";
                    objdoctor.type = "Surgeon";
                    objdoctor.AddDoctor();
                }
                else if (ddl_specialization.SelectedValue == "4")
                {
                    objdoctor.fees = 800;
                    objdoctor.days = "SAT";
                    objdoctor.timings = "2:30 PM";
                    objdoctor.type = "Doctor";
                    objdoctor.AddDoctor();
                }

                ClearForm();
            }

        }

        protected void ClearForm()
        {
            txt_docid.Text = string.Empty;
            txt_name.Text = string.Empty;
            txt_phone.Text = string.Empty;
            txt_address.Text = string.Empty;
            txt_available.Text = string.Empty;
            ddl_specialization.ClearSelection();
        }


    }
}
