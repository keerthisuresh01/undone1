Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient

Public Module Db
    Public con As New SqlConnection("Server=DELL\SQLEXPRESS;Database=TechnoTaskManagement;Integrated security = true")
    Public cmd As New SqlCommand("", con)
End Module
