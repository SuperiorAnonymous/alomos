<%@ Page Language="C#" MasterPageFile="~/user_demo/MasterPage.master" AutoEventWireup="true" CodeFile="forgotpass.aspx.cs" Inherits="user_demo_forgotpass" Title="Forgot Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center style="background-color: #FFFFCC">
<table align="center" style="border: thin groove #000000; width: 30%; height: 300px; background-color: #C0C0C0; font-size: large; font-weight: bold;">
        <tr>
            <td colspan="2" style="height: 100px">
            <h1 align="center" style="background-color: #000000; color: #FFFFFF"> Forgot Password</h1>
            </td>
        </tr>
        
        
        
       <tr>
        <td style="width: 269px; height: 85px" align="center">
        <label>Mobile</label></td>
        <td style="height: 85px"> <asp:TextBox ID="txtmobile1" placeholder="Mobile" runat="server" 
         Height="25px" Width="280px" BackColor="White"></asp:TextBox></td>
       </tr>
       
       <tr>
            <td style="width: 269px; height: 64px" align="center"><label>Email</label></td>
            <td style="height: 64px"> <asp:TextBox ID="txtemail1"  placeholder="Email" runat="server" 
         Height="25px" Width="280px" BackColor="White"></asp:TextBox></td>
       </tr>
       
        <tr>
            <td style="width: 269px; height: 64px" align="center"><label>Old Password</label></td>
            <td style="height: 64px"><asp:TextBox ID="txtoldpass1" TextMode="Password" placeholder="Old Password" runat="server" 
        Height="25px" Width="280px"  BackColor="White"></asp:TextBox></td>
       </tr>
       
        <tr>
            <td style="width: 269px; height: 64px" align="center"><label>Change Password</label></td>
            <td style="height: 64px"><asp:TextBox ID="txtchangepass1" TextMode="Password"  placeholder="Change Password" runat="server" 
        Height="25px" Width="280px"  BackColor="White"></asp:TextBox></td>
       </tr>
       
       <tr>
       <td colspan="2" align="center">
        <asp:Button ID="btnforgotpassword" class="login login-submit" runat="server" 
          Text="Forgot Password" Font-Size="Medium" Height="22px" Width="197px" 
               onclick="btnforgotpassword_Click"    />
       </td>
       </tr>
      
</table>
</center>


</asp:Content>

