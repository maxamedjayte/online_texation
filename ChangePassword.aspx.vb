Imports System.Data
Imports System.Data.SqlClient
Partial Class ChangePassword
    Inherits System.Web.UI.Page
    Public cn As New SqlConnection
    Public cmd As New SqlCommand
    Public da As New SqlDataAdapter
    Public dr As SqlDataReader
    Public ds As New DataSet
    Public sql As String
    Sub connect()
        cn = New SqlConnection("data source=AHMEDIIDLE-PC\SQLEXPRESS; initial catalog=TaxationManagementDatabase; integrated security=true ")
        cn.Open()
    End Sub
    Sub disconnect()
        cn.Close()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If txtUserName.Text = "" Then
            lbluser.Text = "please insert your Account "
            Exit Sub
        ElseIf IsNumeric(txtUserName.Text) Then
            lbluser.Text = "please insert your namae do not insert numbers"
            Exit Sub
            txtUserName.Focus()
        ElseIf txtOldPass.Text = "" Then
            lblOldPass.Text = "enter your password "
            Exit Sub
            txtOldPass.Focus()
        ElseIf txtNewPass.Text = "" Then
            lblnewPass.Text = "please insert your new password"
            Exit Sub
            txtNewPass.Focus()
        ElseIf txtRetype.Text = "" Then
            lblRetype.Text = "please retype your password"
            Exit Sub
            txtRetype.Focus()
        ElseIf txtRetype.Text <> txtNewPass.Text Then
            lblRetype.Text = "mismatch password and confirm password"
            Exit Sub
            txtRetype.Focus()

        Else
            connect()
            sql = "update TaxReg set passord='" & txtNewPass.Text & "' where username='" & txtUserName.Text & "' and passord='" & txtOldPass.Text & "'"
            cmd = New SqlCommand(sql, cn)
            cmd.ExecuteNonQuery()
            lbldisplay.Text = "your password has been changed succefully"
            lblnewPass.Text = ""
            lblOldPass.Text = ""
            lblRetype.Text = ""
            lbluser.Text = ""
            txtUserName.Text = ""
            txtOldPass.Text = ""
            txtNewPass.Text = ""
            txtRetype.Text = ""
            txtUserName.Text = ""
            disconnect()

        End If
    End Sub
End Class
