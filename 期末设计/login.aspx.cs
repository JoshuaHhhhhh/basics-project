using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Story : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Response.Redirect("story.aspx");
            
        }
        
    }

    protected void loginbtn_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=DESKTOP-58DE79I\\SQLEXPRESS;Initial Catalog=finalpro;Integrated Security=True";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = "select * from [begin] where username=@username and password=@password";
        cmd.Parameters.Add("@username", SqlDbType.NVarChar, 50).Value = user2tb.Text.Trim();
        cmd.Parameters.Add("@password", SqlDbType.NVarChar, 50).Value = password2tb.Text.Trim();
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Response.Cookies["username"].Value = user2tb.Text.Trim();
            Response.Cookies["password"].Value = password2tb.Text.Trim();
            Session["username"] = user2tb.Text;
            Response.Redirect("story.aspx");
            


        }
        else
        {
            Literal lit = new Literal();
            lit.Text = "<script language = 'javascript'> window.alert('登录失败！')</script>";
            Page.Controls.Add(lit);
            
        }
        cn.Close();

    }

    protected void password2tb_PreRender(object sender, EventArgs e)
    {
        this.password2tb.Attributes.Add("onclick", "this.value='';");
    }

    protected void user2tb_PreRender(object sender, EventArgs e)
    {
        this.user2tb.Attributes.Add("onclick", "this.value='';");
    }
}