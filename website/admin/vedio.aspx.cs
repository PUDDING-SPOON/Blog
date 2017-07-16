using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_vedio : System.Web.UI.Page
{
    public static string name = null, savePath;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string savePath = Server.MapPath("/video/");    //定义上传文件路径
            savePath += FileUpload1.FileName;       //获取上传文件路径
            string fileExtend = savePath.Substring(savePath.LastIndexOf(".") + 1).ToLower();
            if (!(fileExtend == "mp4"))     //验证后缀名
            {
                Response.Write("<script>alert('视频格式只能为MP4');location='javascript:history.go(-1)';</script>");
            }
            else
            {
                FileUpload1.SaveAs(savePath);   //上传路径至指定服务器路径
                name = FileUpload1.FileName;
                string str = "Data Source = localhost; Initial Catalog = blog; Persist Security Info = True; User ID = sa; Password = 123456";
                SqlConnection sqlCon = new SqlConnection(str);
                str = "insert into video (title,vpath,vname) values ('" + TextBox1.Text + "','/video/','" + name + "')";
                SqlCommand sqlCmd = new SqlCommand(str, sqlCon);
                sqlCon.Open();                      //将文件保存路径录入数据库
                int insert = sqlCmd.ExecuteNonQuery();
                sqlCon.Close();
                if (insert != 0)
                {
                    Response.Write("<script>alert('上传成功');location.href='video.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('上传失败');location.href='video.aspx';</script>");
                }
            }
            
        }
        

    }





    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        String path = "/video/" + GridView1.DataKeys[e.RowIndex].Value.ToString();//删除数据库文件信息
        System.IO.File.Delete(Server.MapPath(path));    //删除文件
    }
}

