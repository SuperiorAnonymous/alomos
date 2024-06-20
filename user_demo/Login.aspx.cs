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

public partial class user_demo_Login : System.Web.UI.Page
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

        if (Session["Admin"] != null)
        {
            Response.Redirect("Admin/Homeadmin.aspx");
        }

        if (Session["usernm"] != null)
        {
            Response.Redirect("/user/Home.aspx");
        }
        else
        {
        }
        
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
       
            try
            {
                if (droplistlogin1.SelectedValue.ToString() == "USER")
                {
                    str = "select * from user_data where username='" + txtusername1.Text + "' and pass='" + txtpassword1.Text + "'";
                    da = new OleDbDataAdapter(str, con);
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {

                        Session["usernm"] = txtusername1.Text;
                        Session["pass1"] = txtpassword1.Text;
                        Response.Redirect("../user/Home.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Please try registration')</script>");
                    }
                }
                else if (droplistlogin1.SelectedValue.ToString() == "ADMIN")
                {
                    str = "select * from admin where username='" + txtusername1.Text + "' and passadmin='" + txtpassword1.Text + "'";
                    da = new OleDbDataAdapter(str, con);
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {


                        Session["Admin"] = "murad";
                        Response.Redirect("../Admin/Homeadmin.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Admin' user name or password wrong')</script>");
                    }
                    
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("~/user_demo/forgotpass.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
        
    }
}
