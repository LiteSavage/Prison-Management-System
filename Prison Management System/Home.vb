Public Class Home
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Prisoner.Show()
        Me.Visible = False
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Visitor.Show()
        Me.Visible = False
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Connection()
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Equipments.Show()
        Me.Visible = False
    End Sub
End Class