<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="sms.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Enter Student Name"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 62px" 
        ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    <div>
    
    </div>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" 
        style="margin-left: 192px" Width="111px" />
    <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
        ForeColor="#333333" GridLines="None" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            
            

            
           
    </asp:GridView>
    <br />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Enter Course Name"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Height="21px" 
        style="margin-left: 59px" Width="128px"></asp:TextBox>
    <p>
        <asp:Button ID="Button2" runat="server" Height="26px" onclick="Button2_Click" 
            style="margin-left: 187px" Text="Search" Width="110px" />
    </p>
    <asp:Label ID="Label4" runat="server" Text="Enter Teacher Name"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 53px"></asp:TextBox>
    <p>
        <asp:Button ID="Button3" runat="server" Height="26px" onclick="Button3_Click" 
            style="margin-left: 185px" Text="Search" Width="112px" />
    </p>
    </form>
</body>
</html>
