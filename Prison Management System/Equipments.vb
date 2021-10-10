Imports MySql.Data.MySqlClient

Public Class Equipments
    Dim lst As New ListViewItem
    Public coni As New MySqlConnection("Server=localhost; database=prisonphp; username=root; password=;")
    Dim str As String


    Private Sub Equipments_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Connection()
        coni.Open()
        Try
            str = "Select `name` from `prisoner` group by `name`"
            Dim da As New MySqlDataAdapter(str, coni)
            Dim dt As New DataTable
            da.Fill(dt)

            If dt.Rows.Count > 0 Then
                ComboBox1.DataSource = dt
                ComboBox1.DisplayMember = "name"
                ComboBox1.ValueMember = ""
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        coni.Close()


    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Connection()
        Try
            cm = New MySqlCommand("insert into equipments(eqid, equipment_name, equipment_use, prisonername, timeb, timer) values('" & equipid.Text & "', '" & eqname.Text & "','" & purpose.Text & "','" & ComboBox1.Text & "','" & borrowed.Text & "','" & datereturn.Text & "')", connString)
            cm.ExecuteNonQuery()
            MsgBox("Success yeahey")
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        'UPDATE 

        Try
            cm = New MySqlCommand("update equipments set equipment_name='" & eqname.Text & "', equipment_use= '" & purpose.Text & "', prisonername= '" & ComboBox1.Text & "', timeb= '" & borrowed.Text & "', timer= '" & datereturn.Text & "' where eqid= '" & equipid.Text & "'", connString)
            cm.ExecuteNonQuery()
            MsgBox("Success yeahey")
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try


    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        ' DELETE

        Try
            cm = New MySqlCommand("delete from equipments where eqid= '" & equipid.Text & "'", connString)
            cm.ExecuteNonQuery()
            MsgBox("Success yeahey")
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try


    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        eqname.Text = ""
        purpose.Text = ""
        ComboBox1.Text = ""
        borrowed.ResetText()
        datereturn.ResetText()
        equipid.Text = ""
    End Sub

    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        ' DISPLAY YEAHEY
        Try
            cm = New MySqlCommand("Select * from equipments", connString)
            Dim dr As MySqlDataReader = cm.ExecuteReader
            ListView1.Items.Clear()
            While dr.Read
                lst = ListView1.Items.Add(dr.Item(0).ToString)
                lst.SubItems.Add(dr.Item(1).ToString)
                lst.SubItems.Add(dr.Item(2).ToString)
                lst.SubItems.Add(dr.Item(3).ToString)
                lst.SubItems.Add(dr.Item(4).ToString)
                lst.SubItems.Add(dr.Item(5).ToString)

            End While
            dr.Close()


        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

    Private Sub ListView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListView1.SelectedIndexChanged
        'DISPLAY + EASY UPDATE

        Dim pakita As Integer
        If ListView1.SelectedItems.Count = 0 Then Exit Sub
        With ListView1
            pakita = .SelectedIndices(0)
            equipid.Text = .Items(pakita).Text
            eqname.Text = .Items(pakita).SubItems(1).Text
            purpose.Text = .Items(pakita).SubItems(2).Text
            ComboBox1.Text = .Items(pakita).SubItems(3).Text
            borrowed.Text = .Items(pakita).SubItems(4).Text
            datereturn.Text = .Items(pakita).SubItems(5).Text
        End With
    End Sub

    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Home.Show()
        Me.Visible = False
    End Sub
End Class