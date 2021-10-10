Imports MySql.Data.MySqlClient
Module Module1
    Public connString As MySqlConnection
    Public cm As MySqlCommand

    Sub Connection()
        Try
            connString = New MySqlConnection("Server=localhost; database=prisonphp; username=root; password=;")
            connString.Open()
            Home.lbltest.Text = "You're connected To Mysql"
        Catch ex As Exception
            Home.lbltest.Text = "Not connected To Mysql"
        End Try
    End Sub


End Module
