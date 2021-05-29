<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMain.master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TaskManagement.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridViewUsers" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"  DataSourceID="SqlDataSourceMain" AllowSorting="True" HorizontalAlign="Center" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="20" GridLines="Vertical" ShowFooter="True" style="margin-top: 5%" OnSelectedIndexChanged="GridViewUsers_SelectedIndexChanged" ShowHeaderWhenEmpty="True">
        <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:TemplateField ShowHeader="False">
            <EditItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:LinkButton ID="btnAdd" runat="server" CommandName="Insert" OnClick="btnAdd_Click">Add</asp:LinkButton>
            </FooterTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:TemplateField HeaderText="UserName" SortExpression="UserName">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="UserPassword" SortExpression="UserPassword">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("UserPassword") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("UserPassword") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="UserMail" SortExpression="UserMail">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("UserMail") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtUserMail" runat="server"></asp:TextBox>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("UserMail") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="UserRole" SortExpression="UserRole">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("UserRole") %>'></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:DropDownList ID="ddlUserRole" runat="server">
                    <asp:ListItem>Proqramçı</asp:ListItem>
                    <asp:ListItem>Analitik</asp:ListItem>
                    <asp:ListItem>Administrator</asp:ListItem>
                </asp:DropDownList>
            </FooterTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("UserRole") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
        <EmptyDataTemplate>İstifadəçi yoxdur</EmptyDataTemplate>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSourceMain" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Users] ([UserName], [UserPassword], [UserMail], [UserRole]) VALUES (@UserName, @UserPassword, @UserMail, @UserRole)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [UserName] = @UserName, [UserPassword] = @UserPassword, [UserMail] = @UserMail, [UserRole] = @UserRole WHERE [ID] = @ID" OnSelecting="SqlDataSourceMain_Selecting">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="UserPassword" Type="String" />
        <asp:Parameter Name="UserMail" Type="String" />
        <asp:Parameter Name="UserRole" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="UserPassword" Type="String" />
        <asp:Parameter Name="UserMail" Type="String" />
        <asp:Parameter Name="UserRole" Type="String" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
