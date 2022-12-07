Imports System.Data
Imports System.Data.SqlClient

Partial Class ViewPerformanceScore
    Inherits System.Web.UI.Page

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
        Dim adp As New SqlDataAdapter("Select * From EmployeeTable Where employee_id = '" & ddId.Text & "'", Db.con)
        Dim dt As New DataTable
        adp.Fill(dt)
        lblname.Text = dt.Rows(0)("employee_name").ToString()
        lblSpelization.Text = dt.Rows(0)("spelization").ToString()
        lblScore.Text = dt.Rows(0)("score").ToString()
    End Sub

   
End Class
