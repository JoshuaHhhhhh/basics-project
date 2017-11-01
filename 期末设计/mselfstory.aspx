<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mselfstory.aspx.cs" Inherits="mselfstory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="story" HeaderText="story" SortExpression="story" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:finalproConnectionString %>" SelectCommand="SELECT * FROM [story1] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:SessionParameter Name="ID" SessionField="username" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

