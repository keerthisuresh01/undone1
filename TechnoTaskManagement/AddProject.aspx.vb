
Partial Class AddProject
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If IsPostBack = False Then
            ShowData()
        End If
    End Sub

    Private Sub ShowData()
        txtId.Text = ""
        txtName.Text = ""
        txtClient.Text = ""
        txtduration.Text = ""
        txtdescription.Text = ""
        txttrenght.Text = ""
        txtdescription.Text = ""
    End Sub

    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Try

            Db.cmd.CommandText = "Insert Into ProjectTable Values('" + txtId.Text + "','" & txtName.Text & "','" & txtClient.Text & "','" & Calendar1.SelectedDate & "','" & txtduration.Text & "','" & txttrenght.Text & "','" & txtdescription.Text & "')  "
            Db.cmd.ExecuteNonQuery()
            lblStatus.Text = "Project Addition Successfull!"
            ShowData()
        Catch ex As Exception
            lblStatus.Text = ex.Message
        End Try
    End Sub
End Class
