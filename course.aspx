<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="sms.course" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>

    <asp:Label ID="CourseID" runat="server" Text="CourseID&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 55px"></asp:TextBox>

    <p>
        <asp:Label ID="Label1" runat="server" Text="Course Name"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 57px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Semester ID"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 68px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Semester Name"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 50px" 
            Width="120px"></asp:TextBox>
    </p>

    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" AutoGenerateColumns="False" 
        onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
        onrowdeleting="GridView1_RowDeleting" style="margin-top: 0px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="CourseID">
            <ItemTemplate>
            <asp:Label ID="textID" runat="server" Text='<%#Eval("COURSE_ID")%>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="COURSE NAME">
            <ItemTemplate>
            <asp:Label ID="lblcname" runat="server" Text='<%#Eval("COURSE_NAME")%>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate><asp:TextBox ID="textcname" runat="server" Text='<%#Eval("COURSE_NAME")%>'></asp:TextBox>
         </EditItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
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
