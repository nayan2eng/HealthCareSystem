<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorsList.aspx.cs" Inherits="ClinicManagement.DoctorsList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Health Care :: Doctors List</title>

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

    <form id="form1" runat="server">


            <table>
                <tr>
                    <td class="auto-style3"><strong>:: Health Care Clinic Admin ::</strong></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style2"><strong>DOCTORS LIST</strong></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                </tr>

            </table>

            <asp:GridView ID="docList" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderWidth="2px" CellPadding="4" ForeColor="Gray" AutoGenerateColumns="False" Font-Names="Lucida Sans Unicode" Font-Size="Small">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="S No." />
                    <asp:BoundField DataField="doc_id" HeaderText="Doctor ID" />
                    <asp:BoundField DataField="doc_name" HeaderText="Name" />
                    
                    <asp:TemplateField HeaderText="Specialist">
                        <ItemTemplate>
                            <asp:Label ID="acyearlbl" runat="server" Text='<%# Eval("doc_specialization").ToString() == "1" ? "Cardiologist" : (Eval("doc_specialization").ToString() == "2" ? "Child Specialist" : (Eval("doc_specialization").ToString() == "3" ? "Dermatologist" : "General Physician") )%>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="doc_fees" HeaderText="Fees" />
                    <asp:BoundField DataField="doc_days" HeaderText="Days" />
                    <asp:BoundField DataField="doc_time" HeaderText="Time" />
                    <asp:BoundField DataField="doc_type" HeaderText="Type" />
                    <asp:BoundField DataField="doc_phone" HeaderText="Phone" />
                    <asp:BoundField DataField="doc_address" HeaderText="Address" />
                    <asp:BoundField DataField="doc_isavailable" HeaderText="Availability" />
                </Columns>

                <%-- <SelectedRowStyle BackColor="Blue" ForeColor="White" />--%>
                <%-- <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" Font-Bold="True" />
            <HeaderStyle BackColor="Blue" Font-Bold="True" />
            <AlternatingRowStyle BackColor="White" />--%>
            </asp:GridView>





        
            <table>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: right">
                        <a href="AddDoctor.aspx">Add Doctor</a>
                    </td>
                    <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                    <td><a href="Home.aspx">Go to Home</a></td>
                </tr>
            </table>

      



    </form>
</body>
</html>
