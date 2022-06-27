Imports System.Data
Imports System.Data.SqlClient
Partial Class Forgotassword
    Inherits System.Web.UI.Page
    Public con As New SqlConnection
    Public cmd As New SqlCommand
    Public da As New SqlDataAdapter
    Public dr As SqlDataReader
    Public ds As New DataSet
    Public sql As String
    Sub connect()
        con = New SqlConnection("data source=AHMEDIIDLE-PC\SQLEXPRESS; initial catalog=TaxationManagementDatabase; integrated security=true ")
        con.Open()
    End Sub
    Sub disconnect()
        con.Close()
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        connect()

        Dim cmd As New SqlCommand
        cmd.Connection = con

        cmd.CommandText = "select username,passord from TaxReg where username ='" & Me.txtUserName.Text & "' and secretQuestion ='" & Me.DDLSecretquestion.Text & "'  and SecretAnswer ='" & Me.txtSecretanswer.Text & "'"
        cmd.CommandType = CommandType.Text

        Dim dreader As SqlDataReader
        dreader = cmd.ExecuteReader
        If dreader.Read Then
            lblUser.Text = dreader.Item(0)
            lblPassword.Text = dreader.Item(1)
        Else
            lblInformation.Text = "Invalid username or secret answer ..."
        End If
        dreader.Close()
        con.Close()
        clearfields()
    End Sub
    Sub clearfields()
        txtUserName.Text = ""
        DDLSecretquestion.Text = ""
        txtSecretanswer.Text = ""
    End Sub
End Class
