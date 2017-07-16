using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_addphoto : System.Web.UI.Page
{
    public static string name = null, savePath;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string savePath = Server.MapPath("/images/");//设置保存的地址;
        savePath += FileUpload1.FileName;//获取文件上传路径
        string fileExtend = savePath.Substring(savePath.LastIndexOf(".") + 1).ToLower();//取出小写的扩展名
        if (!(fileExtend == "jpg" || fileExtend == "gif"))//判断上传图片的格式
        {
            Response.Write("<script>alert('图片格式只能为jpg或者gif');location='javascript:history.go(-1)';</script>");
        }
        else
        {
            FileUpload1.SaveAs(savePath);
            string str = "Data Source = localhost; Initial Catalog = blog; Persist Security Info = True; User ID = sa; Password = 123456";
            SqlConnection sqlCon = new SqlConnection(str);
            str = "insert into album (imgname,imgpath) values ('" + FileUpload1.FileName +  "','/images/')";
            SqlCommand sqlCmd = new SqlCommand(str, sqlCon);
            sqlCon.Open();
            int insert = sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            if (insert != 0)
            {
                Response.Write("<script>alert('上传成功');location='addphoto.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('上传失败');location='addphoto.aspx';</script>");
            }
        }
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        String path = "/images/"+ GridView1.DataKeys[e.RowIndex].Value.ToString();  
        System.IO.File.Delete(Server.MapPath(path));
    }
}