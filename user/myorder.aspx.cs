using System;
using System.Data;
using System.Data.OleDb;
using System.Web.UI.WebControls;

public partial class user_myorder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Page_Load fonksiyonu boş olarak bırakıldı çünkü şu anlık herhangi bir işlem yapmıyoruz.
    }

    protected void SearchByTagButton_Click(object sender, EventArgs e)
    {
        try
        {
            string strConn = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Legion\\OneDrive\\Masaüstü\\jay\\jayesh_Projects\\fjayesh.mdb";
            using (OleDbConnection conn = new OleDbConnection(strConn))
            {
                conn.Open();
                string sql = "SELECT * FROM orders WHERE o_id=@SearchByTag";
                using (OleDbCommand cmd = new OleDbCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@SearchByTag", SearchByTagTB.Text.Trim());
                    using (OleDbDataAdapter da = new OleDbDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        gvPatients.DataSource = dt;
                        gvPatients.DataBind();
                    }
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message); // Hata mesajını geçici olarak sayfada gösteriyoruz.
            // Gerçek uygulamada hata mesajını daha kontrollü bir şekilde işlemeniz gerekebilir.
        }
    }
}
