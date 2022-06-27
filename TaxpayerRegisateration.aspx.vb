Imports System.Data
Imports System.Data.SqlClient
Partial Class TaxpayerRegisateration
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






        connect()



        sql = "Select houseNo from TaxReg where houseNo='" & txthouseno.Text & "' "
        cmd = New SqlCommand(sql, cn)
        dr = cmd.ExecuteReader
        If dr.Read = True Then
            lblresult.Text = "This house number is already exist "
            txthouseno.Text = ""
            txthouseno.Focus()
            Exit Sub
            dr.Close()
        End If



        connect()
        Dim gender As String
        If RadioButton1.Checked = True Then

            gender = "Male"
        ElseIf RadioButton2.Checked = True Then
            gender = "Female"
        End If
        Dim status As String
        status = " New"
        If DropDownDepartment.SelectedIndex = 0 Then
            lblresult.Text = "Please Choose secret Question"
            Exit Sub
        ElseIf DropDownHousetype.SelectedIndex = 0 Then
            lblresult.Text = "Please Choose secret Question"
            Exit Sub
            lblresult.Text = "Please Choose secret Question"
        ElseIf DropDowndistrict.SelectedIndex = 0 Then
            lblresult.Text = "Please Choose secret Question"
        End If
        sql = "insert into TaxReg values('" & txtID.Text & "', '" & txtfname.Text & "','" & txtlname.Text & "','" & DropDowndistrict.Text & "','" & txthouseno.Text & "','" & DropDownHousetype.Text & "','" & DropDownDepartment.Text & "','" & gender & "','" & txttell.Text & "','" & txtEmail.Text & "','" & txtusername.Text & "','" & txtpassword.Text & "','" & DropDownSQ.Text & "','" & txtsecretAn.Text & "','" & txtdate.Text & "')"
        cmd = New SqlCommand(sql, cn)
        cmd.ExecuteNonQuery()
        lblresult.Text = "Data has been successfuly asved"
        clear()
        Generationaccount()
        disconnect()
    End Sub
    Sub clear()

        txtID.Text = ""
        txtfname.Text = ""
        txtlname.Text = ""
        DropDowndistrict.SelectedIndex = 0
        txthouseno.Text = ""
        DropDownHousetype.SelectedIndex = 0
        DropDownDepartment.SelectedIndex = 0
        '  gender()
        txtusername.Text = ""
        txtpassword.Text = ""
        DropDownSQ.SelectedIndex = 0
        txtsecretAn.Text = ""
        '  txtdate.Text





    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtdate.Text = Date.Today
        Generationaccount()
    End Sub
    Public Sub Generationaccount()
        connect()
        Dim maxid As String
        maxid = "select 'A' + REPLICATE('0',4-len(cast(isnull(max(cast(right([ID],4) as int)),0) + 1 as varchar(10)))) + cast(isnull(max(cast(right([ID],4) as int)),0) + 1 as varchar(10)) [ID] from TaxReg"
        Dim sqlreader As SqlDataReader
        cmd = New SqlCommand
        cmd.Connection = cn
        cmd.CommandText = maxid
        sqlreader = cmd.ExecuteReader
        If sqlreader.Read Then
            txtID.Text = sqlreader("ID")

        End If
    End Sub
End Class
