<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manage1.aspx.cs" Inherits="Manage1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" Text="性别筛选"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True">
        <asp:ListItem Value="false">请选择性别</asp:ListItem>
        <asp:ListItem>男</asp:ListItem>
        <asp:ListItem>女</asp:ListItem>
    </asp:DropDownList>
&nbsp; &nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="5">
    <Columns>
        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
        <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
        <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
        <asp:BoundField DataField="wish" HeaderText="wish" SortExpression="wish" />
        <asp:BoundField DataField="weather" HeaderText="weather" SortExpression="weather" />
        <asp:BoundField DataField="sports" HeaderText="sports" SortExpression="sports" />
        <asp:BoundField DataField="say" HeaderText="say" SortExpression="say" />
    </Columns>
        <EmptyDataTemplate>
            username
        </EmptyDataTemplate>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:finalproConnectionString %>" SelectCommand="SELECT * FROM [begin] WHERE ([sex] = @sex)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="sex" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

