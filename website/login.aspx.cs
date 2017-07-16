using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Trim() == "" && TextBox2.Text.Trim() == "")//检查是否输入了帐号密码
        {
            Response.Write("<script>alert('请输入用户名和密码！');location='javascript:history.go(-1)';</script>");
            return;
        }
        else
        {
            string str = "Data Source = localhost; Initial Catalog = blog; Persist Security Info = True; User ID = sa; Password = 123456";
            SqlConnection sqlCon = new SqlConnection(str);
            string sql = "select username from AdminProfile where account='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
            SqlCommand sqlCmd = new SqlCommand(sql, sqlCon);       //验证是否管理员登陆
            sqlCon.Open();
            SqlDataReader myReader = sqlCmd.ExecuteReader();
            if (myReader.Read())
            {
                Session["username"] = myReader["username"].ToString();
                Session["type"] = 0;
                Response.Redirect("~/admin/admin.aspx");
            }
            else
            {
                myReader.Close();
                string sql1 = "select username from UserProfile where account='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                SqlCommand sqlCmd1 = new SqlCommand(sql1, sqlCon);
                SqlDataReader myReader1 = sqlCmd1.ExecuteReader();          //验证是否用户登录
                if (myReader1.Read())
                {
                    Session["username"] = myReader1["username"].ToString();
                    Session["type"] = 1;
                    Response.Redirect("index.aspx");
                }
                else
                {
                    myReader1.Close();     //帐号密码错误，反馈
                    Response.Write("<script>alert('用户名或密码错误，请重新输入');location='javascript:history.go(-1)';</script>");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    return;
                }
            }

            myReader.Close();
            sqlCon.Close();

        }

    }

}