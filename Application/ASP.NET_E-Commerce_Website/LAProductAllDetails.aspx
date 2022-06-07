<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LAProductAllDetails.aspx.cs" Inherits="LearningASP.LAProductAllDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
            color: #800000;
        }
        .auto-style3 {
            text-align: center;
        }
         body {
  background-color: antiquewhite;
}
        .auto-style5 {
            color: #800000;
        }
        .auto-style6 {
            width: 100px;
            height: 84px;
        }
        .auto-style7 {
            width: 100px;
            height: 94px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <strong><span class="auto-style5">
            <img alt="Virgin Megastores - Wikipedia" class="auto-style6" src="https://upload.wikimedia.org/wikipedia/commons/6/63/Virgin_Megastore_logo.png" /> </span>All Available Products At The Electronics Store <span class="auto-style5">
            <img alt="Virgin Megastores - Wikipedia" class="auto-style7" src="https://upload.wikimedia.org/wikipedia/commons/6/63/Virgin_Megastore_logo.png" /></span></strong></div>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div class="auto-style3">
            <asp:GridView ID="GridView1" runat="server" Height="143px" Width="1703px" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="QuantityAvailable" HeaderText="QuantityAvailable" SortExpression="QuantityAvailable" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                    <asp:BoundField DataField="ProductDetails" HeaderText="ProductDetails" SortExpression="ProductDetails" />
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                    <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                    <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [utbl]"></asp:SqlDataSource>
    </form>
</body>
</html>
