<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" type="text/css" rel="stylesheet" /> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div id="relative"> </div> 
        <div id="right"></div>
       <div id="mbody"><br/><br/>
          
           <br/><br/>
           <asp:HyperLink ID="beginlink" runat="server" ImageUrl="~/image/Begin.jpg" Width="332px" Height="46px" ImageHeight="46" ImageWidth="332" NavigateUrl="~/Begin.aspx"  >HyperLink</asp:HyperLink>
           <br/><br/><br/><br/>
           <asp:HyperLink ID="storyLink2" runat="server" ImageUrl="~/image/Your story.jpg" Width="332px" Height="46px" ImageHeight="46" ImageWidth="332" NavigateUrl="~/login.aspx">HyperLink</asp:HyperLink>
           <br/><br/><br/><br/>
           <asp:HyperLink ID="Manage1" runat="server" ImageUrl="~/image/Manage users.jpg" Width="332px" Height="46px" ImageHeight="46" ImageWidth="332" NavigateUrl="~/Manage1.aspx">HyperLink</asp:HyperLink>
           <br/><br/><br/><br/>
           <asp:HyperLink ID="Manage2" runat="server" ImageUrl="~/image/Manage storys.jpg" Width="332px" Height="46px" ImageHeight="46" ImageWidth="332" NavigateUrl="~/Manage2.aspx">HyperLink</asp:HyperLink>
           <br/><br/><br/><br/>
           <asp:HyperLink ID="aboutlink" runat="server" ImageUrl="~/image/About me.jpg" Width="332px" Height="46px" ImageHeight="46" ImageWidth="332" NavigateUrl="~/Aboutme.aspx">HyperLink</asp:HyperLink>
           
       </div>

    </form>
</body>
</html>
