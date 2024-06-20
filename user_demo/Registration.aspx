<%@ Page Language="C#" MasterPageFile="~/user_demo/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="user_Registration" Title="Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center style="background-color: #CCFF99">
<table align="center" 
        
        style=" width: 50%; height: 800px; background-color: #C0C0C0; font-size: large; font-weight: bold;">
        <tr>
            <td colspan="2" style=" font-size: large; font-weight: bold;">
            <h1 align="center" style="background-color: #000000; color: #FFFFFF"> Registration</h1>
            </td>
        </tr>
        
        
        <tr>
            <td  align="center">
                <asp:Label ID="lbl_id1" runat="server" Text="Id"></asp:Label>
  
            </td>
            <td  align="center" >
                <asp:Label ID="lbl_signup_id" runat="server" Text="Label"></asp:Label>
            </td>
            
        </tr>
        
        <tr>
            <td  align="center">
              <asp:Label ID="lbl_signup_name" runat="server" Text="Name"></asp:Label>
            </td>
            <td align="center" >
                <asp:TextBox ID="txt_signup_name" placeholder="Name" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="validfname" runat="server" ControlToValidate="txt_signup_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> 
                
            </td>
            
        </tr>
        
        <tr>
            <td  align="center">
               <asp:Label ID="lbl_signup_username1" runat="server" Text="Username"></asp:Label><br />
            </td>
            <td  align="center">
               <asp:TextBox ID="txt_signup_username1" placeholder="Username" runat="server" 
               Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="validuser" runat="server" ControlToValidate="txt_signup_username1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            
            </td>
            
        </tr>
        
        <tr>
            <td  align="center">
                <asp:Label ID="lbl_signup_gender" runat="server" Text="Gender"></asp:Label><br />
            </td>
            <td  align="center">
                <asp:RadioButtonList ID="Dropdownlist_signup_gender" runat="server">
                
                <asp:ListItem Text="male" Value="0">male</asp:ListItem>
                <asp:ListItem Text="female" Value="1">female</asp:ListItem>
                </asp:RadioButtonList>
                
            </td>
        </tr>
        
        <tr>
            <td  align="center"><asp:Label ID="lbl_signup_mobile" runat="server" Text="Mobile"></asp:Label>
            </td>
            <td  align="center">
                <asp:TextBox ID="txt_signup_mobile" placeholder="Mobile" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validmobile" runat="server" ControlToValidate="txt_signup_mobile" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
        
        <tr>
            <td  align="center"><asp:Label ID="lbl_signup_email" runat="server" Text="Email"></asp:Label></td>
            <td align="center">
             <asp:TextBox ID="txt_signup_email" placeholder="Email" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>   
            <asp:RequiredFieldValidator ID="validemail" runat="server" ControlToValidate="txt_signup_email" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
            <asp:RegularExpressionValidator ID="Regulare_mail" runat="server" ErrorMessage="Valid Email ID" ValidationGroup="vgSubmit" ControlToValidate="txt_signup_email"  ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            </asp:RegularExpressionValidator>
        </tr>
        
        <tr>
            <td  align="center"><asp:Label ID="lbl_signup_pass" runat="server" Text="Password"></asp:Label>
            </td>
            <td  align="center"><asp:TextBox ID="txt_signup_pass" placeholder="Password" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
            <asp:RequiredFieldValidator ID="validpwd" runat="server" ControlToValidate="txt_signup_pass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
           
            </td>
        </tr>

        <tr>
            <td  align="center"><asp:Label ID="lbl_signup_cpass" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td  align="center"><asp:TextBox ID="txt_signup_cpass"  placeholder="Confirm Password" runat="server" Height="25px" Width="380px" 
                    BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium"  ontextchanged="txt_signup_cpass_TextChanged"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="validcpass" runat="server" ControlToValidate="txt_signup_cpass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>

        <tr>
            <td  align="center"><asp:Label ID="lbl_signup_address" runat="server" Text="Address"></asp:Label>
            </td>
            <td  align="center"><asp:TextBox ID="txt_signup_address" placeholder="Address" runat="server" Height="25px" Width="380px" BackColor="#FFFFCC" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valid_address" runat="server" ControlToValidate="txt_signup_address" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator> </td>
        </tr>
        
        <tr>
            <td colspan="2" align="center" 
                style="background-color: #C0C0C0; font-size: large; font-weight: bold;">
                <asp:Button ID="btnsubmit" class="login login-submit" runat="server" 
                Text="Submit" onclick="btnsubmit_Click" Font-Bold="True" Font-Size="Large" 
                    Height="40px" Width="224px" BackColor="#00FFCC" />
            </td>
        </tr>
</table>
</center>



</asp:Content>

