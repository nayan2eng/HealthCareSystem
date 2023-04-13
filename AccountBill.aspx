<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountBill.aspx.cs" Inherits="ClinicManagement.AccountBill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>:: Health Care :: Accounts</title>

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
        .auto-style6 {
            width: 144px;
        }
    </style>


</head>
<body>
    <form id="add_bill" runat="server">
    <div>
    <table>

            <tr><td class="auto-style3" colspan="2"><strong>:: Health Care - Admin ::</strong></td></tr>
            <tr><td class="auto-style1" colspan="2">&nbsp;</td></tr>
            <tr><td colspan="2">&nbsp;</td></tr>

            <tr><td class="auto-style2" colspan="2"><strong>CREATE BILL</strong></td></tr>
            <tr><td colspan="2">&nbsp;</td></tr>
             <tr><td colspan="2">&nbsp;</td></tr>

            <tr>            
                <td class="auto-style6"> <asp:Label ID="Label1" runat="server" Text="Bill ID:" CssClass="auto-style4"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_billid" runat="server" CssClass="auto-style5"></asp:TextBox> </td>                
            </tr>

            <tr>            
                <td class="auto-style6"> <asp:Label ID="Label2" runat="server" Text="Date:" CssClass="auto-style4"></asp:Label> </td>
                <td><asp:Calendar ID="cal_billdate" runat="server"></asp:Calendar>  </td>                
            </tr>

            <tr>            
                <td class="auto-style6"> <asp:Label ID="Label3" runat="server" Text="Doctor:" CssClass="auto-style4"></asp:Label> </td>
                <td> <asp:DropDownList ID="ddl_docbill" runat="server" AutoPostBack="True" Height="20px" Width="188px" EnableViewState="true" OnSelectedIndexChanged="ddl_docbill_SelectedIndexChanged"></asp:DropDownList>
               </td>                
            </tr>        
        
          <tr>            
                <td class="auto-style6"> <asp:Label ID="Label5" runat="server" Text="Fee:" CssClass="auto-style4"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_fee" runat="server" CssClass="auto-style5"></asp:TextBox> </td>                
            </tr>                    
            
            
            <tr>            
                <td class="auto-style6"> <asp:Label ID="Label4" runat="server" Text="Total Appointments:" CssClass="auto-style4"></asp:Label> </td>
                <td> <asp:TextBox ID="txt_totalapp" runat="server" CssClass="auto-style5"></asp:TextBox> </td>                
            </tr>
                        
            <tr>            
                <td class="auto-style6"> &nbsp;</td>
                <td> &nbsp;</td>                
            </tr>

            <tr>
                <td class="auto-style6"> </td>
                <td> <asp:Button ID="btn_genbill" runat="server" Text="GENERATE BILL" OnClick="btn_genbill_Click" style="font-weight: 700; color: #0066FF" /></td>

            </tr>
            <tr><td class="auto-style6">&nbsp;</td></tr>
            
            <tr><td class="auto-style6"><a href="Billing.aspx">View Billings</a></td>

                     <td><a href="Home.aspx">Go to Main</a></td>
         
            </tr>

        </table>



    </div>
    </form>
</body>
</html>
