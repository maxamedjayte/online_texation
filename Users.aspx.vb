Imports System.Data
Imports System.Data.SqlClient
Partial Class Users
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
        txtdate.Text = Date.Today
        Display()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        If IsNumeric(txtfname.Text) = True Then
            lblresult.Text = "number is not allowed here"
            txtfname.Text = ""
            txtfname.Focus()
            Exit Sub
        End If

        If IsNumeric(txtlname.Text) = True Then
            lblresult.Text = "number is not allowed here"
            txtlname.Text = ""
            txtlname.Focus()
            Exit Sub
        End If
        If IsNumeric(txttell.Text) = False Then
            lblresult.Text = "character is not allowed here"
            txttell.Text = ""
            txttell.Focus()
            Exit Sub
        End If

        If IsNumeric(txtusername.Text) = True Then
            lblresult.Text = "number is not allowed here"
            txtusername.Text = ""
            txtusername.Focus()
            Exit Sub
        End If
        connect()
        sql = "insert into users values('" & txtid.Text & "', '" & txtfname.Text & "', '" & txtlname.Text & "','" & txttell.Text & "','" & txtEmail.Text & "','" & txttype.Text & "','" & txtusername.Text & "','" & txtpassword.Text & "','" & txtSQ.Text & "','" & txtSA.Text & "','" & txtdate.Text & "')"
        cmd = New SqlCommand(sql, cn)
        cmd.ExecuteNonQuery()
        lblresult.Text = "Data has been successfuly asved"
        clear()
        Display()
        Generationaccount()
        disconnect()
    End Sub
    Private Sub Display()
        connect()
        cmd = New SqlCommand("select UserID, fname, lname, usertype, username, Password,Date from users", cn)
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
    End Sub
    Sub clear()

        txtid.Text = ""
        txtfname.Text = ""
        txtlname.Text = ""
        txttell.Text = ""
        txtEmail.Text = ""
        txttype.Text = ""
        txtusername.Text = ""
        txtpassword.Text = ""
        txtconfirm.Text = ""
        txtSQ.Text = ""
        txtSA.Text = ""
        txtdate.Text = ""


    End Sub


    Public Sub Generationaccount()
        connect()
        Dim maxid As String
        maxid = "select 'A' + REPLICATE('0',4-len(cast(isnull(max(cast(right([UserID],4) as int)),0) + 1 as varchar(10)))) + cast(isnull(max(cast(right([UserID],4) as int)),0) + 1 as varchar(10)) [UserID] from users"
        Dim sqlreader As SqlDataReader
        cmd = New SqlCommand
        cmd.Connection = cn
        cmd.CommandText = maxid
        sqlreader = cmd.ExecuteReader
        If sqlreader.Read Then
            txtid.Text = sqlreader("UserID")

        End If
    End Sub
End Class
