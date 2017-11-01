using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Begin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Literal lit = new Literal();
            lit.Text = "<script language = 'javascript'> window.alert('用户已登录，无需再次注册。')</script>";
            Page.Controls.Add(lit);

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = "Data Source=DESKTOP-58DE79I\\SQLEXPRESS;Initial Catalog=finalpro;Integrated Security=True";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = "insert into [begin]" + "([username],[password],[phone],[sex],[mail],[wish],[weather],[sports],[say])" + "VALUES(@username,@password,@phone,@sex,@mail,@wish,@weather,@sports,@say)";
        cmd.Parameters.Add("@username", SqlDbType.NVarChar, 50).Value = usertb.Text;
        cmd.Parameters.Add("@password", SqlDbType.NVarChar, 50).Value = passwordtb.Text;
        cmd.Parameters.Add("@phone", SqlDbType.NVarChar, 50).Value = phonetb.Text;
        cmd.Parameters.Add("@sex", SqlDbType.NVarChar, 50).Value = sextb.Text;
        cmd.Parameters.Add("@mail", SqlDbType.NVarChar, 50).Value = mailtb.Text;
        cmd.Parameters.Add("@wish", SqlDbType.NVarChar, 50).Value = wishtb.Text;
        cmd.Parameters.Add("@weather", SqlDbType.NVarChar, 50).Value = weathertb.Text;
        cmd.Parameters.Add("@sports", SqlDbType.NVarChar, 50).Value = sportstb.Text;
        cmd.Parameters.AddWithValue("@say", saytb.Text);
        cn.Open();
        int result = cmd.ExecuteNonQuery();
        cn.Close();

        string msg;
        if (result > 0)
        msg = "<script>alert('注册成功！'); window.location='login.aspx' </script>";

        else
            msg = "<script>alert('注册失败！)'</script>";
        Literal lit = new Literal();
        lit.Text = msg;
        Page.Controls.Add(lit);

 
    }

    protected void usertb_TextChanged(object sender, EventArgs e)
    {
 
    }

    protected void usertb_PreRender(object sender, EventArgs e)
    {
        this.usertb.Attributes.Add("onclick", "this.value='';");
    }

    protected void passwordtb_TextChanged(object sender, EventArgs e)
    {

    }

    protected void passwordtb_PreRender(object sender, EventArgs e)
    {
        this.passwordtb.Attributes.Add("onclick", "this.value='';");
    }

    protected void phonetb_PreRender(object sender, EventArgs e)
    {
        this.phonetb.Attributes.Add("onclick", "this.value='';");
    }

    protected void sextb_TextChanged(object sender, EventArgs e)
    {
        this.sextb.Attributes.Add("onclick", "this.value='';");
    }

    protected void sextb_PreRender(object sender, EventArgs e)
    {
        this.sextb.Attributes.Add("onclick", "this.value='';");
    }

    protected void mailtb_PreRender(object sender, EventArgs e)
    {
        this.mailtb.Attributes.Add("onclick", "this.value='';");
    }

    protected void wishtb_PreRender(object sender, EventArgs e)
    {
        this.wishtb.Attributes.Add("onclick", "this.value='';");
    }

    protected void weathertb_PreRender(object sender, EventArgs e)
    {
        this.weathertb.Attributes.Add("onclick", "this.value='';");
    }

    protected void sportstb_PreRender(object sender, EventArgs e)
    {
        this.sportstb.Attributes.Add("onclick", "this.value='';");
    }

    protected void saytb_PreRender(object sender, EventArgs e)
    {
        this.saytb.Attributes.Add("onclick", "this.value='';");
    }

    protected void phonetb_TextChanged(object sender, EventArgs e)
    {

    }
}