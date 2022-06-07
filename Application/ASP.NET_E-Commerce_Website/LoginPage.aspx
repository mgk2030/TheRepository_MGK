<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="LearningASP.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            width: 380px;
        }
        .auto-style5 {
            width: 380px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Login Page<br />
            </strong>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">UserName&nbsp;&nbsp; </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxUsername" runat="server" Width="345px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Username" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="343px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Password" ForeColor="Maroon"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button_Login" runat="server" OnClick="Button_Login_Click" Text="Login" Width="208px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
