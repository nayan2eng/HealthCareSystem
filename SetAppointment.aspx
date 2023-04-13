<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetAppointment.aspx.cs" Inherits="ClinicManagement.SetAppointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Health Care :: Set Appointment</title>

       <style type="text/css">
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
      <body style="border:#5181f1 0.5px solid; box-shadow:inset; bo:#eee url('Img/stethobacke.jpg') bottom left; border-bottom-right-radius:30px; border-top-left-radius:30px; width:980px; height:640px; padding:4px; margin-left:auto; margin-right:auto; margin-top:50px; background-repeat: repeat-x;">
    <form id="set_appointment" runat="server">
    <div>
     <table>

            <tr><td class="auto-style2"><strong style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: large">:: Health Care - Admin ::</strong></td></tr>
            <tr><td class="auto-style1">&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>

            <tr><td class="auto-style1"><strong>SET APPOINTMENT</strong></td></tr>
            <tr><td>&nbsp;</td></tr>
             <tr><td>&nbsp;</td></tr>

            <tr>            
                <td class="newStyle1"> <asp:Label ID="Label1" runat="server" Text="Appointment ID:" CssClass="auto-style4" style="font-size: small"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_appid" runat="server" CssClass="auto-style5"></asp:TextBox> </td>                
            </tr>

            <tr>            
                <td class="newStyle1"> <asp:Label ID="Label2" runat="server" Text="Date:" CssClass="auto-style4" style="font-size: small"></asp:Label> </td>
                <td style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif"> <asp:Calendar ID="cal_appdate" runat="server" CellPadding="3"></asp:Calendar> </td>                
            </tr>

             <tr>            
                <td class="newStyle1"> <asp:Label ID="Label3" runat="server" Text="Time:" CssClass="auto-style4" style="font-size: small"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_apptime" runat="server" CssClass="auto-style5"></asp:TextBox> </td>                
            </tr>
         

            <tr>            
                <td class="newStyle1"> <asp:Label ID="Label4" runat="server" Text="Details:" CssClass="auto-style4" style="font-size: small"></asp:Label> </td>
                <td> <asp:TextBox id="txt_appdetail" TextMode="multiline" Columns="28" Rows="5" runat="server" /> </td>                
            </tr>

                <tr>            
                <td class="newStyle1"> <asp:Label ID="Label7" runat="server" Text="Patient:" CssClass="auto-style4" style="font-size: small"></asp:Label> </td>
                <td> 
                    <asp:DropDownList ID="ddl_patient" runat="server" AutoPostBack="False" Height="20px" Width="188px" EnableViewState="true"></asp:DropDownList> 
                </td>                
            </tr>
                   
         <tr><td>&nbsp;</td></tr>     
         
            <tr>            
                <td class="newStyle1"> <asp:Label ID="Label6" runat="server" Text="Doctor: " CssClass="auto-style4" style="font-size: small"></asp:Label> </td>
                <td> 
                    <asp:DropDownList ID="ddl_doctor" runat="server" AutoPostBack="False" Height="20px" Width="188px" EnableViewState="true"></asp:DropDownList>

                </td>                
            </tr>
         <tr><td>&nbsp;</td></tr>
        
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btn_setappoint" runat="server" Text="SET APPOINTMENT" style="color: #0066FF; font-weight: 700" OnClick="btn_setappoint_Click"/>
                </td>
            </tr>

              <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <a href="AppointmentsList.aspx">View Appointments List</a>
                    </td>
                </tr>
         
        </table>
        <br />
        <br />
        <br />


    </div>
    </form>
</body>
</html>
