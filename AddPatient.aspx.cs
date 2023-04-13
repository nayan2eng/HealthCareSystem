using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicManagement
{
    public partial class AddPatient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_addpatient_Click(object sender, EventArgs e)
        {
            Patient objpatient = new Patient();

            objpatient.ID = int.Parse(txt_patid.Text);
            objpatient.Token = txt_pattoken.Text;
            objpatient.Name = txt_patname.Text;
            objpatient.Gender = txt_patgender.Text;
            objpatient.Age = int.Parse(txt_patage.Text);
            objpatient.Address = txt_pataddress.Text;
            objpatient.Phone = txt_patphone.Text;
            objpatient.Height = double.Parse(txt_patheight.Text);
            objpatient.Weight = double.Parse(txt_patweight.Text);

            objpatient.AddPatient(objpatient);
            ClearForm();
        }


        protected void ClearForm()
        {
            txt_patid.Text = string.Empty;
            txt_pattoken.Text = string.Empty;
            txt_patname.Text = string.Empty;
            txt_patphone.Text = string.Empty;
            txt_pataddress.Text = string.Empty;
            txt_patage.Text = string.Empty;
            txt_patgender.Text = string.Empty;
            txt_patweight.Text = string.Empty;
            txt_patheight.Text = string.Empty;
            
        }


    }
}