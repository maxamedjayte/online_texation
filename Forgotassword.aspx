<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Forgotassword.aspx.vb" Inherits="Forgotassword" %>

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
        .style5
        {
            width: 130px;
        }
        .style4
        {
            width: 214px;
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Forgot password page<br />
                    <table class="style3">
                        <tr>
                            <td class="style5">
                                User name</td>
                            <td class="style4">
                                <asp:TextBox ID="txtUserName" runat="server" CssClass="style21" Height="21px" 
                                    Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtUserName" CssClass="style36" 
                                    ErrorMessage="* Please Enter User Name" 
                                    style="color: #FF3300; font-family: Arial, Helvetica, sans-serif; font-size: small"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Sectet Q</td>
                            <td class="style4">
                                <asp:DropDownList ID="DDLSecretquestion" runat="server" Height="28px" 
                                    Width="205px">
                                    <asp:ListItem>--Select One--</asp:ListItem>
                                    <asp:ListItem>what is your name?</asp:ListItem>
                                    <asp:ListItem>what is your favorite color?</asp:ListItem>
                                    <asp:ListItem>what is your mothers name?</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="DDLSecretquestion" CssClass="style36" 
                                    ErrorMessage="* Please Choose Secret question" 
                                    style="color: #FF3300; font-family: Arial, Helvetica, sans-serif; font-size: small"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Secret A</td>
                            <td class="style4">
                                <asp:TextBox ID="txtSecretanswer" runat="server" AutoComplete="OFF" 
                                    CssClass="style21" Height="21px" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtSecretanswer" CssClass="style36" 
                                    ErrorMessage="* Please Enter Secret Answer" 
                                    style="color: #FF3300; font-family: Arial, Helvetica, sans-serif; font-size: small"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td class="style4">
                                <asp:Button ID="Button1" runat="server" Text="Find" Width="97px" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label4" runat="server" CssClass="style38" 
                                    style="font-family: Arial, Helvetica, sans-serif; font-size: small" 
                                    Text="User Name"></asp:Label>
                            </td>
                            <td class="style4">
                                <asp:Label ID="lblUser" runat="server" CssClass="style37" 
                                    style="font-size: small; color: #0000CC; font-family: Arial, Helvetica, sans-serif;"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label5" runat="server" CssClass="style38" 
                                    style="font-family: Arial, Helvetica, sans-serif; font-size: small" 
                                    Text="Password"></asp:Label>
                            </td>
                            <td class="style4">
                                <asp:Label ID="lblPassword" runat="server" CssClass="style37" 
                                    style="font-size: small; color: #0000CC; font-family: Arial, Helvetica, sans-serif;"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td class="style4">
                                <asp:Label ID="lblInformation" runat="server" CssClass="style29" 
                                    style="font-size: small; " Width="250px"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                </td>
                <td style="width: 200px; height: 500px; vertical-align: top; background-color: #66CCFF;">
                    <img src="images/right.jpg" style="width: 200px; height: 500px" /></td>
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
