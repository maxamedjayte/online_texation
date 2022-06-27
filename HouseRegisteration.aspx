<%@ Page Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="HouseRegisteration.aspx.vb" Inherits="HouseRegisteration" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style3
    {
        width: 100%;
        font-size: small;
        font-weight: 400;
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
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style8">House Registeration age</span></p>
    <p>
        <table class="style3" bgcolor="#FFCC99">
            <tr>
                <td class="style6">
                    District name</td>
                <td class="style7">
                    <asp:TextBox ID="txtDisname" runat="server" Width="219px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtDisname" ErrorMessage="please fill in the blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Ref</td>
                <td class="style7">
                    <asp:TextBox ID="txtRef" runat="server" Width="219px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtRef" ErrorMessage="please fill in the blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Houset type</td>
                <td class="style7">
                    <asp:DropDownList ID="DropDownHousetype" runat="server" Height="16px" 
                        Width="200px">
                        <asp:ListItem>Select one........</asp:ListItem>
                        <asp:ListItem>15 - 20</asp:ListItem>
                        <asp:ListItem>20 - 20</asp:ListItem>
                        <asp:ListItem>30 - 30</asp:ListItem>
                        <asp:ListItem>40 - 40</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    House No</td>
                <td class="style7">
                    <asp:TextBox ID="txthouseNo" runat="server" ReadOnly="True" Width="219px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txthouseNo" ErrorMessage="please fill in the blank"></asp:RequiredFieldValidator>
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
                            <asp:BoundField DataField="houseno" HeaderText="houseno" 
                                SortExpression="houseno" />
                            <asp:BoundField DataField="DistrictNmae" HeaderText="DistrictNmae" 
                                SortExpression="DistrictNmae" />
                            <asp:BoundField DataField="Reference" HeaderText="Reference" 
                                SortExpression="Reference" />
                            <asp:BoundField DataField="housetype" HeaderText="housetype" 
                                SortExpression="housetype" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:TaxationManagementDatabaseConnectionString %>" 
                        SelectCommand="SELECT * FROM [HouseRegisteration]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>

</asp:Content>


