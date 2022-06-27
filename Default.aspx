<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">


        .style1
        {
            width: 1000px;
            border: 2px solid #00CC00;
        }
        .style2
        {
            font-size: x-large;
            color: #0000FF;
            font-weight: bold;
        }
        .style3
        {
            width: 100%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td colspan="3" 
                    style="width: 1000px; height: 150px; background-color: #66FF66;" valign="top">
                    <img src="images/Banner1.jpg" style="width: 1000px; height: 150px" /></td>
            </tr>
            <tr style="background-color: #FF9999">
                <td>
                </td>
                <td colspan="2">
                </td>
            </tr>
            <tr>
                <td style="width: 200px; height: 500px; vertical-align: top; background-color: #99CCFF;">
                    <img src="images/left.jpg" style="width: 200px; height: 500px" /></td>
                <td class="style2" 
                    style="width: 600px; height: 500px; vertical-align: top; background-color: #FFCC66;">
                    &nbsp;&nbsp;&nbsp;Welcome to taxation mangement system<br />
                </td>
                <td style="width: 200px; height: 500px; vertical-align: top; background-color: #CCFF33;">
                    <table class="style3">
                        <tr>
                            <td style="background-color: #FFFF66">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>&nbsp;Login the system</b></td>
                        </tr>
                        <tr>
                            <td class="style4">
                                user name</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:TextBox ID="TextBox1" runat="server" Width="189px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                password</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:TextBox ID="TextBox2" runat="server" Width="189px" TextMode="Password" 
                                    style="height: 22px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Button ID="Button1" runat="server" Text="Login" Width="160px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl="~/TaxpayerRegisateration.aspx">Register now</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Lblresult" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <asp:HyperLink ID="HyperLink2" runat="server" 
                        NavigateUrl="~/Forgotassword.aspx">Forgot Password</asp:HyperLink>
                    <br />
                    <table class="style3">
                        <tr>
                            <td style="width: 200px; height: 280px" valign="top">
                                <img alt="" src="images/right.jpg" style="width: 200px; height: 500px" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="width: 1000px; height: 25px; background-color: #00FF00;">
                    <b>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Copyright is reseved 2015&nbsp;</b></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
