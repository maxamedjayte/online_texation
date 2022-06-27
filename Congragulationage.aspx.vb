
Partial Class Congragulationage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim fname, lname, fullname As String
        fname = Session("FirstName")
        lname = Session("lastname")
        fullname = fname & " " & lname
        lblname.Text = fullname
        lblamount.Text = Session("one")
        lblhousetye.Text = Session("HouseType")
        lblhouseno.Text = Session("houseNo")
    End Sub
End Class
