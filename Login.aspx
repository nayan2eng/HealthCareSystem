<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ClinicManagement.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Health Care :: Login</title>

        <style type="text/css">  

         .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style2 {
            font-family: Arial, Helvetica, sans-serif;
            color: #0066FF;
        }
        .auto-style3 {
            font-family: Arial, Helvetica, sans-serif;
            color: #808080;
        }
        .auto-style4 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
        }
        .auto-style5 {
            font-size: small;
        }
        
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
                <table style="padding: 10px">  
            <tr>  
                <td colspan="6" style="text-align: right; vertical-align: top">  
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" class="auto-style2" Text="Health Care - Admin"></asp:Label>  
                </td>  
              
            </tr>  
                      <tr><td>&nbsp;</td></tr>

            <tr>  
                <td> </td>  
                <td style="text-align: right">  
                    <asp:Label ID="Label2" runat="server" Font-Size="Large" CssClass="auto-style4" Text="User ID :"></asp:Label>  
                </td>  
                <td style="text-align: center">  
                    <asp:TextBox ID="txt_user" runat="server" Font-Size="Large"></asp:TextBox>  
                    <asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter Username" ControlToValidate="txt_user" runat="server" />
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td style="text-align: right">  
                    <asp:Label ID="Label3" runat="server" Font-Size="Large" CssClass="auto-style4" Text="Password :"></asp:Label>  
                </td>  
                <td style="text-align: center">  
                    <asp:TextBox ID="txt_pwd" runat="server" Font-Size="Large" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPWD" runat="server" ControlToValidate="txt_pwd" ErrorMessage="Please enter Password"/>
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td class="auto-style2"> </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td class="auto-style2"> </td>  
                <td style="text-align: center">  
                    <asp:Button ID="btn_login" runat="server" BorderStyle="None" Font-Size="X-Large" Text="Log In" OnClick="btn_login_Click" />  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td class="auto-style2"> </td>  
                <td>  
                      
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
        </table>




    </div>
    </form>
</body>
</html>
