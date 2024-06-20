using System.Data.OleDb;
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

public partial class user_vieworder : System.Web.UI.Page
{
    string str;
    OleDbConnection con = new OleDbConnection();
    OleDbDataAdapter da;
    DataSet ds = new DataSet();
    //float a, b, c;
    //float total;

    protected void Page_Load(object sender, System.EventArgs e)
    {
        con.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Legion\\OneDrive\\Masaüstü\\jay\\jayesh_Projects\\fjayesh.mdb";
        con.Open();

        if (!IsPostBack)
        {
            bnd();
        }

    }

    protected void bnd()
    {
        str = "select user_data.o_id,user_data.cname,username,gender,mobile,email,pass,address,p_id,orders.name,amount,quantity,date_time from orders ,user_data  where user_data.o_id=orders.o_id and user_data.o_id=" + Session["moid"].ToString() + " and p_id=" + Session["pid"].ToString() + "";
        da = new OleDbDataAdapter(str, con);
        da.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();

        GridView2.DataSource = ds;
        GridView2.DataBind();

        if(GridView2.Rows.Count>0)
        {
            foreach(GridViewRow item in GridView2.Rows)
            {
                Label lblamt = item.FindControl("lblamt") as Label;
                TextBox txtqty = item.FindControl("txtqty") as TextBox;
                TextBox lbltot = item.FindControl("lbltot") as TextBox;
                

                decimal amount = 0;
                decimal.TryParse(lblamt.Text, out amount);

                int qty = 0;
                int.TryParse(txtqty.Text, out qty);

                lbltot.Text = (amount * qty).ToString();
            }
        }
    }


    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {


        if (e.CommandName == "order")
        {
            Response.Write("<script> alert('successfull confirm order..')</script>");
        }
        else
        {
            Response.Write("<script>alert('Retry')</script>");
        }

        Response.Redirect("~/user/myorder.aspx");
    }
    

    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
      //her bir row ucun ede bileceyimiz islemleri burada ede bilerik 
   
    }
}