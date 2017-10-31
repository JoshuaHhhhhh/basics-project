<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="story.aspx.cs" Inherits="story" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:100%; height:50px; line-height:50px; text-align:center;">
    <p style="height: 396px">
        欢迎<asp:Label ID="Label1" runat="server" ></asp:Label>
       ，你可以在下面写你的故事了
    </p>


    </div>
  <div style="width:100%; min-height:100px;">

      <asp:TextBox ID="TextBox1" runat="server" Height="265px" TextMode="MultiLine" Width="448px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
     


  </div>
    <div style="width:100%;min-height:100px;text-align:center;padding-top:10px;">

        <asp:Button ID="Button1" runat="server" Text="保存" Height="30px" Width="100px" OnClick="Button1_Click" /> &nbsp
         <asp:Button ID="Button2" runat="server" Text="管理你的故事" Height="30px" Width="100px" OnClick="Button2_Click" />

        <asp:SqlDataSource ID="sdsbc" runat="server" ConnectionString="<%$ ConnectionStrings:finalproConnectionString %>" InsertCommand="INSERT INTO story1(ID, story) VALUES (@ID, @story)" SelectCommand="SELECT * FROM [story1]">
            <InsertParameters>
                <asp:Parameter Name="ID" />
                <asp:Parameter Name="story" />
            </InsertParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>

