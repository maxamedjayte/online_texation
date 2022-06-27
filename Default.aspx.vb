Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
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

        If IsNumeric(TextBox1.Text) = True Then
            Lblresult.Text = "number is not allowed here"
            TextBox1.Text = ""
            TextBox1.Focus()
            Exit Sub
        End If

        connect()
        Dim cmdWarrant As SqlCommand
        'Dim dr As SqlDataReader
        cmdWarrant = New SqlCommand("select ID,FirstName,lastname,HouseType,username, passord ,houseNo from TaxReg where username='" & TextBox1.Text & "' and passord='" & TextBox2.Text & "'", cn)
        cmdWarrant.ExecuteNonQuery()
        dr = cmdWarrant.ExecuteReader
        If dr.Read = True Then
            Session("ID") = dr.Item("ID")
            Session("FirstName") = dr.Item("FirstName")
            Session("lastname") = dr.Item("lastname")
            Session("username") = dr.Item("username")
            Session("Passowrd") = dr.Item("passord")
            Session("HouseType") = dr.Item("HouseType")
            Session("houseNo") = dr.Item("houseNo")

            'Session("type") =
            ' If LBcheckUser.Text = "Customer" Then
            Session("username") = Me.TextBox1.Text


            Session("Check_URl") = True
            Response.Redirect("homeUser.aspx")
        Else

            Lblresult.Text = "Invalid User Name or Password!"

            '  m = m + 1
            'End If
            dr.Close()
        End If
        connect()
        Dim cmdadmin As SqlCommand
        'Dim dr As SqlDataReader
        cmdadmin = New SqlCommand("select * from users where username='" & TextBox1.Text & "' and Password='" & TextBox2.Text & "'", cn)
        cmdadmin.ExecuteNonQuery()
        dr = cmdadmin.ExecuteReader
        If dr.Read = True Then


            Session("username") = dr.Item("username")
            Session("Passowrd") = dr.Item("Password")
        


            'Session("type") =
            ' If LBcheckUser.Text = "Customer" Then



            Session("Check_URl") = True
            Response.Redirect("AdminHome.aspx")
        Else

            Lblresult.Text = "Invalid User Name or Password!"

            '  m = m + 1
            'End If
            dr.Close()
        End If






    End Sub

    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox1.TextChanged

    End Sub
End Class
