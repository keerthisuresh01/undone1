Imports System.Data
Imports System.Data.SqlClient

Partial Class ViewEmployee
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If IsPostBack = False Then
            Dim adp As New SqlDataAdapter("Select * From EmployeeTable", Db.con)
            Dim dt As New DataTable
            adp.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()

            DropDownList1.Items.Clear()
            Db.cmd.CommandText = "Select DISTINCT employee_id From EmployeeTable"
            Dim r As SqlDataReader = Db.cmd.ExecuteReader
            While r.Read
                DropDownList1.Items.Add(r(0))
            End While
            r.Close()
        End If

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

        Dim adp As New SqlDataAdapter("Select * From EmployeeTable where employee_id = '" & DropDownList1.Text & "' ", Db.con)
        Dim dt As New DataTable
        adp.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()


    End Sub

    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click

        Db.cmd.CommandText = "Delete From EmployeeTable Where employee_id = '" & DropDownList1.SelectedItem.ToString() & "' "
        Db.cmd.ExecuteNonQuery()

    End Sub
End Class
