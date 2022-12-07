Imports System.Data
Imports System.Data.SqlClient

Partial Class AddPerformanceScore
    Inherits System.Web.UI.Page

    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click

        If lblname.Text <> "-" Then

            Db.cmd.CommandText = "Update EmployeeTable Set Score = score + '" & txtScore.Text & "' Where employee_id = '" & ddId.Text & "' "
            Db.cmd.ExecuteNonQuery()
            lblStatus.Text = "Score Updated Successfully!"
            lblname.Text = "-"
            lblSpelization.Text = "-"
            txtScore.Text = ""
            ddId.SelectedIndex = 0

        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If IsPostBack = False Then
            ddId.Items.Add("")
            Db.cmd.CommandText = "Select DISTINCT employee_id From EmployeeTable"
            Dim r As SqlDataReader = Db.cmd.ExecuteReader
            While r.Read
                ddId.Items.Add(r(0))
            End While
            r.Close()
        End If

    End Sub

    Protected Sub ddId_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddId.SelectedIndexChanged

        If ddId.Text <> "" Then

            Db.cmd.CommandText = "Select * From EmployeeTable Where employee_id = '" & ddId.Text & "'"
            Dim adp As New SqlDataAdapter(Db.cmd)
            Dim dt As New DataTable
            adp.Fill(dt)
            lblname.Text = dt.Rows(0)("employee_name").ToString()
            lblSpelization.Text = dt.Rows(0)("spelization").ToString()

        Else
            lblname.Text = "-"
            lblSpelization.Text = "-"
            txtScore.Text = ""
        End If
    End Sub
End Class
