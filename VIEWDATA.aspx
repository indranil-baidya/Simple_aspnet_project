<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VIEWDATA.aspx.cs" Inherits="sms.VIEWDATA" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        SEARCH AND VIEW DATA</div>
    <p>
        <asp:Label ID="Label1" runat="server" Text="SEARCH BY STUDENT&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"></asp:Label>
        <asp:DropDownList ID="STDDL" runat="server" Height="38px" Width="110px" 
            onselectedindexchanged="STDDL_SelectedIndexChanged">
        </asp:DropDownList>
    </p>
    <p>
        <asp:ListBox ID="ListBox2" runat="server" 
            onselectedindexchanged="ListBox2_SelectedIndexChanged" Width="96px"></asp:ListBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:Label ID="Label2" runat="server" Text="SEARCH BY COURSE&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"></asp:Label>
    <asp:DropDownList ID="CDDL" runat="server" Height="24px" Width="109px">
    </asp:DropDownList>
    <p>
        <asp:Label ID="Label3" runat="server" Text="SEARCH BY TEACHER&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"></asp:Label>
        <asp:DropDownList ID="TDDL" runat="server" Height="22px" Width="110px">
        </asp:DropDownList>
    </p>
    <asp:Button ID="BTN_SEARCH" runat="server" onclick="BTN_SEARCH_Click" 
        Text="SEARCH" />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    </form>
</body>
</html>
