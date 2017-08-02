
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub ClearButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ClearButton.Click
        ResStatusDropDownList.SelectedIndex = 0
        CostPerCreditLabel.Text = ""
        TotalTuitionLabel.Text = ""
        NumOfCreditsTextBox.Text = ""
        LateCheckBox.Checked = False
    End Sub

    Protected Sub CalculateButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles CalculateButton.Click
        Dim Calculation As Integer
        If IsValid Then
            Calculation = ResStatusDropDownList.SelectedValue * NumOfCreditsTextBox.Text + 35
        End If
        If LateCheckBox.Checked Then
            Calculation += 50
        End If
        TotalTuitionLabel.Text = Calculation
    End Sub

    Protected Sub ResStatusDropDownList_Load(sender As Object, e As EventArgs) Handles ResStatusDropDownList.Load
        CostPerCreditLabel.Text = ResStatusDropDownList.SelectedValue
    End Sub

    Protected Sub ResStatusDropDownList_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ResStatusDropDownList.SelectedIndexChanged
        CostPerCreditLabel.Text = ResStatusDropDownList.SelectedValue
    End Sub
End Class
