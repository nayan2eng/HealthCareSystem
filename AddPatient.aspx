<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPatient.aspx.cs" Inherits="ClinicManagement.AddPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Health Care :: Add New Patient</title>
    <style type="text/css">


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


        .newStyle1 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style1 {
            color: #0066FF;
        }
        .auto-style2 {
            color: #808080;
        }

     
     
    </style>
</head>
      <body style="border:#5181f1 0.5px solid; box-shadow:inset; bo:#eee url('Img/stethobacke.jpg') bottom left; border-bottom-right-radius:30px; border-top-left-radius:30px; width:980px; height:640px; padding:4px; margin-left:auto; margin-right:auto; margin-top:50px; background-repeat: repeat-x;">
    <form id="add_patient" runat="server">
    
                <table>

            <tr class="newStyle1"><td class="auto-style2"><strong>:: Health Care - Admin ::</strong></td></tr>
            <tr class="newStyle1"><td class="auto-style1">&nbsp;</td></tr>
            <tr class="newStyle1"><td>&nbsp;</td></tr>

            <tr class="newStyle1"><td class="auto-style1"><strong>ADD NEW PATIENT</strong></td></tr>
            <tr class="newStyle1"><td>&nbsp;</td></tr>
             <tr class="newStyle1"><td>&nbsp;</td></tr>

            <tr>            
                <td class="newStyle1"> <asp:Label ID="Label1" runat="server" Text="Patient ID:" CssClass="auto-style4" style="font-size: small"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_patid" runat="server" required="true" CssClass="auto-style5"></asp:TextBox> </td>                
            </tr>

            <tr>            
                <td class="newStyle1"> <asp:Label ID="Label2" runat="server" Text="Token #:" CssClass="auto-style4" style="font-size: small"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_pattoken" runat="server" CssClass="auto-style5"></asp:TextBox> </td>                
            </tr>

            <tr>            
                <td class="newStyle1"> <asp:Label ID="Label4" runat="server" Text="Name:" CssClass="auto-style4" style="font-size: small"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_patname" runat="server" CssClass="auto-style5"></asp:TextBox> </td>                
            </tr>

                    <tr>            
                <td class="newStyle1"> <asp:Label ID="Label3" runat="server" Text="Gender:" CssClass="auto-style4" style="font-size: small"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_patgender" runat="server" CssClass="auto-style5"></asp:TextBox> </td>                
            </tr>

                    <tr>            
                <td class="newStyle1"> <asp:Label ID="Label7" runat="server" Text="Age:" CssClass="auto-style4" style="font-size: small"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_patage" runat="server" CssClass="auto-style5"></asp:TextBox> </td>                
            </tr>
                        
            <tr>            
                <td class="newStyle1"> <asp:Label ID="Label5" runat="server" Text="Phone: " CssClass="auto-style4" style="font-size: small"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_patphone" runat="server" CssClass="auto-style5"></asp:TextBox> </td>                
            </tr>

            <tr>            
                <td class="newStyle1"> <asp:Label ID="Label6" runat="server" Text="Address: " CssClass="auto-style4" style="font-size: small"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_pataddress" runat="server"></asp:TextBox> </td>                
            </tr>

            <tr>            
                <td class="newStyle1"> <asp:Label ID="Label9" runat="server" Text="Height (ft) : " CssClass="auto-style4" style="font-size: small"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_patheight" runat="server"></asp:TextBox> </td>                
            </tr>
                    
            <tr>            
                <td class="newStyle1"> <asp:Label ID="Label10" runat="server" Text="Weight (Kg): " CssClass="auto-style4" style="font-size: small"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_patweight" runat="server"></asp:TextBox> </td>                
            </tr>

            <tr>
                <td> </td>
                <td>
                    <asp:Button ID="btn_addpatient" runat="server" Text="ADD PATIENT" style="color: #0066FF; font-weight: 700" OnClick="btn_addpatient_Click" /> </td>
            </tr>

                       <tr><td>&nbsp;</td></tr>
            <tr>
                <td>
                    
                </td>
                                                                            
                    <td></td>
            </tr>

        </table>
    <a href="Patientlist.aspx">Patients List</a> | <a href="Home.aspx">Go to Main</a>

    </form>
</body>
</html>
