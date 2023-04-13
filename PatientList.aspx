<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientList.aspx.cs" Inherits="ClinicManagement.PatientList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Health Care :: Patient List</title>

        <style type="text/css">
     

               *{font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;}


a:link {
  color: cornflowerblue;
}

/* visited link */
a:visited {
  color: cornflowerblue;
}

/* mouse over link */
a:hover {
  color:deepskyblue;
}

/* selected link */
a:active {
  color: blue;
}



    </style>



</head>
<body>
    <form id="form1" runat="server">

        <table>
           <body style="border:#5181f1 0.5px solid; box-shadow:inset; bo:#eee url('Img/stethobacke.jpg') bottom left; border-bottom-right-radius:30px; border-top-left-radius:30px; width:980px; height:640px; padding:4px; margin-left:auto; margin-right:auto; margin-top:50px; background-repeat: repeat-x;">

            <tr><td class="auto-style3"><strong>:: Health Care Clinic Admin ::</strong></td></tr>
            <tr><td class="auto-style1">&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>

            <tr><td class="auto-style2"><strong>PATIENTS LIST</strong></td></tr>
            <tr><td>&nbsp;</td></tr>

        </table>
        
            <asp:GridView ID="patList" runat="server" BackColor="White" BorderColor="Blue" BorderWidth="2px" CellPadding="3" ForeColor="Gray" GridLines="Vertical" AutoGenerateColumns="false" AllowSorting="True" Font-Size="Medium" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="S No." />
                    <asp:BoundField DataField="pat_id" HeaderText="Patient ID" />
                    <asp:BoundField DataField="pat_token" HeaderText="Token No." />
                    <asp:BoundField DataField="pat_name" HeaderText="Name" />
                    <asp:BoundField DataField="pat_gender" HeaderText="Gender" />
                    <asp:BoundField DataField="pat_phone" HeaderText="Phone" />
                    <asp:BoundField DataField="pat_address" HeaderText="Address" />
                    <asp:BoundField DataField="pat_age" HeaderText="Age" />
                    <asp:BoundField DataField="pat_height" HeaderText="Height (ft)" />
                    <asp:BoundField DataField="pat_weight" HeaderText="Weight (kg)" />
                </Columns>
        
           <%-- <SelectedRowStyle BackColor="Blue" ForeColor="White" />--%>
           <%-- <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" Font-Bold="True" />
            <HeaderStyle BackColor="Blue" Font-Bold="True" />
            <AlternatingRowStyle BackColor="White" />--%>
                <EditRowStyle BackColor="#66CCFF" />
            </asp:GridView>  

       


                              <div style="width:100%; text-align:center; padding:8px;"><a href="AddPatient.aspx">Add Patient</a> | <a href="Home.aspx">Go to Home</a></div> 


            



    </form>
</body>
</html>
