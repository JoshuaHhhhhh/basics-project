using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class story : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["username"].ToString();
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        sdsbc.InsertParameters["ID"].DefaultValue = Label1.Text.ToString();
        sdsbc.InsertParameters["story"].DefaultValue = TextBox1.Text.ToString();
        sdsbc.Insert();

        Literal lit = new Literal();
        lit.Text = "<script language = 'javascript'> window.alert('保存成功！')</script>";
        Page.Controls.Add(lit);

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("mselfstory.aspx");
    }
}