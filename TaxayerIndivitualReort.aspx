<%@ Page Language="VB" AutoEventWireup="false" CodeFile="TaxayerIndivitualReort.aspx.vb" Inherits="TaxayerIndivitualReort" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 157px;
        }
        .style3
        {
            width: 414px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    Search by</td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="350px">
                        <asp:ListItem>Slect one...</asp:ListItem>
                        <asp:ListItem>ID</asp:ListItem>
                        <asp:ListItem>departmentName</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="lblresult" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Search What</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="417px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="GO" Width="234px" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
        AutoDataBind="true" />
    </form>
</body>
</html>
