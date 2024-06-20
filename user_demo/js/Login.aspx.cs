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

public partial class user_Login : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd;
    string str;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\jayesh project\\furniture Managment1.mdb";
        con.Open();
    }
   
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if(txtusername1.Text=="jayesh" && txtpassword1.Text=="jayesh123")
        {
            Response.Redirect("~/Admin/Homeadmin.aspx");

        }
        else
        
        try
        {
            if(droplistlogin1.SelectedValue.ToString()=="USER")
            {
                str = "select * from user_data where username='"+txtusername1.Text+"' and pass='"+txtpassword1.Text+"'";
                da = new OleDbDataAdapter(str, con);
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Suceess')</script>");
                    Response.Redirect("~/user/Home.aspx");
                 }
                else
                {
                    Response.Write("<script>alert('Please try registration')</script>");
                }
            }
            else if(droplistlogin1.SelectedValue.ToString()=="ADMIN")
            {
                //str = "select * from userdata where username='" + txtusername1.Text + "' and pass1='" + txtpassword1.Text + "'";
                //da = new OleDbDataAdapter(str, con);
                //da.Fill(dt);

                //if (dt.Rows.Count > 0)
                //{
                //    Response.Write("<script>alert('Suceess')</script>");
                //}
                //else
                //{
                //    Response.Write("<script>alert('Unsuceess')</script>");
                //}   
            }
        }
        catch(Exception ex)
        {
            Response.Write(ex.ToString());
        }
        finally
        {
            con.Close();
        }
    }

    protected void linkragistration1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user_demo/Registration.aspx");
    }
    protected void linkforgotpassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user_demo/ForgotPassword.aspx");
    }
    protected void linkchandepassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user_demo/ChangePassword.aspx");
    }
}
