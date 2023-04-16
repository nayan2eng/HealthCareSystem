<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDoctor.aspx.cs" Inherits="ClinicManagement.AddDoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" class="../StyleSheet1.css">
    <title>Health Care :: Add New Doctor</title>
    <style type="text/css">

        .mainStyleText{font-size:12px; 
                      
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
<body>
    <form id="add_doctor" runat="server">
    <div>
    
        <table>

            <tr><td class="auto-style3"><strong>:: Health Care - Admin ::</strong></td></tr>
            <tr><td class="auto-style1">&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>

            <tr><td class="auto-style2"><strong>ADD NEW DOCTOR / SPECIALIST</strong></td></tr>
            <tr><td>&nbsp;</td></tr>
             <tr><td>&nbsp;</td></tr>

            <tr>            
                <td> <asp:Label ID="Label1" runat="server" Text="Doctor ID:" CssClass="auto-style4"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_docid" runat="server" CssClass="auto-style5"></asp:TextBox> </td>                
            </tr>

            <tr>            
                <td> <asp:Label ID="Label2" runat="server" Text="Name:" CssClass="auto-style4"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_name" runat="server" CssClass="auto-style5"></asp:TextBox> </td>                
            </tr>

            <tr>            
                <td> <asp:Label ID="Label3" runat="server" Text="Specialist:" CssClass="auto-style4"></asp:Label> </td>
                <td> <asp:DropDownList ID="ddl_specialization" runat="server" CssClass="auto-style5"> 

                     <asp:listitem text="--Choose--" value="0" Selected="True"></asp:listitem> 
                     <asp:listitem text="Cardiologist" value="1"></asp:listitem>
                     <asp:listitem text="Child Specialist" value="2"></asp:listitem>
                     <asp:listitem text="Dermatologist" value="3"></asp:listitem>
                    <asp:listitem text="General Physician" value="4"></asp:listitem>
           
                    </asp:DropDownList>
               </td>                
            </tr>                            
            
            
            <tr>            
                <td> <asp:Label ID="Label4" runat="server" Text="Is Available:" CssClass="auto-style4"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_available" runat="server" CssClass="auto-style5"></asp:TextBox> </td>                
            </tr>
                        
            <tr>            
                <td> <asp:Label ID="Label5" runat="server" Text="Phone: " CssClass="auto-style4"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_phone" runat="server" CssClass="auto-style5"></asp:TextBox> </td>                
            </tr>

            <tr>            
                <td> <asp:Label ID="Label6" runat="server" Text="Address: " CssClass="auto-style4"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_address" runat="server"></asp:TextBox> </td>                
            </tr>

            <tr>
                <td> </td>
                <td> <asp:Button ID="btn_adddoctor" runat="server" Text="ADD DOCTOR" OnClick="btn_adddoctor_Click"  /></td>

            </tr>
            <tr><td>&nbsp;</td></tr>
            
            <tr><td>&nbsp;</td>

            <td><a href="DoctorsList.aspx">View Doctors List</a> | <a href="Home.aspx">Goto Home</a></td></tr>

        </table>


    </div>
    </form>
</body>
</html>

