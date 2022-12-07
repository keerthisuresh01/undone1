Imports System.Data
Imports System.Data.SqlClient

Partial Class ViewPerformanceScore
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim adp As New SqlDataAdapter("Select * From EmployeeTable Where employee_id = '" & Session("username") & "'", Db.con)
        Dim dt As New DataTable
        adp.Fill(dt)
        lblID.Text = dt.Rows(0)("employee_id").ToString()
        lblname.Text = dt.Rows(0)("employee_name").ToString()
        lblSpelization.Text = dt.Rows(0)("spelization").ToString()
        lblScore.Text = dt.Rows(0)("score").ToString()


    End Sub

End Class
