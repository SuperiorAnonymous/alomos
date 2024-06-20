<%@ Page Language="C#" MasterPageFile="~/user/Masteruser.master" AutoEventWireup="true" CodeFile="vieworder.aspx.cs" Inherits="user_vieworder" Title="ViewOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center style="font-size: medium; font-weight: bold; background-color: #CCFF99">
 <br />
 <br />
 <br />
 <br />
        <h1>User  Detail</h1>
   
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px"
            CellPadding="3" Height="234px" Width="1100px" ForeColor="Black"
            GridLines="Vertical">
            <columns>
         <asp:TemplateField HeaderText="Order Id">
            <ItemTemplate>
                <asp:Label ID="lblfid" runat="server" Text='<%#Eval("o_id") %>'></asp:Label>
            </ItemTemplate>
         </asp:TemplateField>
            
         <asp:TemplateField HeaderText="Name">
            <ItemTemplate>
                <asp:Label ID="lblname" runat="server" Text='<%#Eval("cname") %>'></asp:Label>
            </ItemTemplate>
         </asp:TemplateField>
            
        <asp:TemplateField HeaderText="Username">
            <ItemTemplate>
                <asp:Label ID="lbluname" runat="server" Text='<%#Eval("username") %>'></asp:Label>
            </ItemTemplate>
         </asp:TemplateField>
            
         <asp:TemplateField HeaderText="Gender">
            <ItemTemplate>
                <asp:Label ID="lblgender" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
            </ItemTemplate>
         </asp:TemplateField>
         
          <asp:TemplateField HeaderText="Mobile Number">
            <ItemTemplate>
                <asp:Label ID="lblmobile" runat="server" Text='<%#Eval("mobile") %>'></asp:Label>
            </ItemTemplate>
         </asp:TemplateField>
            
         <asp:TemplateField HeaderText="Email">
            <ItemTemplate>
                <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email") %>'></asp:Label>
            </ItemTemplate>
         </asp:TemplateField>
           
        <asp:TemplateField HeaderText="Password">
            <ItemTemplate>
                <asp:Label ID="lblpass" runat="server" Text='<%#Eval("pass") %>'></asp:Label>
            </ItemTemplate>
       </asp:TemplateField>
        
       <asp:TemplateField HeaderText="Address">
            <ItemTemplate>
                <asp:Label ID="lbladd" runat="server" Text='<%#Eval("address") %>'></asp:Label>
            </ItemTemplate>
         </asp:TemplateField>
            
          
    </columns>

            <footerstyle backcolor="#CCCCCC" />
            <pagerstyle backcolor="#999999" forecolor="Black" horizontalalign="Center" />
            <selectedrowstyle backcolor="#000099" font-bold="True" forecolor="White" />
            <headerstyle backcolor="Black" font-bold="True" forecolor="White" />

            <alternatingrowstyle backcolor="#CCCCCC" />

        </asp:GridView></center>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <center Style="font-size: medium; font-weight: bold; background-color: #CCFF99">
        <h1>Order Detail</h1>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"
                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px"
                CellPadding="3" Height="234px" onrowcommand="GridView2_RowCommand"
                Width="1100px" ForeColor="Black" GridLines="Vertical">
                <Columns>
         <asp:TemplateField HeaderText="order id">
            <ItemTemplate>
                <asp:Label ID="lblfid" runat="server" Text='<%#Eval("o_id") %>'></asp:Label>
            </ItemTemplate>
         </asp:TemplateField>
            
         <asp:TemplateField HeaderText="Product id">
            <ItemTemplate>
                <asp:Label ID="lblpid" runat="server" Text='<%#Eval("p_id") %>'></asp:Label>
            </ItemTemplate>
         </asp:TemplateField>
           
           <asp:TemplateField HeaderText="Product Name">
            <ItemTemplate>
                <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'></asp:Label>
            </ItemTemplate>
         </asp:TemplateField>
            
         <asp:TemplateField HeaderText="Amount">
            <ItemTemplate>
                <asp:Label ID="lblamt" runat="server" Text='<%#Eval("amount") %>'></asp:Label>
            </ItemTemplate>
           
         </asp:TemplateField>
          
          <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
                <asp:TextBox ID="txtqty" onkeyup="FrtchData()"  Text='<%#Eval("quantity") %>' runat="server"></asp:TextBox>
            </ItemTemplate>
         </asp:TemplateField>
      
         
         <asp:TemplateField HeaderText="Total">
            <ItemTemplate>
              <asp:TextBox ID="lbltot" Text="0"  runat="server"></asp:TextBox>
               
            </ItemTemplate>
         </asp:TemplateField>    
          
       <asp:TemplateField HeaderText="Date">
            <ItemTemplate>
                <asp:TextBox ID="TextBox1" onkeyup="FrtchData()"  Text='<%#Eval("date_time") %>' runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        
        <asp:BoundField DataField="date_time" DataFormatString="{0:d}" HeaderText="OrderDate"/>

        <asp:TemplateField>
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" Text=" confirm order" CommandName="order"/>
            </ItemTemplate>
        </asp:TemplateField>
        
    </Columns>

                <footerstyle backcolor="#CCCCCC" />
                <pagerstyle backcolor="#999999" forecolor="Black" horizontalalign="Center" />
                <selectedrowstyle backcolor="#000099" font-bold="True" forecolor="White" />
                <headerstyle backcolor="Black" font-bold="True" forecolor="White" />

                <alternatingrowstyle backcolor="#CCCCCC" />

            </asp:GridView>
       <br />
       <br />
       <br />
       <br />
</center>

</asp:Content>

