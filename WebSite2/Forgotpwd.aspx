<%@ Page Title="Forgotpwd" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeFile="Forgotpwd.aspx.cs" Inherits="_Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
table, th, td {
border: 1px solid black;
border-collapse: collapse;
margin-top: 30px;
}
th, td {
padding: 10px;
}
th {
text-align: left;
}
</style>
<div class="limiter">
<div class="container-login100">
<div class="wrap-login100">
<div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
<span class="login100-form-title-1">
    Reset Password
</span>
</div>
<form id="form1" runat="server">
<div class="login100-form validate-form">
<center> 
<table style="border:hidden;">
<tr>
<th style="border:hidden;"><asp:Label ID="Label1" runat="server" Text="Currrent Password" ForeColor="Black" Font-Size="18px"></asp:Label></th>
<td style="border:hidden;"><asp:TextBox ID="password" runat="server" Height="25px" BackColor="#CCCCCC"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="password" Display="Dynamic" ErrorMessage="Enter Current Password" ForeColor="Red"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<th style="border:hidden;"><asp:Label ID="Label2" runat="server" Text="New Password"  Font-Size="18px" ForeColor="Black"></asp:Label></th>
<td style="border:hidden;"><asp:TextBox ID="newpwd" runat="server" Height="25px" BackColor="#CCCCCC"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="newpwd" Display="Dynamic" ErrorMessage=" Enter New Password" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
<tr>
<th style="border:hidden;"><asp:Label ID="Label3" runat="server" Text="Confirm Password"  Font-Size="18px" ForeColor="Black"></asp:Label></th>
<td style="border:hidden;"><asp:TextBox ID="cfmpwd" runat="server" Height="25px" BackColor="#CCCCCC"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cfmpwd" Display="Dynamic" ErrorMessage="Enter Password Again" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="newpwd" ControlToValidate="cfmpwd" Display="Dynamic" ErrorMessage="Password Doesn't Match" ForeColor="Red"></asp:CompareValidator></td>
</tr>
</table>
<br />
    <div>
<asp:Button ID="change" runat="server" Text="Change Password" Font-Size="18px" Height="50px" Width="195px" ForeColor="White" BackColor="Black" OnClick="change_Click" />
        <br />
 <a href="Login.aspx" class="link" style="font-size:20px;">Login</a>
    </div>
    </center>	
</div>
                     
</form>
</div>
</div>
</div>
</asp:Content>