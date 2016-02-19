<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enrollment.aspx.cs" Inherits="sms.enrollment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Student    ID &nbsp;&nbsp;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="117px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Assignment of Course &nbsp&nbsp&nbsp"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Width="146px">
        </asp:DropDownList>
    </p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Done" />
    </form>
</body>
</html>
