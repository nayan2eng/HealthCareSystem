<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="ClinicManagement.Billing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Health Care : Billings</title>

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

   <table>
            <tr><td class="auto-style3"><strong>:: Health Care - Admin ::</strong></td></tr>
            <tr><td class="auto-style1">&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>

            <tr><td class="auto-style2"><strong>BILLING</strong></td></tr>
            <tr><td>&nbsp;</td></tr>

        </table>
        
            <asp:GridView ID="billList" runat="server" BackColor="White" BorderColor="Blue" BorderWidth="2px" CellPadding="4" ForeColor="Gray" GridLines="None" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="S No." />
                    <asp:BoundField DataField="bill_id" HeaderText="Bill ID" />
                    <asp:BoundField DataField="bill_date" DataFormatString="{0:d}" HeaderText="Date" />
                    <asp:BoundField DataField="bill_doctor" HeaderText="Doctor" />
                    <asp:BoundField DataField="bill_totalapp" HeaderText="Appointments" />
                    <asp:BoundField DataField="bill_totalbill" HeaderText="Total Bill" />
                </Columns>
            </asp:GridView>  

        <table>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td style="text-align: right">
                    <a href="AccountBill.aspx">Add Billing</a>
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
                    <td><a href="Home.aspx">Go to Main</a></td>
            </tr>
        </table>







    
    </div>
    </form>
</body>
</html>
