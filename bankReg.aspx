<%@ Page Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="bankReg.aspx.vb" Inherits="bankReg" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style3
    {
        width: 100%;
        font-size: small;
        font-weight: 400;
            margin-top: 20px;
        }
    .style6
    {
    }
    .style7
    {
        width: 214px;
    }
        .style8
        {
            font-size: large;
            color: #000080;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <span class="style8">Bank Registeration age </span>
        <br class="style8" />
        <table class="style3" bgcolor="#FFCC00">
            <tr>
                <td class="style6">
                    bank ID</td>
                <td class="style7">
                    <asp:TextBox ID="txtid" runat="server" Width="219px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtid" ErrorMessage="please fill in the blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    bank name</td>
                <td class="style7">
                    <asp:TextBox ID="txtbankname" runat="server" Width="219px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtbankname" ErrorMessage="please fill in the blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Account no</td>
                <td class="style7">
                    <asp:TextBox ID="txtAcc" runat="server" Width="219px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtAcc" ErrorMessage="please fill in the blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Date</td>
                <td class="style7">
                    <asp:TextBox ID="txtDate" runat="server" ReadOnly="True" Width="219px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    <asp:Button ID="Button1" runat="server" Text="House Reg" Width="218px" />
                </td>
                <td>
                    <asp:Label ID="lblresult" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                            <asp:BoundField DataField="bankname" HeaderText="bankname" 
                                SortExpression="bankname" />
                            <asp:BoundField DataField="accountNo" HeaderText="accountNo" 
                                SortExpression="accountNo" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:TaxationManagementDatabaseConnectionString %>" 
                        SelectCommand="SELECT * FROM [bank]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>


