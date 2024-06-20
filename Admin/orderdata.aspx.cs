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

public partial class Admin_orderdata : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection();
    OleDbDataAdapter da = new OleDbDataAdapter();
    string str;
    OleDbCommand cmd;
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Legion\\OneDrive\\Masaüstü\\jay\\jayesh_Projects\\fjayesh.mdb";
        con.Open();

        if (!IsPostBack)
        {
            orderbnd();
        }
    }

    protected void orderbnd()
    {
        str = "select * from orders";
        da = new OleDbDataAdapter(str, con);
        ds.Clear(); // Clear the DataSet before filling
        da.Fill(ds);

        GridView2.DataSource = ds;
        GridView2.DataBind();
    }

    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        orderbnd();
    }

    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            // Find the Label control that holds the order ID (o_id) for the row to be deleted
            Label oi = GridView2.Rows[e.RowIndex].FindControl("lblfid") as Label;

            if (oi != null)
            {
                // Try to parse the text from the Label to an integer
                int orderId;
                if (int.TryParse(oi.Text, out orderId))
                {
                    // Prepare the DELETE query
                    str = "DELETE FROM orders WHERE o_id = ?";
                    cmd = new OleDbCommand(str, con);
                    cmd.Parameters.AddWithValue("?", orderId);

                    // Execute the command and check the number of affected rows
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Write("<script>alert('Deleted successfully')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('No record deleted')</script>");
                    }

                    // Rebind the GridView to reflect the changes
                    orderbnd();
                }
                else
                {
                    Response.Write("<script>alert('Invalid order ID')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Order ID label not found')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Record not deleted')</script>");
            Response.Write("<script>console.log('" + ex.Message.Replace("'", "\\'") + "')</script>");
        }
    }

}
