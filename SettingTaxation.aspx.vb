Imports System.Data
Imports System.Data.SqlClient
Partial Class SettingTaxation
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

    Public Sub Generationaccount()
        connect()
        Dim maxid As String
        maxid = "select 'A' + REPLICATE('0',4-len(cast(isnull(max(cast(right([ID],4) as int)),0) + 1 as varchar(10)))) + cast(isnull(max(cast(right([ID],4) as int)),0) + 1 as varchar(10)) [ID] from Setting_taxation"
        Dim sqlreader As SqlDataReader
        cmd = New SqlCommand
        cmd.Connection = cn
        cmd.CommandText = maxid
        sqlreader = cmd.ExecuteReader
        If sqlreader.Read Then
            txtid.Text = sqlreader("ID")

        End If
    End Sub
    Private Sub Display()
        connect()
        cmd = New SqlCommand("select * from Setting_taxation", cn)
        cmd.CommandType = CommandType.Text
        Dim dreader As SqlDataReader
        dreader = cmd.ExecuteReader()
        If dreader.HasRows = True Then
            GridView1.Visible = True
            Me.GridView1.DataSource = dreader
            GridView1.DataBind()
        Else
            GridView1.Visible = False
        End If
        dreader.Close()
        disconnect()
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        connect()
        sql = "update Setting_taxation set houseno = '" & txthouseno.Text & "', HouseType = '" & txthousetype.Text & "', yearlyTax = '" & txtyearly.Text & "', Repair_insurence = '" & txtrepair.Text & "', Taxation_new_house = '" & txtnewHouse.Text & "', Date = '" & txtdate.Text & "' where ID = '" & txtid.Text & "'"
        cmd = New SqlCommand(sql, cn)
        cmd.ExecuteNonQuery()
        lblresult.Text = "Data has been successfuly udated"
        clear()
        Display()
        Generationaccount()
        disconnect()
    End Sub
    Sub clear()
        txthouseno.Text = ""
        txthousetype.Text = ""
        txtyearly.Text = ""
        txtrepair.Text = ""
        txtnewHouse.Text = ""
        txtdate.Text = ""
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Generationaccount()
        Display()
        txtdate.Text = Date.Today
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        connect()

        sql = "insert into Setting_taxation values('" & txtid.Text & "', '" & txthouseno.Text & "', '" & txthousetype.Text & "','" & txtyearly.Text & "','" & txtrepair.Text & "','" & txtnewHouse.Text & "','" & txtdate.Text & "')"
        cmd = New SqlCommand(sql, cn)
        cmd.ExecuteNonQuery()
        lblresult.Text = "Data has been successfuly asved"
        clear()
        Display()
        Generationaccount()
        disconnect()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        txtid.Text = Me.GridView1.SelectedRow.Cells(1).Text.ToString
        txthouseno.Text = Me.GridView1.SelectedRow.Cells(2).Text.ToString
        txthousetype.Text = Me.GridView1.SelectedRow.Cells(3).Text.ToString
        txtyearly.Text = Me.GridView1.SelectedRow.Cells(4).Text.ToString
        txtrepair.Text = Me.GridView1.SelectedRow.Cells(5).Text.ToString
        txtnewHouse.Text = Me.GridView1.SelectedRow.Cells(6).Text.ToString
        txtdate.Text = Me.GridView1.SelectedRow.Cells(7).Text.ToString
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        
    End Sub


End Class
