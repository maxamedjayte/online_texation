<%@ Page Language="VB" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="false" CodeFile="ChangePassword.aspx.vb" Inherits="ChangePassword" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 150px;
        }
        .style4
        {
            width: 199px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p>
        Change assword age
    </p>
    <p>
        <table class="style2">
            <tr>
                <td class="style3">
                    User Name</td>
                <td class="style4">
                    <asp:TextBox ID="txtUserName" runat="server" Width="196px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lbluser" runat="server" CssClass="style13"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Old password</td>
                <td class="style4">
                    <asp:TextBox ID="txtOldPass" runat="server" TextMode="Password" Width="195px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblOldPass" runat="server" CssClass="style13"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    New password</td>
                <td class="style4">
                    <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password" Width="192px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblnewPass" runat="server" CssClass="style13"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Re-enter new password</td>
                <td class="style4">
                    <asp:TextBox ID="txtRetype" runat="server" TextMode="Password" Width="195px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblRetype" runat="server" CssClass="style13"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="Button1" runat="server" Text="Change" />
                </td>
                <td>
                    <asp:Label ID="lbldisplay" runat="server" CssClass="style13"></asp:Label>
                </td>
            </tr>
        </table>
    </p>

</asp:Content>


