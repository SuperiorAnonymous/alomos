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

public partial class user_Contect : System.Web.UI.Page
{
    OleDbCommand cmd;
    OleDbConnection con = new OleDbConnection();
    string strc;

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Legion\\OneDrive\\Masaüstü\\jay\\jayesh_Projects\\fjayesh.mdb"; 
        con.Open();
    }



    protected void btncontact_submit_Click(object sender, EventArgs e)
    {
        try
        {
            strc = "insert into contactmsg values('"+txt_msg_fname.Text+"','"+txt_msg_lname.Text+"',"+txt_msg_mobile.Text+",'"+txt_msg_email.Text+"','"+txt_msg_message.Text+"')";
            cmd = new OleDbCommand(strc, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Thank you for your suggestions')</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Sorry try again ')</script>");
            Response.Write(ex.ToString());
        }
    }
}
