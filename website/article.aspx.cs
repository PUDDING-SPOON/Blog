using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace website
{
    public partial class article : System.Web.UI.Page
    {
        public String username;
        public String location;
        public String birthday;
        public String hobby;
        public String email;
        public String introduction;
        public String[] tit = new string[10];
        public String[] path = new string[10];
        public String[] name = new string[10];
        public int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            string str = "Data Source = localhost; Initial Catalog = blog; Persist Security Info = True; User ID = sa; Password = 123456";
            SqlConnection sqlCon = new SqlConnection(str);
            str = "select * from AdminProfile";
            SqlCommand sqlCmd = new SqlCommand(str, sqlCon);
            sqlCon.Open();
            SqlDataReader myReader = sqlCmd.ExecuteReader();
            while (myReader.Read())
            {
                username = myReader.GetValue(2).ToString();
                location = myReader.GetValue(3).ToString();
                birthday = myReader.GetValue(4).ToString();
                hobby = myReader.GetValue(5).ToString();
                email = myReader.GetValue(6).ToString();
                introduction = myReader.GetValue(7).ToString();
            }
            myReader.Close();
            String str1 = "select * from video";
            SqlCommand sqlCmd1 = new SqlCommand(str1, sqlCon);
            SqlDataReader myReader1 = sqlCmd1.ExecuteReader();
            while (myReader1.Read())
            {
                tit[i] = myReader1.GetValue(0).ToString();
                path[i] = myReader1.GetValue(1).ToString();
                name[i] = myReader1.GetValue(2).ToString();
                i = i + 1;
            }

            sqlCon.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("index.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin/admin.aspx");
        }
    }
}