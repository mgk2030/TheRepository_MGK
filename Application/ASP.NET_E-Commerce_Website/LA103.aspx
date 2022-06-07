<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LA103.aspx.cs" Inherits="LearningASP.LA103" %>

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
        .auto-style4 {
            width: 695px;
        }
        body {
  background-color: antiquewhite;
}
        .auto-style5 {
            color: #800000;
        }
        .auto-style6 {
            text-align: right;
            width: 695px;
            color: #800000;
        }
        .auto-style8 {
            width: 695px;
            height: 26px;
        }
        .auto-style9 {
            width: 397px;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style11 {
            width: 397px;
            text-align: center;
        }
        .auto-style12 {
            text-align: right;
            width: 695px;
            color: #800000;
            font-size: large;
        }
        .auto-style13 {
            color: #800000;
            font-weight: bold;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong><span class="auto-style5">
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img alt="Virgin Megastores - Wikipedia" src="https://upload.wikimedia.org/wikipedia/commons/6/63/Virgin_Megastore_logo.png" /><br />
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login Page</span><br />
            <br />
            </strong>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Username</strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBoxUNa" runat="server" Width="362px"></asp:TextBox>
                </td>
                <td><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUNa" ErrorMessage="Please Enter Username" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Password</strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBoxPSa" runat="server" Width="360px" TextMode="Password"></asp:TextBox>
                </td>
                <td><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPSa" ErrorMessage="Please Enter Password" ForeColor="Maroon"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style11">
                    <strong>
                    <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="Login" Width="367px" CssClass="auto-style13" />
                    </strong>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
