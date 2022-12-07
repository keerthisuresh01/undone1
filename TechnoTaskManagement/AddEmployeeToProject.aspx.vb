Imports System.Data
Imports System.Data.SqlClient

Partial Class AddEmployeeToProject
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If IsPostBack = False Then
            ShowData()
        End If
       
    End Sub

    Private Sub ShowData()

        ddProjectId.Items.Clear()
        ddProjectId.Items.Add("")
        Db.cmd.CommandText = "Select DISTINCT project_id From ProjectTable"
        Dim r As SqlDataReader = Db.cmd.ExecuteReader
        While r.Read
            ddProjectId.Items.Add(r(0))
        End While
        r.Close()
        ddEmployeeID.Items.Clear()
        ddSpelization.SelectedIndex = 0
        lblCurrentStrength.Text = "-"
        lblDesc.Text = "-"
        lblDuration.Text = "-"
        lblEmpName.Text = "-"
        lblprojectname.Text = "-"
        lblScore.Text = "-"
        lblStartDate.Text = "-"
        lblTotalStrength.Text = "-"

    End Sub

    Protected Sub ddProjectId_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddProjectId.SelectedIndexChanged

        Db.cmd.CommandText = "Select COUNT(*) From ProjectTable Where project_id = '" & ddProjectId.Text & "' "
        If Db.cmd.ExecuteScalar() > 0 Then

            Dim adp As New SqlDataAdapter("Select * From ProjectTable Where project_id = '" & ddProjectId.Text & "'", Db.con)
            Dim dt As New DataTable
            adp.Fill(dt)
            lblprojectname.Text = dt.Rows(0)("project_name").ToString()
            lblStartDate.Text = dt.Rows(0)("start_date").ToString()
            lblDuration.Text = dt.Rows(0)("duration").ToString()
            lblStartDate.Text = dt.Rows(0)("start_date").ToString()
            lblTotalStrength.Text = dt.Rows(0)("strength").ToString()
            lblDesc.Text = dt.Rows(0)("description").ToString()

            Db.cmd.CommandText = "Select COUNT(*) From ProjectMemberTable Where project_id = '" & ddProjectId.Text & "' "
            lblCurrentStrength.Text = Db.cmd.ExecuteScalar()

        End If
    End Sub

    Protected Sub ddSpelization_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddSpelization.SelectedIndexChanged

        ddEmployeeID.Items.Clear()
        ddEmployeeID.Items.Add("")

        Db.cmd.CommandText = "Select employee_id From EmployeeTable Where spelization = '" & ddSpelization.Text & "'"
        Dim r As SqlDataReader = Db.cmd.ExecuteReader
        While r.Read
            ddEmployeeID.Items.Add(r(0))
        End While
        r.Close()

    End Sub

    Protected Sub ddEmployeeID_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddEmployeeID.SelectedIndexChanged

        Dim adp As New SqlDataAdapter("Select * From EmployeeTable Where employee_id = '" & ddEmployeeID.Text & "'", Db.con)
        Dim dt As New DataTable
        adp.Fill(dt)
        lblEmpName.Text = dt.Rows(0)("employee_name").ToString()
        lblScore.Text = dt.Rows(0)("score").ToString()

    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click

        Db.cmd.CommandText = "Insert Into ProjectMemberTable Values('" & ddProjectId.Text & "','" & ddEmployeeID.Text & "') "
        Db.cmd.ExecuteNonQuery()
        lblStatus.Text = "Member Added Successfully!"
        ShowData()

    End Sub
End Class
