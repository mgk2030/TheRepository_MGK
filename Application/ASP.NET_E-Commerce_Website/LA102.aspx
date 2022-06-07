<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LA102.aspx.cs" Inherits="LearningASP.LA102" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
  background-color: antiquewhite;
}
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
            color: #800000;
        }
        .auto-style3 {
            width: 100px;
            height: 88px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <img alt="Virgin Megastores - Wikipedia" class="auto-style3" src="https://upload.wikimedia.org/wikipedia/commons/6/63/Virgin_Megastore_logo.png" /><span class="auto-style2"><strong> All User Data</strong></span><br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <div>
&nbsp;<div class="auto-style1">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSourceRegistration" ForeColor="#333333" GridLines="None" Height="535px" Width="1697px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSourceRegistration" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringRegistration %>" SelectCommand="SELECT * FROM [UserData]"></asp:SqlDataSource>
    </form>
</body>
</html>
