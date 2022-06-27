<%@ Page Language="VB" AutoEventWireup="false" CodeFile="TaxpayerRegisateration.aspx.vb" Inherits="TaxpayerRegisateration" %>

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
            font-size: small;
        }
        .style10
        {
            width: 133px;
            font-size: medium;
            color: #000000;
        }
        .style5
        {
            width: 215px;
        }
        .style9
        {
            font-size: medium;
        }
        .style6
        {
            width: 133px;
            height: 26px;
            font-size: medium;
            color: #000000;
        }
        .style7
        {
            width: 215px;
            height: 26px;
        }
        .style8
        {
            height: 26px;
            font-size: medium;
        }
        .style4
        {
            width: 133px;
            font-size: medium;
        }
        .style11
        {
            width: 133px;
            font-size: medium;
            color: #000000;
            height: 25px;
        }
        .style12
        {
            width: 215px;
            height: 25px;
        }
        .style13
        {
            font-size: medium;
            height: 25px;
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Taxt registeation page<br />
                    <table class="style3" style="background-color: #66FFCC">
                        <tr>
                            <td class="style10">
                                ID</td>
                            <td class="style5">
                                <asp:TextBox ID="txtID" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtID" ErrorMessage="please fil in the blank spece"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                frist name</td>
                            <td class="style5">
                                <asp:TextBox ID="txtfname" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtfname" ErrorMessage="please fil in the blank spece"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                last name</td>
                            <td class="style5">
                                <asp:TextBox ID="txtlname" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtlname" ErrorMessage="please fil in the blank spece"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                District Name</td>
                            <td class="style5">
                                <asp:DropDownList ID="DropDowndistrict" runat="server" Height="16px" 
                                    Width="199px">
                                    <asp:ListItem>Select one......</asp:ListItem>
                                    <asp:ListItem>Warta nabadda</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="style9">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10">
                                House No</td>
                            <td class="style5">
                                <asp:TextBox ID="txthouseno" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txthouseno" ErrorMessage="please fil in the blank spece"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                House Type</td>
                            <td class="style5">
                                <asp:DropDownList ID="DropDownHousetype" runat="server" Height="16px" 
                                    Width="200px">
                                    <asp:ListItem>Select one........</asp:ListItem>
                                    <asp:ListItem>15 - 20</asp:ListItem>
                                    <asp:ListItem>20 - 20</asp:ListItem>
                                    <asp:ListItem>30 - 30</asp:ListItem>
                                    <asp:ListItem>40 - 40</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="style9">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10">
                                Department Name</td>
                            <td class="style5">
                                <asp:DropDownList ID="DropDownDepartment" runat="server" Height="18px" 
                                    Width="200px">
                                    <asp:ListItem>Select one ..</asp:ListItem>
                                    <asp:ListItem>General daud</asp:ListItem>
                                    <asp:ListItem>Hanti wadaag</asp:ListItem>
                                    <asp:ListItem>Horseed</asp:ListItem>
                                    <asp:ListItem>Barwaaqo</asp:ListItem>
                                    <asp:ListItem>Hamar bile</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="style9">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10">
                                Gender</td>
                            <td class="style5">
                                <asp:RadioButton ID="RadioButton1" runat="server" Text="Female" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RadioButton ID="RadioButton2" runat="server" Text="Male" />
                            </td>
                            <td class="style9">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                Tell</td>
                            <td class="style12">
                                <asp:TextBox ID="txttell" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style13">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                    ControlToValidate="txttell" ErrorMessage="please fil in the blank spece"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                Email</td>
                            <td class="style5">
                                <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                                    ControlToValidate="txtEmail" ErrorMessage="please fil in the blank spece"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                User Name</td>
                            <td class="style5">
                                <asp:TextBox ID="txtusername" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                    ControlToValidate="txtusername" ErrorMessage="please fil in the blank spece"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                Password</td>
                            <td class="style5">
                                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                    ControlToValidate="txtpassword" ErrorMessage="please fil in the blank spece"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Confirm Password</td>
                            <td class="style7">
                                <asp:TextBox ID="txtconfirm" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style8">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="txtpassword" ControlToValidate="txtconfirm" 
                                    ErrorMessage="Password mismatch"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                Secret Question</td>
                            <td class="style5">
                                <asp:DropDownList ID="DropDownSQ" runat="server" Height="18px" Width="200px">
                                    <asp:ListItem>Select one ..</asp:ListItem>
                                    <asp:ListItem>what is your name?</asp:ListItem>
                                    <asp:ListItem>what is your university</asp:ListItem>
                                    <asp:ListItem>what is your favour layer?</asp:ListItem>
                                    <asp:ListItem>where do live?</asp:ListItem>
                                    <asp:ListItem>what your knicname?</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="style9">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10">
                                Secret An</td>
                            <td class="style5">
                                <asp:TextBox ID="txtsecretAn" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                    ControlToValidate="txtsecretAn" ErrorMessage="please fil in the blank spece"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                Date</td>
                            <td class="style5">
                                <asp:TextBox ID="txtdate" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                    ControlToValidate="txtdate" ErrorMessage="please fil in the blank spece"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Back 
                                to login</asp:HyperLink>
                            </td>
                            <td class="style5">
                                <asp:Button ID="Button1" runat="server" Text="Register" Width="193px" />
                            </td>
                            <td class="style9">
                                <asp:Label ID="lblresult" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
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
