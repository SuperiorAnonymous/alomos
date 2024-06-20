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
using System.IO;




public partial class user_Viewproduct : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    string str;
    OleDbCommand cmd,cmd1;
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    //DateTime dat1 = new DateTime();
    int oid;

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Legion\\OneDrive\\Masaüstü\\jay\\jayesh_Projects\\fjayesh.mdb";
        con.Open();


        string str2 = "select * from user_data where username='" + Session["usernm"].ToString() + "' and pass='" + Session["pass1"].ToString() + "'";
        cmd1 = new OleDbCommand(str2, con);
        OleDbDataReader dr1 = cmd1.ExecuteReader();

        if (dr1.Read())
        {
            oid = int.Parse(dr1["o_id"].ToString());
            Session["moid"] = oid.ToString();
        }

        if (!IsPostBack)
        {
            bnd2();
        }
    }

    protected void bnd2()
    {
        str = "select * from product  ";
        da = new OleDbDataAdapter(str, con);
        da.Fill(ds);

        GridView3.DataSource = ds;
        GridView3.DataBind();
    }
    
    protected void GridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView3.PageIndex = e.NewPageIndex;
        bnd2();

    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnbackviewproduct_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/Home.aspx");
    }
    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
        if (e.CommandName == "order")
        {
            

            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView3.Rows[index];
            Label l = (Label)row.FindControl("lblfid");
            Label P1=(Label)row.FindControl("lblfprice");
            TextBox t = (TextBox)row.FindControl("txtqty");
           // Calendar od = (Calendar)row.FindControl("Calender1_order");
            TextBox td1 = (TextBox)row.FindControl("TextBox1");
           
        
            Session["pid"] = l.Text;
            string str1 = "select * from product where p_id="+l.Text+"";
            cmd = new OleDbCommand(str1,con);
            OleDbDataReader dr = cmd.ExecuteReader();

         
            if (dr.Read())
            {
               string pname = dr["p_name"].ToString();
               int pr = int.Parse(dr["price"].ToString());
               td1.Text = DateTime.Today.ToString("dd-MM-yyyy");
               System.Globalization.DateTimeFormatInfo dateInfo = new System.Globalization.DateTimeFormatInfo();

               dateInfo.ShortDatePattern = "dd/MM/yyyy";
               DateTime validDate = Convert.ToDateTime(td1.Text, dateInfo);
             
               str = "insert into orders(o_id,p_id,name,amount,quantity,date_time) values("+oid+"," + l.Text + ",'" + pname + "'," + pr + "," + t.Text + ",'"+validDate+"')";
               cmd = new OleDbCommand(str, con);
               if (cmd.ExecuteNonQuery() == 1)
               {
                   Response.Write("<script> alert('inserted succsess..') </script>");
               }
               else
               {
                   Response.Write("<script> alert(' not inserted succsess..') </script>");
               }
           }
            Response.Redirect("~/user/vieworder.aspx");
            
        }
       
    }
    protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
       
    }
    protected void GridView3_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}
