using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TemplatePage
{
    public partial class View_Repeater : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DcodeTechConnectionString"].ConnectionString);

        public void fillData()
        {
            string sql = "select * from formDetail order by ID";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            Repeater1.DataSource = cmd.ExecuteReader();
            Repeater1.DataBind();
            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillData();
            }
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            ScriptManager.RegisterStartupScript(this, GetType(), "Pop", "openModal();", true);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("viewdataEdit", con);
            sda.SelectCommand.CommandType = CommandType.StoredProcedure;
            sda.SelectCommand.Parameters.AddWithValue("@ID", id);
            DataTable dtbl = new DataTable();
            sda.Fill(dtbl);
            con.Close();
            HiddenField1.Value = id.ToString();
            TextBox1.Text = dtbl.Rows[0]["UserName"].ToString();
            TextBox2.Text = dtbl.Rows[0]["Email"].ToString();
            TextBox3.Text = dtbl.Rows[0]["Number"].ToString();
            TextBox4.Text = dtbl.Rows[0]["Address"].ToString();            
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            string sql = "delete from formDetail where ID='" + id + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            int status = cmd.ExecuteNonQuery();
            if (status > 0)
            {
                msg.Text = "Record deleted successfully.";
                con.Close();
                fillData();
            }
            else
            {
                err.Text = "Some error occurred!";
            }
            con.Close();
        }

        protected void update_Click(object sender, EventArgs e)
        {
            int uid = int.Parse(HiddenField1.Value);
            string username = TextBox1.Text;
            string email = TextBox2.Text;
            string number = TextBox3.Text;
            string address = TextBox4.Text;

            string sql = "update formDetail set UserName='" + username + "', Email='" + email + "', Number='" + number + "', Address='" + address + "' where ID='" + uid + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            if(username!="" && email != "" && number != "" && address != "")
            {
                con.Open();
                int status = cmd.ExecuteNonQuery();
                if (status > 0)
                {
                    msg.Text = "Record updated successfully!";
                }
                else
                {
                    err.Text = "Some error occurred!";
                }
                con.Close();
                fillData();
            }
            else
            {
                err.Text = "Details can't be blank!";
                fillData();
            }
            
        }
    }
}