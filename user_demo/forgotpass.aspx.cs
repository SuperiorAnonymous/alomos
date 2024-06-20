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

public partial class user_demo_forgotpass : System.Web.UI.Page
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
    protected void btnforgotpassword_Click(object sender, EventArgs e)
    {
        str = "select mobile,email  from user_data where mobile="+txtmobile1.Text+" and email='"+txtemail1.Text+"'";
        da = new OleDbDataAdapter(str, con);
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            try
            {
                str = "update user_data set pass='" + txtchangepass1.Text + "' where mobile=" + txtmobile1.Text + " and pass='" + txtoldpass1.Text + "'";
                cmd = new OleDbCommand(str, con);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Forgot Password Succesfully Updated')</script>");

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
        else
        {
            Response.Write("<script>alert('Email or mobile not exist')</script>");
        }
    }

    
}
