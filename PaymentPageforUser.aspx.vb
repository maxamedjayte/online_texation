Imports System.Data
Imports System.Data.SqlClient
Partial Class PaymentPageforUser
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
    Sub clear()
        txtref.Text = ""
        txtfullname.Text = ""
        txthouseno.Text = ""
        txthousetype.Text = ""

        txtamount.Text = ""
        ' txtInW.Text = ""
    End Sub

    Public Sub Generationaccount()
        connect()
        Dim maxid As String
        maxid = "select 'ref' + REPLICATE('0',4-len(cast(isnull(max(cast(right([refno],4) as int)),0) + 1 as varchar(10)))) + cast(isnull(max(cast(right([refno],4) as int)),0) + 1 as varchar(10)) [refno] from payment"
        Dim sqlreader As SqlDataReader
        cmd = New SqlCommand
        cmd.Connection = cn
        cmd.CommandText = maxid
        sqlreader = cmd.ExecuteReader
        If sqlreader.Read Then
            txtref.Text = sqlreader("refno")

        End If
    End Sub


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        connect()
        sql = "insert into payment values('" & txtref.Text & "', '" & txtfullname.Text & "','" & txthouseno.Text & "','" & txthousetype.Text & "','" & DropDownList1.Text & "','" & txtamount.Text & "','" & txtdate.Text & "')"
        cmd = New SqlCommand(sql, cn)
        cmd.ExecuteNonQuery()
        lblresult.Text = "Data has been successfuly asved"
        Session("one") = txtamount.Text
        clear()
        Generationaccount()
        disconnect()
        Response.Redirect("Congragulationage.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' Session("ID")
        Dim fname, lname, fullname As String
        fname = Session("FirstName")
        lname = Session("lastname")
        fullname = fname & " " & lname
        txtfullname.Text = fullname


        txthousetype.Text = Session("HouseType")
        txthouseno.Text = Session("houseNo")
        connect()
        sql = "Select yearlyTax from Setting_taxation where HouseType='" & txthousetype.Text & "'"
        cmd = New SqlCommand(sql, cn)
        dr = cmd.ExecuteReader
        If dr.Read = True Then
            txtamount.Text = dr.Item("yearlyTax")
            Session("amount") = dr.Item("yearlyTax")
            dr.Close()
        End If
        disconnect()

        Generationaccount()
        txtdate.Text = Date.Today
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        If DropDownList1.SelectedIndex = 0 Then
            lblresult.Text = "Choose tax"
            Exit Sub
        ElseIf DropDownList1.SelectedIndex = 1 Then
            txtamount.Text = Session("amount") * 10


        ElseIf DropDownList1.SelectedIndex = 2 Then
            txtamount.Text = Session("amount") * 5


        ElseIf DropDownList1.SelectedIndex = 3 Then
            txtamount.Text = Session("amount") * 2

        End If
    End Sub
End Class
