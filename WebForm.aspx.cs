using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TemplatePage
{
    public partial class WebForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DcodeTechConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void submitForm(object sender, EventArgs e)
        {
            string name = Request.Form["fname"];
            string mail = Request.Form["email"];
            string number = Request.Form["phone"];
            string add = Request.Form["address"];

            con.Open();
            string sql = "insert into formDetail(UserName, Email, Number, Address) values('" + name + "', '" + mail + "', '" + number + "', '" + add + "');";
            SqlCommand cmd = new SqlCommand(sql, con);
            int status = cmd.ExecuteNonQuery();
            if (status > 0)
            {
                Response.Redirect("WebForm1.aspx");
            }
            else
            {
                Label1.Text = "Failed! Please try again!";
            }
            con.Close();
            
        }
    }
}