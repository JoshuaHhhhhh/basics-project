<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Story" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/><br/> <br/> <br/> <br/> <asp:Image ID="user2img" runat="server" ImageUrl="image/user.jpg" Height="20px" Width="20px"  />
     <asp:TextBox ID="user2tb" runat="server" OnPreRender="user2tb_PreRender" Width="170px">输入你的用户名用来登陆~</asp:TextBox>  <br/>  <br/> <br/> <br/> <br/>
         <asp:Image ID="password2img" runat="server" ImageUrl="image/password.jpg" Height="20px" Width="20px"  />
     <asp:TextBox ID="password2tb" runat="server" OnPreRender="password2tb_PreRender" Width="170px">输入你的密码用来登陆~</asp:TextBox><br/> <br/> <br/> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Button ID="loginbtn" runat="server" Text="登陆" OnClick="loginbtn_Click" />
    <br/>

</asp:Content>

