<%@ Page Language="C#" MasterPageFile="~/user_demo/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="user_demo_Login" Title="loginmanu" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center style="font-size: medium; font-weight: bold; background-color: #CCFF99" >
<br />
<br />
<br />
<br />
<br />
<table align="center" 
        style="background-color: #C0C0C0; width: 35%; height: 250px;  font-size: large; font-weight: bold;">
        <tr>
            
            <td colspan="3" style="height: 100px">
            <h1 align="center" style="background-color: #000000; color: #FFFFFF" > Login</h1>
            </td>
        </tr>
        
        <tr>
            <td rowspan="6" width="182px">
                <img id="imges1" src="../img1/lockicon.jpg"  Height="200px" Width="150px" />
            </td>
            <td colspan="2" align="center" style="height: 47px">
                <asp:DropDownList ID="droplistlogin1" runat="server"  BackColor="White" 
                Height="32px" Width="149px">
                <asp:ListItem>Select Type</asp:ListItem>
                <asp:ListItem>USER</asp:ListItem>
                <asp:ListItem>ADMIN</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        
       <tr>
        <td style="width: 169px; height: 57px" align="center"><label>Username</label></td>
        <td style="height: 57px">
            <asp:TextBox ID="txtusername1" placeholder="Username" runat="server" 
         Height="40px" Width="200px" BackColor="White"></asp:TextBox></td>
       </tr>
       
       <tr>
            <td style="width: 169px; height: 50px" align="center"><label>Password</label></td>
            <td style="height: 50px"><asp:TextBox ID="txtpassword1" TextMode="Password" 
                    placeholder="Password" runat="server" 
             Height="40px" Width="200px"   BackColor="White"></asp:TextBox></td>
       </tr>
       
       <tr>
       <td colspan="2" align="center">
       <asp:Button ID="btnlogin" class="login login-submit" runat="server" Text="Login" 
               onclick="btnlogin_Click" Font-Bold="True" Font-Size="Large" ForeColor="Black" 
               Height="34px" Width="250px" BackColor="#0099CC"/>
       </td>
       </tr>
       
       <tr>
            <td colspan="2" align="center">
                <asp:LinkButton ID="LinkButton1" runat="server" Text="Forgot Password" 
                    Font-Bold="True" Font-Size="Medium" Font-Underline="True" 
                    onclick="LinkButton1_Click"></asp:LinkButton></td>
       </tr>
</table>
<br />
<br />
<br />
<br />
<br />
</center>

</asp:Content>

