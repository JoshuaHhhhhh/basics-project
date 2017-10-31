<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Begin.aspx.cs" Inherits="Begin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <asp:Image ID="userimg" runat="server" ImageUrl="image/user.jpg" Height="20px" Width="20px"  />
     <asp:TextBox ID="usertb"  runat="server" OnTextChanged="usertb_TextChanged" OnPreRender="usertb_PreRender" ForeColor="Gray" Width="170px" >一个好记得用户名很有必要</asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usertb" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator>
     <br/> <br/> <br/> <br/>
     <asp:Image ID="passwordimg" runat="server" ImageUrl="image/password.jpg" Height="20px" Width="20px"  />
     <asp:TextBox ID="passwordtb" runat="server" ForeColor="Gray" OnPreRender="passwordtb_PreRender" OnTextChanged="passwordtb_TextChanged" Width="170px">输密码 放心我不看</asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordtb" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
     <br/> <br/> <br/> <br/>
     <asp:Image ID="phoneimg" runat="server" ImageUrl="image/phone.jpg" Height="20px" Width="20px"  />
     <asp:TextBox ID="phonetb" runat="server" ForeColor="Gray" OnPreRender="phonetb_PreRender" Width="170px" OnTextChanged="phonetb_TextChanged">请输入手机号</asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="phonetb" ErrorMessage="手机格式不正确" ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{8}"></asp:RegularExpressionValidator>
<br/> <br/> <br/> <br/>
     <asp:Image ID="seximg" runat="server" ImageUrl="image/sex.jpg" Height="20px" Width="20px"  />
      <asp:TextBox ID="sextb" runat="server" ForeColor="Gray" OnPreRender="sextb_PreRender" OnTextChanged="sextb_TextChanged" Width="170px">我猜你是个女生？</asp:TextBox>
<br/> <br/> <br/> <br/>
     <asp:Image ID="mailimg" runat="server" ImageUrl="image/mail.jpg" Height="20px" Width="20px"  />
     <asp:TextBox ID="mailtb" runat="server" ForeColor="Gray" OnPreRender="mailtb_PreRender" Width="170px">放心不给你发垃圾邮件 hhhh</asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="mailtb" ErrorMessage="邮箱地址格式不正确" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
<br/> <br/> <br/> <br/>
    <asp:Image ID="wishimg" runat="server" ImageUrl="image/wish.jpg" Height="20px" Width="20px"  />
      <asp:TextBox ID="wishtb" runat="server" ForeColor="Gray" OnPreRender="wishtb_PreRender" Width="170px">最想去哪玩？</asp:TextBox><br/> <br/> <br/> <br/>
    <asp:Image ID="weather" runat="server" ImageUrl="image/weather.jpg" Height="20px" Width="20px"  />
     <asp:TextBox ID="weathertb" runat="server" ForeColor="Gray" OnPreRender="weathertb_PreRender" Width="170px">今天天气怎么样？</asp:TextBox><br/> <br/> <br/> <br/>
     <asp:Image ID="sportsimg" runat="server" ImageUrl="image/sports.jpg" Height="20px" Width="20px"  />
      <asp:TextBox ID="sportstb" runat="server" ForeColor="Gray" OnPreRender="sportstb_PreRender" Width="170px">你最喜欢什么运动？</asp:TextBox><br/> <br/> <br/> <br/>
     <asp:Image ID="saysomething" runat="server" ImageUrl="image/saysomething.jpg" Height="20px" Width="20px"  />
      <asp:TextBox ID="saytb" runat="server" ForeColor="Gray" OnPreRender="saytb_PreRender" Width="170px">一句话代表你。</asp:TextBox><br/> <br/> <br/> <br/>
    
     &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="savebtn" runat="server" OnClick="Button1_Click" Text="保存" style="height: 21px" />
    
     <br/> <br/>
</asp:Content>

