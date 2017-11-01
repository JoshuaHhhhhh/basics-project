<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manage2.aspx.cs" Inherits="Manage2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" DataKeyNames="ID" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="5">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" OnClick="LinkButton1_Click" Text="删除"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="story" HeaderText="story" SortExpression="story" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:finalproConnectionString %>" DeleteCommand="DELETE FROM story1 WHERE (ID = @ID)" SelectCommand="SELECT * FROM [story1]" UpdateCommand="UPDATE story1 SET story = @story WHERE (ID = @ID)">
        <DeleteParameters>
            <asp:Parameter Name="ID" />
            <asp:Parameter Name="story" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="story" />
            <asp:Parameter Name="ID" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

