<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacher.aspx.cs" Inherits="sms.teacher" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" Text="Teacher ID &nbsp &nbsp&nbsp&nbsp&nbsp"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Teacher Name &nbsp"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None" 
        onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
        onrowupdating="GridView1_RowUpdating">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="TeacherID">
            <ItemTemplate>
                <asp:Label ID="tID" runat="server" Text='<%#Eval("TEACHER_ID")%>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Teacher Name">
            <ItemTemplate>
                <asp:Label ID="tname" runat="server" Text='<%#Eval("TEACHER_NAME")%>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate><asp:TextBox ID="tname" runat="server" Text='<%#Eval("TEACHER_NAME")%>'></asp:TextBox>
 </EditItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
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
