Imports System.Data.SqlClient
Imports System.Data
Imports CrystalDecisions.CrystalReports.Engine
Partial Class HouseRT
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
        ' Response.Redirect("HouseCrystalReport.rpt")

    End Sub

    Protected Sub CrystalReportViewer1_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles CrystalReportViewer1.Init

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim rpt As New ReportDocument
        connect()

        If DropDownList1.SelectedIndex = 1 Then
            sql = "select * from TaxReg where houseNo='" & TextBox1.Text & "'"
            da = New SqlDataAdapter(sql, cn)
            ds.Clear()
            da.Fill(ds, "ali")
            rpt.Load(Server.MapPath("Copy of TaxpayerCrystalReport.rpt"))
            rpt.SetDataSource(ds.Tables("ali"))
            CrystalReportViewer1.ReportSource = rpt
            'ElseIf DropDownList1.SelectedIndex = 2 Then

            'sql = "select * from HouseRegisteration where [DistrictNmae]='" & TextBox1.Text & "'"
            'da = New SqlDataAdapter(sql, cn)
            'ds.Clear()
            'da.Fill(ds, "ali")
            'rpt.Load(Server.MapPath("HouseCrystalReport.rpt"))
            'rpt.SetDataSource(ds.Tables("ali"))
            'CrystalReportViewer1.ReportSource = rpt

            'ElseIf DropDownList1.SelectedIndex = 3 Then

            'sql = "select * from HouseRegisteration where [housetype]='" & TextBox1.Text & "'"
            'da = New SqlDataAdapter(sql, cn)
            'ds.Clear()
            'da.Fill(ds, "ali")
            'rpt.Load(Server.MapPath("HouseCrystalReport.rpt"))
            'rpt.SetDataSource(ds.Tables("ali"))
            'CrystalReportViewer1.ReportSource = rpt

            'Else
            lblresult.Text = "Search is not found please check your spelling"

        End If

    End Sub
End Class
