<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LA101.aspx.cs" Inherits="LearningASP.WebForm101" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 31px;
        }
        .auto-style3 {
            text-align: right;
            width: 441px;
        }
        .auto-style4 {
            height: 31px;
            text-align: right;
            width: 441px;
            color: #800000;
        }
        .auto-style5 {
            width: 689px;
        }
        body {
  background-color: antiquewhite;
}
        .auto-style6 {
            width: 513px;
        }
        .auto-style7 {
            height: 31px;
            width: 513px;
        }
        .auto-style8 {
            text-align: right;
            width: 441px;
            height: 74px;
            color: #800000;
        }
        .auto-style9 {
            width: 513px;
            height: 74px;
        }
        .auto-style10 {
            height: 74px;
        }
        .auto-style11 {
            text-align: right;
            width: 441px;
            height: 93px;
        }
        .auto-style12 {
            width: 513px;
            height: 93px;
            text-align: center;
            font-size: xx-large;
            color: #800000;
        }
        .auto-style13 {
            height: 93px;
        }
        .auto-style14 {
            text-align: right;
            width: 441px;
            color: #800000;
        }
        .auto-style15 {
            color: #800000;
        }
        .auto-style17 {
            text-align: center;
        }
        .auto-style18 {
            width: 441px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12">
                        <strong>Registration</strong></td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">Username:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxUN" runat="server" Width="240px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="Username is Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Email:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBoxEM" runat="server" Width="240px"></asp:TextBox>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEM" ErrorMessage="Email is Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEM" ErrorMessage="You Must Enter a Valid Email ID" ForeColor="Maroon" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Password:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxPS" runat="server" TextMode="Password" Width="240px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPS" ErrorMessage="Password is Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Confirm Password:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBoxCP" runat="server" TextMode="Password" Width="240px"></asp:TextBox>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxCP" ErrorMessage="Confirm Password is Required" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPS" ControlToValidate="TextBoxCP" ErrorMessage="Both Password Must Be Same" ForeColor="Maroon"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Country:</td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownListCO" runat="server" Height="31px" Width="248px">
                            <asp:ListItem>Select Country</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                            <asp:ListItem>Germany</asp:ListItem>
                            <asp:ListItem>France</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCO" ErrorMessage="Country is Required" ForeColor="Maroon" InitialValue="Select Country"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="250px" CssClass="auto-style15" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Reset" Width="250px" CssClass="auto-style15" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p class="auto-style17">
            <strong><span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="Virgin Megastores - Wikipedia" src="https://upload.wikimedia.org/wikipedia/commons/6/63/Virgin_Megastore_logo.png" /></span></strong></p>
</body>
</html>
