<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppointmentsList.aspx.cs" Inherits="ClinicManagement.AppointmentsList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Health Care :: Appointments List</title>
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

            .auto-style1 {
                height: 24px;
                text-align: center;
            }
            .auto-style2 {
                text-align: center;
            }

    </style>

</head>
      <body style="border:#5181f1 0.5px solid; box-shadow:inset; bo:#eee url('Img/stethobacke.jpg') bottom left; border-bottom-right-radius:30px; border-top-left-radius:30px; width:980px; height:640px; padding:4px; margin-left:auto; margin-right:auto; margin-top:50px; background-repeat: repeat-x;">

    <form id="form1" runat="server">
   
    
          <table>
                <tr>
                    <td class="auto-style1"><strong>Health Care Clinic </strong></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style2"><strong>APPOINTMENTS LIST</strong></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                </tr>

            </table>

            <asp:GridView ID="appList" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="3" ForeColor="Black" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="S No." />
                    <asp:BoundField DataField="app_id" HeaderText="Appointment ID" />
                    <asp:BoundField DataField="app_date" HeaderText="Date" />
                    <asp:BoundField DataField="app_time" HeaderText="Slot" />
                    <asp:BoundField DataField="app_detail" HeaderText="Appointment Details" />
                    <asp:BoundField DataField="app_patname" HeaderText="Patient" />
                    <asp:BoundField DataField="app_docname" HeaderText="Doctor" />
                </Columns>

                <%-- <SelectedRowStyle BackColor="Blue" ForeColor="White" />--%>
                <%-- <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" Font-Bold="True" />
            <HeaderStyle BackColor="Blue" Font-Bold="True" />
            <AlternatingRowStyle BackColor="White" />--%>
                <HeaderStyle BackColor="#FCF7CF" />
            </asp:GridView>

            
               <div style="width:100%; text-align:center; padding:8px;"><a href="SetAppointment.aspx">Set Appointment</a> | <a href="Home.aspx">Go to Main</a></div> 




    
    </form>
</body>
</html>
