Imports System.Data
Imports System.Data.SqlClient

Partial Class ViewProject
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If IsPostBack = False Then
            Dim adp As New SqlDataAdapter("Select * From RequestTable Where employee_id = '" & Session("username") & "' ", Db.con)
            Dim dt As New DataTable
            adp.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()

            DropDownList1.Items.Clear()
            Db.cmd.CommandText = "Select DISTINCT request_id From RequestTable Where employee_id = '" & Session("username") & "' "
            Dim r As SqlDataReader = Db.cmd.ExecuteReader
            While r.Read
                DropDownList1.Items.Add(r(0))
            End While
            r.Close()
        End If

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

        Dim adp As New SqlDataAdapter("Select * From RequestTable where request_id = '" & DropDownList1.Text & "' ", Db.con)
        Dim dt As New DataTable
        adp.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()

    End Sub

End Class
