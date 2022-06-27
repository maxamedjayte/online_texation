Imports System.Data
Imports System.Data.SqlClient
Partial Class HouseRegisteration
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
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Generationaccount()
        txtDate.Text = Date.Today
    End Sub
    Public Sub Generationaccount()
        connect()
        Dim maxid As String
        maxid = "select 'H' + REPLICATE('0',4-len(cast(isnull(max(cast(right([houseno],4) as int)),0) + 1 as varchar(10)))) + cast(isnull(max(cast(right([houseno],4) as int)),0) + 1 as varchar(10)) [houseno] from HouseRegisteration"
        Dim sqlreader As SqlDataReader
        cmd = New SqlCommand
        cmd.Connection = cn
        cmd.CommandText = maxid
        sqlreader = cmd.ExecuteReader
        If sqlreader.Read Then
            txthouseNo.Text = sqlreader("houseno")

        End If
    End Sub
    Sub clear()


        txtDisname.Text = ""
        txtRef.Text = ""
        txthouseNo.Text = ""
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        connect()
        sql = "insert into HouseRegisteration values('" & txthouseNo.Text & "','" & txtDisname.Text & "', '" & txtRef.Text & "','" & DropDownHousetype.Text & "','" & txtDate.Text & "')"
        cmd = New SqlCommand(sql, cn)
        cmd.ExecuteNonQuery()
        lblresult.Text = "Data has been successfuly asved"
        clear()
        Generationaccount()
        disconnect()
    End Sub
End Class
