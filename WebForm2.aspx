<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="sms.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" BackColor="#00CC00" 
        Text="STUDENT MANAGEMENT SYSTEM"></asp:Label>
    <asp:Calendar ID="Calendar1" runat="server" style="margin-left: 263px">
    </asp:Calendar>
    <p>
        <asp:Button ID="Button1" runat="server" Height="49px" onclick="Button1_Click" 
            Text="Add Student" Width="208px" />
        <asp:Button ID="Button2" runat="server" Height="49px" onclick="Button2_Click" 
            style="margin-left: 16px; margin-right: 10px; margin-top: 0px" 
            Text="Add Teacher" Width="208px" />
        <asp:Button ID="Button3" runat="server" Height="49px" onclick="Button3_Click" 
            style="margin-left: 6px" Text="Add Course" Width="208px" />
    </p>
    <asp:Button ID="Button4" runat="server" Height="49px" onclick="Button4_Click" 
        Text="Teacher's Assignment" Width="208px" />
    <asp:Button ID="Button5" runat="server" Height="49px" onclick="Button5_Click" 
        style="margin-left: 17px" Text="Search" Width="208px" />
    </form>
</body>
</html>
