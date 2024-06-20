<%@ Page Language="C#" MasterPageFile="~/user/Masteruser.master" AutoEventWireup="true" CodeFile="Viewproduct.aspx.cs" Inherits="user_Viewproduct" Title="ViewProduct" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    
    <center Style="font-size: medium; font-weight: bold; background-color: #CCFF99">
<br />
<br />
<br />
<br />    
    <asp:GridView ID="GridView3"  runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
        GridLines="Vertical" Height="633px" Width="1100px" 
            onrowcommand="GridView3_RowCommand" 
            onrowdatabound="GridView3_RowDataBound" 
            onselectedindexchanged="GridView3_SelectedIndexChanged1">
    <Columns>
         <asp:TemplateField HeaderText="Furniture Id">
            <ItemTemplate>
                <asp:Label ID="lblfid" runat="server" Text='<%#Eval("p_id") %>'></asp:Label>
            </ItemTemplate>
         </asp:TemplateField>
            
         <asp:TemplateField HeaderText="Name">
            <ItemTemplate>
                <asp:Label ID="lblfname" runat="server" Text='<%#Eval("p_name") %>'></asp:Label>
            </ItemTemplate>
         </asp:TemplateField>
            
          <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <asp:Image ID="Image3" runat="server" Height="80px" Width="70px" ImageUrl='<%#Eval("img") %>'/>
                </ItemTemplate>
           </asp:TemplateField>
            
            
        <asp:TemplateField HeaderText="Price">
            <ItemTemplate>
               
                <asp:Label ID="lblfprice" runat="server" Text='<%#Eval("price") %>'></asp:Label>
            </ItemTemplate>
       </asp:TemplateField>
        
        <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
                <asp:TextBox ID="txtqty" runat="server" onkeyup="FetchData(price)" BackColor="#FFFF99" BorderColor="#FF6600" BorderStyle="Solid" BorderWidth="3"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        
       <asp:TemplateField HeaderText="Date">
            <ItemTemplate>
               
                <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>
            </ItemTemplate>
         </asp:TemplateField>
         
        
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" Text="order" CommandName="order" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"/>
            </ItemTemplate>
        </asp:TemplateField>
        
    </Columns>
    
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
<br />
<br />
<br />
<br />
</center>

    
</asp:Content>

