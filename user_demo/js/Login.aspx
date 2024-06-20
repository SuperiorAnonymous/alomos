<%@ Page Language="C#" MasterPageFile="~/user_demo/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="user_Login" Title="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="login-card">
    <h1 style="background-color: #FFFF99; color: #0000FF;">Log-in</h1><br>
  <div>
        <div>
        <center><asp:DropDownList ID="droplistlogin1" runat="server"  BackColor="White" Height="32px" Width="92px">
            <asp:ListItem>USER</asp:ListItem>
            <asp:ListItem>ADMIN</asp:ListItem>
        </asp:DropDownList><br /></center>
        </div><br />
    
    <asp:TextBox ID="txtusername1" placeholder="Username" runat="server" 
          BackColor="White"></asp:TextBox><br />
    
    
    <asp:TextBox ID="txtpassword1" TextMode="Password" placeholder="Password" runat="server" 
          BackColor="White"></asp:TextBox><br/>
    <!--<input type="password" name="pass" placeholder="Password">-->
    
    
    <asp:Button ID="btnlogin" class="login login-submit" runat="server" Text="Login" 
            onclick="btnlogin_Click" />
    <!--<input type="submit" name="login" class="login login-submit" value="login">-->
  </div>

  <div class="login-help">
   
        <asp:LinkButton ID="linkragistration1" runat="server" Text="Registration" 
             Font-Bold="True" Font-Underline="True" onclick="linkragistration1_Click" >Registration</asp:LinkButton>&nbsp&nbsp&nbsp
            
        <asp:LinkButton ID="linkforgotpassword" runat="server" Text="Forgot Password" 
            Font-Bold="True" Font-Underline="True" onclick="linkforgotpassword_Click" >Forgot Password</asp:LinkButton><br />
            
        <asp:LinkButton ID="linkchandepassword" runat="server" Text="Change Password" 
            Font-Bold="True" Font-Underline="True" onclick="linkchandepassword_Click" >Change Password</asp:LinkButton>
    
  </div>
</div>


</asp:Content>

