<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TAUGHTBY.aspx.cs" Inherits="sms.TAUGHTBY" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        ASSINGMENT OF TEACHER</div>
    <p>
        <asp:Label ID="Label1" runat="server" Text="TEACHER NAME &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="111px" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
    </p>
    <asp:Label ID="Label2" runat="server" Text="COURSE NAME &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" Height="39px" Width="111px" 
        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
    </asp:DropDownList>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Done" />
    </p>
    </form>
</body>
</html>
