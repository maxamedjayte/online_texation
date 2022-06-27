<%@ Page Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="SettingTaxation.aspx.vb" Inherits="SettingTaxation" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 100%;
            height: 456px;
        }
        .style5
        {
            width: 269px;
        }
        .style4
        {
            height: 9px;
        }
        .style6
        {
            height: 9px;
            width: 269px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Taxation setting age</p>
<p>
    <table class="style2" bgcolor="#CCFF99">
        <tr>
            <td class="style3">
                ID</td>
            <td class="style5">
                <asp:TextBox ID="txtid" runat="server" ReadOnly="True" Width="286px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                House number</td>
            <td class="style5">
                <asp:TextBox ID="txthouseno" runat="server" Width="286px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txthouseno" ErrorMessage="Empty space is not allowed"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                House type</td>
            <td class="style5">
                <asp:TextBox ID="txthousetype" runat="server" Width="286px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txthousetype" ErrorMessage="Empty space is not allowed"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Yearly tax</td>
            <td class="style5">
                <asp:TextBox ID="txtyearly" runat="server" Width="286px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtyearly" ErrorMessage="Empty space is not allowed"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Repair insurence</td>
            <td class="style5">
                <asp:TextBox ID="txtrepair" runat="server" Width="286px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtrepair" ErrorMessage="Empty space is not allowed"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Taxation new house</td>
            <td class="style5">
                <asp:TextBox ID="txtnewHouse" runat="server" Width="286px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtnewHouse" ErrorMessage="Empty space is not allowed"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Date</td>
            <td class="style5">
                <asp:TextBox ID="txtdate" runat="server" ReadOnly="True" Width="286px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="Button3" runat="server" Font-Bold="True" Text="Set up" 
                    Width="92px" />
            </td>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Update" 
                    Width="128px" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="Delete" 
                    Width="88px" />
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style6">
                <asp:Label ID="lblresult" runat="server"></asp:Label>
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                <asp:GridView ID="GridView1" runat="server" Height="218px" 
                    style="margin-bottom: 1px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</p>

</asp:Content>


