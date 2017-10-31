using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manage2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("login.aspx");

        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Literal lit = new Literal();
        lit.Text = "<script language = 'javascript'> window.alert('删除成功。')</script>";
        Page.Controls.Add(lit);
    }
}