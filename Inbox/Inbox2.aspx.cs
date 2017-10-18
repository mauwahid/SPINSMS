using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Inbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GvBind();
            }

        }

        protected void btnTambah_Click(object sender, EventArgs e)
        {
            Session["distributor_form_type"] = "add";
            Response.Redirect("Form.aspx");
        }


        protected void GvBind()
        {

            SqlDataSource dataSource = new SqlDataSource();
            dataSource.ConnectionString = ConfigurationManager.ConnectionStrings["SMSConn"].ToString();
            dataSource.SelectCommand = "select * from inbox";
            GridView1.DataSource = dataSource;
            GridView1.DataBind();
        }

        private void blankTable()
        {
            GridView1.DataSource = new List<String>();
            GridView1.DataBind();
        }

        protected void RowCommand_Click(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Hapus")
            {
                string idDistributor = Convert.ToString(e.CommandArgument);
                Delete(idDistributor);
                GvBind();
            }
        }

        protected void Delete(string id)
        {
            SqlConnection conn = Common.GetConnection();
            string query = "";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = System.Data.CommandType.Text;
            string param = TbCari.Text;

            query = "delete inbox where id = " + id;
            cmd.CommandText = query;

            conn.Open();
            int reader = cmd.ExecuteNonQuery();

            conn.Close();

        }

        protected void GView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GvBind();
        }

       
        protected void RowDelete_Click(object sender, GridViewDeleteEventArgs e)
        {

            string id = GridView1.DataKeys[e.RowIndex]["Id"].ToString();
            Delete(id);
            GvBind();


        }
        
        
       
        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            GvBind();
        }

        protected void btnCari_Click1(object sender, EventArgs e)
        {
            string param = TbCari.Text;
            string query = "select * from inbox where SenderNumber like '%" + param + "%' or TextDecoded like '%" + param + "%'";
            SqlDataSource dataSource = new SqlDataSource();
            dataSource.ConnectionString = ConfigurationManager.ConnectionStrings["SMSConn"].ToString();
            dataSource.SelectCommand = query;
            GridView1.DataSource = dataSource;
            GridView1.DataBind();

        }
    }