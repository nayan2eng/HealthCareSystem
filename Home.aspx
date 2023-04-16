<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ClinicManagement.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>:: Welcome to Health Care Clinic | A Project by Sheikkh Muhammad Ahmad & Hasan</title>
    
    
        <style type="text/css">  

        .body{
            margin:0; padding:10px; text-align:left; 
            }
    
        .footer{
         font-size:13px; 
        font-weight:100;

        }

   *{font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;}


a:link {
  color: cornflowerblue;
  text-decoration:none;

}

/* visited link */
a:visited {
  color: cornflowerblue;
  text-decoration:none;
}

/* mouse over link */
a:hover {
  color:deepskyblue;
  text-decoration:underline;
}

/* selected link */
a:active {
  color: blue;
  text-decoration:none;
}



            </style>
    



</head>
<body style="border:#5181f1 0.5px solid; box-shadow:inset; bo:#eee url('Img/stethobacke.jpg') bottom left; border-bottom-right-radius:30px; border-top-left-radius:30px; width:788px; height:600px; margin-left:auto; margin-right:auto; margin-top:50px; background-repeat: repeat-x;">
    <form id="form1" runat="server">

    
        <table>  
            <tr>  
                <td colspan="6" style="text-align: center; vertical-align: top">  <br />
                    <img src="Img/welcome.png" />
                </td>  
              
            </tr>  
                      
            <tr>  
                <td> </td>  
                <td style="text-align: right">  
                    &nbsp;</td>  
                <td style="text-align: center">  
                    &nbsp;</td>  
                <td> </td>  
                <td> </td>  
                <td class="auto-style4"> </td>  
            </tr>  
            <tr>  
                <td class="auto-style5"> </td>  
                <td style="text-align: right" class="auto-style5">  
                    </td>  
                <td style="text-align: center" class="auto-style5">  
                    </td>  
                <td class="auto-style5"> </td>  
                <td class="auto-style5"> </td>  
                <td class="auto-style6"> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td class="auto-style2"> <a href="DoctorsList.aspx"><asp:Image ID="DocModule" runat="server" ImageUrl="~/Img/doc-original.png" /></a></td>  
                <td style="text-align: center"> <a href="PatientList.aspx"><asp:Image ID="PatModule" runat="server" ImageUrl="~/Img/pat-original.png"/></a></td>  
                <td style="text-align: center"> <a href="AppointmentsList.aspx"><asp:Image ID="AppointmentModule" runat="server" ImageUrl="~/Img/appointment-original.png"/></a></td>  
                <td> </td>  
                <td class="auto-style4"> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td class="auto-style2" style="text-align: center"><a href="DoctorsList.aspx">Doctors Module</a></td>  
                <td class="auto-style2" style="text-align: center"><a href="PatientList.aspx">Patients Module</a></td>
                <td class="auto-style2" style="text-align: center"><a href="AppointmentsList.aspx">Appointments Module</a></td>  
                <td> </td>  
                <td class="auto-style4"></td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td class="auto-style2"></td>  
                <td>  
                      
                </td>  
                <td> </td>  
                <td> </td>  
                <td class="auto-style4"></td>  
            </tr>  
            <tr>  
                <td class="auto-style7"></td>  
                <td class="auto-style8"></td>  
                <td class="auto-style3" style="background-image:url('Img/bkgrnd.png'); background-repeat:repeat-x; text-align:center; line-height:23px; ">  <span class="footer">
                    <br />
                    <br />
                    
                    <b>Team:</b> Sheikh Muhammad Ahmad (10637344) &<br /> Mohammad Rabiul Hasan (10633381)
                        <br /><b>Presented to:</b> Paul Laird <br />

                    <% DateTime.Now.ToString(); %>

                    </span>  
</td>  
                <td class="auto-style7"> </td>  
                <td class="auto-style7"> </td>  
                <td class="auto-style9"> </td>  
            </tr>  
        </table>





    </form>
</body>
</html>
