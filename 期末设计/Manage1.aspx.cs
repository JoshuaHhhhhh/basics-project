using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manage1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Literal lit = new Literal();
            lit.Text = "<script language = 'javascript'> window.alert('请先登录。')</script>";
            Page.Controls.Add(lit);
            Response.Redirect("login.aspx");
        
        }
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}