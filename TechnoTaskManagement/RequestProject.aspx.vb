Imports System.Data
Imports System.Data.SqlClient

Partial Class RequestProject
    Inherits System.Web.UI.Page

    Protected Sub btnRequest_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRequest.Click

        Db.cmd.CommandText = "Select COUNT(*) From RequestTable"
        Dim id As Integer = Db.cmd.ExecuteScalar()
        Dim r_id As String = "Requset" & id
        Db.cmd.CommandText = "Insert Into RequestTable Values('" & r_id & "','" & Session("username") & "','" & DropDownList1.Text & "','')"
        Db.cmd.ExecuteNonQuery()
        lblStatus.Text = "Request given Successfully!"

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If IsPostBack = False Then
            Dim adp As New SqlDataAdapter("Select * From ProjectTable", Db.con)
            Dim dt As New DataTable
            adp.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()

            DropDownList1.Items.Clear()
            Db.cmd.CommandText = "Select DISTINCT project_id From ProjectTable"
            Dim r As SqlDataReader = Db.cmd.ExecuteReader
            While r.Read
                DropDownList1.Items.Add(r(0))
            End While
            r.Close()
        End If

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

        lblStatus.Text = "-"
        Dim adp As New SqlDataAdapter("Select * From ProjectTable where project_id = '" & DropDownList1.Text & "' ", Db.con)
        Dim dt As New DataTable
        adp.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()

    End Sub
End Class
