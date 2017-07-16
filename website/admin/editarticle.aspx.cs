using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_editarticle : System.Web.UI.Page
{
    string str = "Data Source = localhost; Initial Catalog = blog; Persist Security Info = True; User ID = sa; Password = 123456";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
        Response.Write("<script>alert('删除成功');</script>");
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }

  
}