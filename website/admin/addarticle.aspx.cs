using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_addarticle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "Data Source = localhost; Initial Catalog = blog; Persist Security Info = True; User ID = sa; Password = 123456";
        SqlConnection sqlCon = new SqlConnection(str);
        str = "insert into article (bwtitle,bwsub,bwtime) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "')";
        SqlCommand sqlCmd = new SqlCommand(str, sqlCon);
        sqlCon.Open();
        int insert = sqlCmd.ExecuteNonQuery();
        sqlCon.Close();
        if (insert != 0)
        {
            Response.Write("<script>alert('发表成功');location.href='addarticle.aspx';</script>");
        }
    }
}