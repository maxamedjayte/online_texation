<%@ Page Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="Users.aspx.vb" Inherits="Users" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style6
        {
            width: 100%;
        }
        .style8
        {
            width: 261px;
        }
        .style9
        {
            height: 26px;
        }
        .style10
        {
            width: 261px;
            height: 26px;
        }
        .style11
        {
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Create Users page</p>
<p>
    <table class="style6">
        <tr>
            <td class="style7" style="background-color: #CCFF66">
                User ID</td>
            <td class="style8" style="background-color: #CCFF66">
                <asp:TextBox ID="txtid" runat="server" ReadOnly="True" Width="261px"></asp:TextBox>
            </td>
            <td style="background-color: #CCFF66">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" style="background-color: #CCFF66">
                First Name</td>
            <td class="style8" style="background-color: #CCFF66">
                <asp:TextBox ID="txtfname" runat="server" Width="261px"></asp:TextBox>
            </td>
            <td style="background-color: #CCFF66">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtfname" ErrorMessage="Fill the blank space" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" style="background-color: #CCFF66">
                Last Name</td>
            <td class="style8" style="background-color: #CCFF66">
                <asp:TextBox ID="txtlname" runat="server" Width="261px"></asp:TextBox>
            </td>
            <td style="background-color: #CCFF66">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtlname" ErrorMessage="Fill the blank space" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" style="background-color: #CCFF66">
                Tell</td>
            <td class="style8" style="background-color: #CCFF66">
                <asp:TextBox ID="txttell" runat="server" Width="261px"></asp:TextBox>
            </td>
            <td style="background-color: #CCFF66">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txttell" ErrorMessage="Fill the blank space" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" style="background-color: #CCFF66">
                E mail</td>
            <td class="style8" style="background-color: #CCFF66">
                <asp:TextBox ID="txtEmail" runat="server" Width="261px"></asp:TextBox>
            </td>
            <td style="background-color: #CCFF66">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="*" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Invalid email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" style="background-color: #CCFF66">
                User Type</td>
            <td class="style8" style="background-color: #CCFF66">
                <asp:DropDownList ID="txttype" runat="server" Height="16px" Width="260px">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>User</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="background-color: #CCFF66">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" style="background-color: #CCFF66">
                User Name</td>
            <td class="style10" style="background-color: #CCFF66">
                <asp:TextBox ID="txtusername" runat="server" Width="259px"></asp:TextBox>
            </td>
            <td class="style9" style="background-color: #CCFF66">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="Fill the blank space" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" style="background-color: #CCFF66">
                Password</td>
            <td class="style8" style="background-color: #CCFF66">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="258px"></asp:TextBox>
            </td>
            <td style="background-color: #CCFF66">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="Fill the blank space" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" style="background-color: #CCFF66">
                Confirm password</td>
            <td class="style8" style="background-color: #CCFF66">
                <asp:TextBox ID="txtconfirm" runat="server" TextMode="Password" Width="259px"></asp:TextBox>
            </td>
            <td style="background-color: #CCFF66">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpassword" ControlToValidate="txtconfirm" 
                    ErrorMessage="Mismatch password" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" style="background-color: #CCFF66">
                Secret question</td>
            <td class="style8" style="background-color: #CCFF66">
                <asp:DropDownList ID="txtSQ" runat="server" Height="16px" Width="258px">
                    <asp:ListItem>What is your favour lecturer?</asp:ListItem>
                    <asp:ListItem>What is your name?</asp:ListItem>
                    <asp:ListItem>What is favour habit?</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="background-color: #CCFF66">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" style="background-color: #CCFF66">
                Secret Answer</td>
            <td class="style8" style="background-color: #CCFF66">
                <asp:TextBox ID="txtSA" runat="server" Width="258px"></asp:TextBox>
            </td>
            <td style="background-color: #CCFF66">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtSA" ErrorMessage="Fill the blank space" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" style="background-color: #CCFF66">
                Date</td>
            <td class="style8" style="background-color: #CCFF66">
                <asp:TextBox ID="txtdate" runat="server" ReadOnly="True" Width="257px"></asp:TextBox>
            </td>
            <td style="background-color: #CCFF66">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" style="background-color: #CCFF66">
                &nbsp;</td>
            <td class="style8" style="background-color: #CCFF66">
                <asp:Button ID="Button1" runat="server" Text="Create" Width="259px" />
            </td>
            <td style="background-color: #CCFF66">
                <asp:Label ID="lblresult" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style11" colspan="3" style="background-color: #009900">
                </td>
        </tr>
        <tr>
            <td class="style7" colspan="3" style="background-color: #CCFF66">
                <asp:GridView ID="GridView1" runat="server" BackColor="#FFCC99">
                    <HeaderStyle BackColor="#FF3300" BorderColor="#FFCC00" BorderStyle="Solid" 
                        ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</p>

</asp:Content>


