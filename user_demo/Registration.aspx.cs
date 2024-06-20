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

public partial class user_Registration : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd;
    string str;
    int id1 = 0;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataTable dt = new DataTable();
    DataSet ds = new DataSet();
    

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Legion\\OneDrive\\Masaüstü\\jay\\jayesh_Projects\\fjayesh.mdb";
        con.Open();

        str = "select max(o_id) as o_id from user_data";
        da = new OleDbDataAdapter(str, con);
        da.Fill(ds);

        id1 = 1;
         id1 = int.Parse(ds.Tables[0].Rows[0]["o_id"].ToString());
        if (id1 > 0)
        {
            id1++;
        }
        else
        {
            id1 = 1;
        }
        lbl_signup_id.Text = id1.ToString();

        //txtpass.TextMode = TextBoxMode.Password;
    }

   

    protected void linksignin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/Login.aspx");
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {

           
            str = "insert into user_data values("+lbl_signup_id.Text+",'"+txt_signup_name.Text+"','"+txt_signup_username1.Text+"','"+Dropdownlist_signup_gender.SelectedValue.ToString()+"',"+txt_signup_mobile.Text+",'"+txt_signup_email.Text+"','"+txt_signup_pass.Text+"','"+txt_signup_address.Text+"')";
            cmd = new OleDbCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Registration Successfull')</script>");
            
        }
        catch(Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }



    protected void show1_Click(object sender, EventArgs e)
    {
       // txtpass.TextMode = TextBoxMode.SingleLine;
       // this.txtpass.Text = txtpass.Text;
    }
    protected void txt_signup_cpass_TextChanged(object sender, EventArgs e)
    {
       
    }
}
