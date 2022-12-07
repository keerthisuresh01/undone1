
Partial Class Home
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Db.con.State <> Data.ConnectionState.Open Then
            Db.con.Open()
        End If

    End Sub
End Class
