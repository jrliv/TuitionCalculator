<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>College Tuition Calculator</title>
    <style type="text/css">
        .style1
        {
            width: 70%;
            height: 287px;
        }
        .style4
        {
            width: 293px;
        }
        .style8
        {
            width: 293px;
            height: 23px;
        }
        .style9
        {
            width: 207px;
        }
        .style10
        {
            width: 207px;
            height: 23px;
        }
        .style11
        {
            width: 207px;
            height: 31px;
            text-align: center;
        }
        .style13
        {
            width: 293px;
            height: 31px;
        }
        .style14
        {
            width: 161px;
            height: 31px;
        }
        .style15
        {
            width: 161px;
        }
        .style16
        {
            width: 161px;
            height: 23px;
        }
        .style17
        {
            width: 207px;
            color: #CC0000;
            text-align: center;
        }
        .auto-style1 {
            width: 207px;
            text-align: center;
        }
        .auto-style2 {
            width: 207px;
            height: 23px;
            text-align: center;
        }
        .auto-style3 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 240px; text-align: center; font-size: xx-large; width: 990px;">
    
        <br />
    
        <br />
        <br />
        <span class="auto-style3">College
        Tuition Calculator</span><br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    <table class="style1">
        <tr>
            <td class="style11">
                Residency Status</td>
            <td class="style14">
                <asp:DropDownList ID="ResStatusDropDownList" runat="server" AutoPostBack="True" 
                    Height="22px" Width="128px">
                    <asp:ListItem Value="100">In County</asp:ListItem>
                    <asp:ListItem Value="150">In State</asp:ListItem>
                    <asp:ListItem Value="200">Out of State</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style13">
                Cost Per Credit: $<asp:Label ID="CostPerCreditLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                Number of Credits:</td>
            <td class="style16">
                <asp:TextBox ID="NumOfCreditsTextBox" runat="server"></asp:TextBox>
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                Late Status:</td>
            <td class="style15">
                <asp:CheckBox ID="LateCheckBox" runat="server" 
                    Text="Late Registration ($50) " />
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                Registration Fee:</td>
            <td class="style15">
                $35</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                Total Tuition:</td>
            <td class="style15">
                $<asp:Label ID="TotalTuitionLabel" runat="server"></asp:Label>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="NumOfCreditsTextBox" Display="Dynamic" 
        ErrorMessage="Enter the number of credits you will take."></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RangeValidator ID="RangeValidator1" runat="server" 
        ControlToValidate="NumOfCreditsTextBox" Display="Dynamic" 
        ErrorMessage="Must have 1 to 18 credit hours." MaximumValue="18" 
        MinimumValue="1" Type="Double"></asp:RangeValidator>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="CalculateButton" runat="server" Height="26px" Text="Calculate" 
        Width="98px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="ClearButton" runat="server" Height="27px" Text="Clear" 
        Width="98px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    </form>
</body>
</html>
