<%@ Page Language="VB" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="false" CodeFile="PaymentPageforUser.aspx.vb" Inherits="PaymentPageforUser" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


    .style2
    {
        width: 100%;
    }
    .style3
    {
        width: 116px;
    }
    .style4
    {
        width: 235px;
    }
        .style5
        {
            font-size: large;
            color: #008080;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style5">Welcome payment age</span><br />
        <table class="style2" bgcolor="#99FFCC">
            <tr>
                <td class="style3">
                    Refno</td>
                <td class="style4">
                    <asp:TextBox ID="txtref" runat="server" Width="237px" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtref" ErrorMessage="Please fill blanks"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    full name
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtfullname" runat="server" Width="237px" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtfullname" ErrorMessage="Please fill blanks"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    House no</td>
                <td class="style4">
                    <asp:TextBox ID="txthouseno" runat="server" Width="237px" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txthouseno" ErrorMessage="Please fill blanks"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    house houseTye</td>
                <td class="style4">
                    <asp:TextBox ID="txthousetype" runat="server" Width="237px" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txthousetype" ErrorMessage="Please fill blanks"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    type of taxt</td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        Height="22px" Width="238px">
                        <asp:ListItem>Select one</asp:ListItem>
                        <asp:ListItem>Dabaq</asp:ListItem>
                        <asp:ListItem>Fillo</asp:ListItem>
                        <asp:ListItem>Jiingad</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Amount</td>
                <td class="style4">
                    <asp:TextBox ID="txtamount" runat="server" Width="237px" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtamount" ErrorMessage="Please fill blanks"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Date</td>
                <td class="style4">
                    <asp:TextBox ID="txtdate" runat="server" Width="237px" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="Button1" runat="server" Text="pay" Width="178px" 
                        Height="31px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblresult" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="refno" HeaderText="refno" SortExpression="refno" />
                            <asp:BoundField DataField="Fulname" HeaderText="Fulname" 
                                SortExpression="Fulname" />
                            <asp:BoundField DataField="houseno" HeaderText="houseno" 
                                SortExpression="houseno" />
                            <asp:BoundField DataField="housetype" HeaderText="housetype" 
                                SortExpression="housetype" />
                            <asp:BoundField DataField="taxType" HeaderText="taxType" 
                                SortExpression="taxType" />
                            <asp:BoundField DataField="amount" HeaderText="amount" 
                                SortExpression="amount" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:TaxationManagementDatabaseConnectionString %>" 
                        SelectCommand="SELECT * FROM [payment]"></asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>

</asp:Content>


