Imports System.Data
Imports System.Data.SqlClient

Partial Class AddEmployee
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            ShowData()
        End If
    End Sub

    Private Sub ShowData()
        ddGender.Items.Add("")
        ddGender.SelectedIndex = 2
        ddDesignation.Items.Add("")
        ddDesignation.SelectedIndex = 4
        ddSpelization.Items.Add("")
        ddSpelization.SelectedIndex = 6
        txtId.Text = ""
        txtName.Text = ""
        txtcontactno.Text = ""
        txtEmailID.Text = ""
        txtPassword.Text = ""
    End Sub

    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click

        Try
            Db.cmd.CommandText = "Insert Into EmployeeTable Values('" & txtId.Text & "','" & txtName.Text & "','" & ddGender.Text & "','" & ddDesignation.Text & "','" & ddSpelization.Text & "','" & txtcontactno.Text & "','" & txtEmailID.Text & "','" & txtPassword.Text & "',0)"
            Db.cmd.ExecuteNonQuery()
            lblStatus.Text = "Employee Added successsfully!"
            ShowData()

        Catch ex As Exception
            lblStatus.Text = ex.Message
        End Try

    End Sub

End Class
