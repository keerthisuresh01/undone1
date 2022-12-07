Imports System.Data
Imports System.Data.SqlClient

Partial Class PersonalDetailTeamLeader
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim adp As New SqlDataAdapter("Select * From EmployeeTable Where employee_id = '" & Session("username") & "' ", Db.con)
        Dim dt As New DataTable
        adp.Fill(dt)
        Label1.Text = dt.Rows(0)(0).ToString()
        Label2.Text = dt.Rows(0)(1).ToString()
        Label3.Text = dt.Rows(0)(2).ToString()
        Label4.Text = dt.Rows(0)(3).ToString()
        Label5.Text = dt.Rows(0)(4).ToString()
        Label6.Text = dt.Rows(0)(5).ToString()
        Label7.Text = dt.Rows(0)(6).ToString()
        Label8.Text = dt.Rows(0)(7).ToString()
        Label9.Text = dt.Rows(0)(8).ToString()
    End Sub
End Class
