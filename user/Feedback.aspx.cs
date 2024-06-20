using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;

public partial class user_Feedback : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd;
    string str;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Legion\\OneDrive\\Masaüstü\\jay\\jayesh_Projects\\fjayesh.mdb";
        con.Open();

    }

    protected void btnsend1_Click(object sender, EventArgs e)
    {
        str = "select mobile,email from user_data where mobile="+txtfeed_mobile1.Text+" and email='"+txtfeed_email1.Text+"'";
        da = new OleDbDataAdapter(str, con);
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            try
            {
                str = "insert into user_feedback values('" + txtfeed_email1.Text + "'," + txtfeed_mobile1.Text + ",'" + txtfeedback.Text + "')";
                cmd = new OleDbCommand(str, con);
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Feedback  Successfully')</script>");

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
        else
        {
            Response.Write("<script>alert('email or mobile not exist')</script>");
        }

    }


   
}