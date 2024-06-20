<%@ Page Language="C#" MasterPageFile="~/user/Masteruser.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="user_Feedback" Title="FeedbackMenu" %>

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
        <td style="width: 169px; height: 85px" align="center"><asp:Label ID="lblemail1" runat="server" Text="Email Id"></asp:Label></td>
        <td style="height: 85px" align="center"><asp:TextBox ID="txtfeed_email1" runat="server" BackColor="#FFFFCC" Height="25px" Width="250px" Font-Bold="True"  āFont-Size="Small"></asp:TextBox>
        <asp:RequiredFieldValidator ID="valid_feed_email" runat="server" ControlToValidate="txtfeed_email1" ErrorMessage="Required " ForeColor="Red"></asp:RequiredFieldValidator></td>
       </tr>
       
       <tr>
            <td style="width: 169px; height: 64px" align="center"><asp:Label ID="lblmobile1" runat="server" Text="Mobile Number"></asp:Label></td>
            <td style="height: 64px" align="center"><asp:TextBox ID="txtfeed_mobile1" 
                    runat="server" BackColor="#FFFFCC" Height="25px" Width="250px" Font-Bold="True" 
                    Font-Size="Small"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valid_feed_mobile" runat="server" ControlToValidate="txtfeed_mobile1" ErrorMessage="Required " ForeColor="Red"></asp:RequiredFieldValidator></td>
       </tr>
       
       <tr>
            <td style="width: 169px; height: 64px" align="center"><asp:Label ID="lblfeedback1" runat="server" Text="Feedback"></asp:Label></td>
            <td style="height: 64px" align="center"><asp:TextBox ID="txtfeedback" 
                    runat="server" BackColor="#FFFFCC" Height="45px" Width="250px" Font-Bold="True" 
                    Font-Size="Small"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valid_feedback" runat="server" ControlToValidate="txtfeedback" ErrorMessage="Required " ForeColor="Red"></asp:RequiredFieldValidator></td>
       </tr>
       
      
       
       <tr>
       <td colspan="2" align="center">
            <asp:Button ID="btnsend1" runat="server" Text="SEND" onclick="btnsend1_Click" 
                BackColor="#0099CC" Font-Bold="True" Font-Size="Medium" Width="119px"     />
       </td>
       </tr>
</table>
<br />
<br />
<br />
<br />
<br />
</center>

<%--<div >
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">FEEDBACK</h2>
                </div>
                <div class="card-body">
                   
                        
                        
                        <div class="form-row">
                            <div class="name">
                             <asp:Label ID="lblemail1" runat="server" Text="Email Id"></asp:Label>
                            </div>
                            <div class="value">
                                <div class="input-group">
                                <asp:TextBox ID="txtfeed_email1" runat="server" BackColor="#FFCC99" Height="18px" 
                                         Width="300px"></asp:TextBox>
                                  
                                </div>
                            </div>
                        </div>
                        
                       
                          <div class="form-row">
                            <div class="name">
                             <asp:Label ID="lblmobile1" runat="server" Text="Mobile Number"></asp:Label>
                            </div>
                            <div class="value">
                                <div class="input-group">
                                <asp:TextBox ID="txtfeed_mobile" runat="server" BackColor="#FFCC99" Height="19px" 
                                        Width="300px"></asp:TextBox>
                                  
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name">
                             <asp:Label ID="lblfeedback1" runat="server" Text="Feedback"></asp:Label>
                            </div>
                            <div class="value">
                                <div class="input-group">
                                <asp:TextBox ID="txtfeedback" runat="server" BackColor="#FFCC99" Width="300px"></asp:TextBox>
                                  
                                </div>
                            </div>
                        </div>
                        
                        
                        <div>
                             <asp:Button ID="btnsend1" class="btn btn--radius-2 btn--red" runat="server" 
                                Text="SEND" onclick="btnsend1_Click"     />
                       
                        </div>
                   
                </div>
            </div>
        </div>
    </div><br />
--%>




</asp:Content>

