using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_profile : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "Data Source = localhost; Initial Catalog = blog; Persist Security Info = True; User ID = sa; Password = 123456";
        SqlConnection sqlCon = new SqlConnection(str);
        str = "select * from AdminProfile";
        SqlCommand sqlCmd = new SqlCommand(str, sqlCon);        //给各资料栏填上原有资料
        sqlCon.Open();
        SqlDataReader myReader = sqlCmd.ExecuteReader();
        while (myReader.Read())
        {
            TextBox1.Text = myReader.GetValue(0).ToString();
            if (!Page.IsPostBack)                                   
            { 
                
                TextBox2.Text = myReader.GetValue(1).ToString();
                TextBox3.Text = myReader.GetValue(2).ToString();
                TextBox4.Text = myReader.GetValue(3).ToString();
                TextBox5.Text = myReader.GetValue(4).ToString();
                TextBox6.Text = myReader.GetValue(5).ToString();
                TextBox7.Text = myReader.GetValue(6).ToString();
                TextBox8.Text = myReader.GetValue(7).ToString();
            }
        }
        myReader.Close();
        sqlCon.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)    //根据文本框修改的资料更新数据
    {
        string str = "Data Source = localhost; Initial Catalog = blog; Persist Security Info = True; User ID = sa; Password = 123456";
        SqlConnection sqlCon = new SqlConnection(str);
        str = "UPDATE AdminProfile SET password='" + TextBox2.Text + "',username='" + TextBox3.Text + "',location='" + TextBox4.Text + "',birthday='" + TextBox5.Text + "',hobby='" + TextBox6.Text + "',email='" + TextBox7.Text + "',introduction='" + TextBox8.Text + "'";
        SqlCommand sqlCmd = new SqlCommand(str, sqlCon);                    
        sqlCon.Open();                                              
        int update = sqlCmd.ExecuteNonQuery();
        sqlCon.Close();
        if (update != 0)
        {
            Response.Write("<script>alert('更新成功');</script>");
        }
    }
}