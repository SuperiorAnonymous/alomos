<%@ Page Language="C#" MasterPageFile="~/user/Masteruser.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="user_ChangePassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="font-size: medium; font-weight: bold; background-color: #CCFF99">
<br />
<br />
<br />
<br />
<br />
<table align="center" 
        style="width: 30%; height: 300px; background-color: #C0C0C0; font-size: large; font-weight: bold;">
        <tr>
            <td colspan="2" style="height: 100px">
            <h1 align="center" style="background-color: #000000; color: #FFFFFF"> Change Password</h1>
            </td>
        </tr>
        
        <tr>
        <td style="width: 169px; height: 85px" align="center"><label>Mobile</label></td>
        <td style="height: 85px"><asp:TextBox ID="txtmobile2" placeholder="Mobile" runat="server" 
        Height="40px" Width="224px"  BackColor="White"></asp:TextBox></td>
       </tr>
       
       <tr>
            <td style="width: 169px; height: 64px" align="center"><label>Email</label></td>
            <td style="height: 64px"><asp:TextBox ID="txtemail2"  placeholder="Email" runat="server" 
        Height="40px" Width="224px"  BackColor="White"></asp:TextBox></td>
       </tr>
       
       <tr>
            <td style="width: 169px; height: 64px" align="center"><label>Old Password</label></td>
            <td style="height: 64px"><asp:TextBox ID="txtoldpass2" TextMode="Password" placeholder="Old Password" runat="server" 
         Height="40px" Width="224px" BackColor="White"></asp:TextBox></td>
       </tr>
       
       <tr>
            <td style="width: 169px; height: 64px" align="center"><label>Change Password</label></td>
            <td style="height: 64px"><asp:TextBox ID="txtchangepass2" TextMode="Password"  placeholder="Change Password" runat="server" 
         Height="40px" Width="224px" BackColor="White"></asp:TextBox></td>
       </tr>
       
       <tr>
       <td colspan="2" align="center">
       <asp:Button ID="btnchangepassword2" class="login login-submit" runat="server" 
          Text="Change Password" onclick="btnchangepassword2_Click"  />
       </td>
       </tr>
</table>
<br />
<br />
<br />
<br />
<br />
</center>


</asp:Content>

