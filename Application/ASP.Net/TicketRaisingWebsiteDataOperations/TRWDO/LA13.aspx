<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LA13.aspx.cs" Inherits="LearningASP.LA13" %>

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
            height: 150px;
        }
        .auto-style3 {
            height: 39px;
        }
        .auto-style4 {
            width: 354px;
        }
        .auto-style5 {
            height: 39px;
            width: 354px;
        }
        .auto-style6 {
            width: 354px;
            height: 50px;
        }
        .auto-style7 {
            height: 50px;
        }
        .auto-style8 {
            width: 354px;
            height: 31px;
            color: #800000;
        }
        .auto-style9 {
            height: 31px;
        }
        .auto-style10 {
            font-size: xx-large;
            color: #800000;
        }
        .auto-style11 {
            color: #006666;
            font-size: large;
        }
        .auto-style12 {
            color: #800000;
        }
        .auto-style13 {
            width: 354px;
            color: #800000;
        }

        body {
  background-color: antiquewhite;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong><span class="auto-style10">Customer Complaint Ticket Form</span><br />
                        <br />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style4"><span class="auto-style12"><strong>&nbsp;Search</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="341px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <strong>
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Search" Width="150px" />
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <strong>
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Show All Data" />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>Id</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="341px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>Name</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="341px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>Age</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="341px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>Mobile</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Width="341px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>Vehicle Details</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Width="341px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Plate Number</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox7" runat="server" Width="341px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>Model</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" Width="341px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>Make</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" Width="341px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>Complaint Details</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server" Width="750px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" Width="150px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <strong>
                        <asp:Label ID="Label1" runat="server" ForeColor="#33CC33" Text="Message" CssClass="auto-style11"></asp:Label>
                        </strong>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [utbl]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7"></td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Id" Height="162px" Width="1394px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                <asp:BoundField DataField="VehicleDetails" HeaderText="VehicleDetails" />
                <asp:BoundField DataField="PlateNumber" HeaderText="PlateNumber" />
                <asp:BoundField DataField="Model" HeaderText="Model" />
                <asp:BoundField DataField="Make" HeaderText="Make" />
                <asp:BoundField DataField="ComplaintDetails" HeaderText="ComplaintDetails" />
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
    </form>
</body>
</html>
