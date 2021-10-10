Imports MySql.Data.MySqlClient
Public Class login
    Private Sub Label1_Click(sender As Object, e As EventArgs)

    End Sub

    Private Sub PictureBox1_Click(sender As Object, e As EventArgs) Handles PictureBox1.Click


    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Try
            cm = New MySqlCommand("select `user_name`, `password` from `users` where `user_name` = @username AND `password` = @password", connString)
            cm.Parameters.Add("@username", MySqlDbType.VarChar).Value = txtusername.Text
            cm.Parameters.Add("@password", MySqlDbType.VarChar).Value = txtpassword.Text

            cm.ExecuteNonQuery()


            Dim adapter As New MySqlDataAdapter(cm)
            Dim table As New DataTable()

            adapter.Fill(table)

            If table.Rows.Count = 0 Then

                MessageBox.Show("Invalid Username or Password")
                txtusername.Text = ""
                txtpassword.Text = ""

            Else
                MessageBox.Show("Logged In")
                Home.Show()
                Me.Visible = False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

    Private Sub login_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Connection()
    End Sub
End Class
