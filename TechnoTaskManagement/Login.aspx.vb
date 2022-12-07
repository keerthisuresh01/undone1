Imports System.Data
Imports System.Data.SqlClient

Partial Class Login
    Inherits System.Web.UI.Page

   
    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click

        Try
            If ddType.Text = "Admin" Then
                Db.cmd.CommandText = "Select COUNT(*) From AdminTable Where username = '" & txtUsername.Text & "' and password = '" & txtPassword.Text & "' "
                If Db.cmd.ExecuteScalar() > 0 Then
                    Session("username") = txtUsername.Text
                    Response.Redirect("Admin.aspx")
                End If
            ElseIf ddType.Text = "Team Leader" Then
                Db.cmd.CommandText = "Select COUNT(*) From EmployeeTable Where employee_id = '" & txtUsername.Text & "' and password = '" & txtPassword.Text & "' and designation = 'TEAM LEADER' "
                If Db.cmd.ExecuteScalar() > 0 Then
                    Session("username") = txtUsername.Text
                    Response.Redirect("ViewPersonalDetailLeader.aspx")
                End If
            ElseIf ddType.Text = "Employee" Then
                Db.cmd.CommandText = "Select COUNT(*) From EmployeeTable Where employee_id = '" & txtUsername.Text & "' and password = '" & txtPassword.Text & "' and designation != 'TEAM LEADER' "
                If Db.cmd.ExecuteScalar() > 0 Then
                    Session("username") = txtUsername.Text
                    Response.Redirect("ViewPersonalDetailEmployee.aspx")
                End If
            End If
        Catch ex As Exception
            lblstatus.Text = ex.Message
        End Try

    End Sub
End Class
