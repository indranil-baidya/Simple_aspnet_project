<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="sms._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:Label ID="Label1" runat="server" Text="Student ID &nbsp&nbsp&nbsp"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" align="Center"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Name&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" align="Center"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Father Name"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Address&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Telephone&nbsp&nbsp&nbsp&nbsp"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br /><br/>

    <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click"/>

    <asp:GridView ID="GridView1" runat="server" onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
        GridLines="None" onrowdeleting="GridView1_RowDeleting">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="STDID">
            <ItemTemplate>
                <asp:Label ID="txtID" runat="server" Text='<%#Eval("STD_ID")%>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="STDNAME">
            <ItemTemplate>
            
        <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("STD_NAME")%>'></asp:Label>
              
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox ID="txtName" runat="server" Text='<%#Eval("STD_NAME")%>'></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
 
            <asp:TemplateField HeaderText="STDFNAME">
            <ItemTemplate>
                <asp:Label ID="lblFName" runat="server" Text='<%#Eval("STD_FNAME")%>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox ID="txtFName" runat="server" Text='<%#Eval("STD_FNAME")%>'></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ADDRESS"><ItemTemplate>
                <asp:Label ID="lblADDRESS" runat="server" Text='<%#Eval("STD_ADDRESS")%>'></asp:Label>
        
            </ItemTemplate>
            <EditItemTemplate><asp:TextBox ID="ADDRESS" runat="server" Text='<%#Eval("STD_ADDRESS")%>'></asp:TextBox></EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TELEPHONE"><ItemTemplate>
                <asp:Label ID="lblPHONE" runat="server" Text='<%#Eval("STD_TEL")%>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate> <asp:TextBox ID="PHONE" runat="server" Text='<%#Eval("STD_TEL")%>'></asp:TextBox></EditItemTemplate>
            </asp:TemplateField>

            <asp:CommandField ShowEditButton="True" />

            <asp:CommandField ShowDeleteButton="True" />

        </Columns>
        
        
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        
        
    </asp:GridView>

</asp:Content>
