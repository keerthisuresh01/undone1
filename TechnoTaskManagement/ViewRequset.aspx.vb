Imports System.Data
Imports System.Data.SqlClient

Partial Class ViewProject
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If IsPostBack = False Then
            Dim adp As New SqlDataAdapter("Select * From RequestTable ", Db.con)
            Dim dt As New DataTable
            adp.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()

            DropDownList1.Items.Clear()
            DropDownList1.Items.Add("")
            Db.cmd.CommandText = "Select DISTINCT request_id From RequestTable "
            Dim r As SqlDataReader = Db.cmd.ExecuteReader
            While r.Read
                DropDownList1.Items.Add(r(0))
            End While
            r.Close()
        End If

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

        lblStstus.Text = "-"
        Dim adp As New SqlDataAdapter("Select * From RequestTable where request_id = '" & DropDownList1.Text & "' ", Db.con)
        Dim dt As New DataTable
        adp.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()

    End Sub

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click

        If DropDownList1.Text <> "" Then

            Db.cmd.CommandText = "Update RequestTable Set reply = '" & TextBox1.Text & "' Where request_id = '" & DropDownList1.Text & "' "
            Db.cmd.ExecuteNonQuery()
            TextBox1.Text = ""
            lblStstus.Text = "Reply Successfull!"

        End If
    End Sub
End Class
