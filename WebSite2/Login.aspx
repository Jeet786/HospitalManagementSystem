<%@ Page Title="Log in" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
   <style>
        .check{
            margin-right: 250px;
            margin-left: 95px;
        }
        .link{
            margin-right: 200px;
            margin-top:10px;
        }
    </style>
    <div class ="limiter">
        <div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(image/bg-01.jpg);">
					<span class="login100-form-title-1">
						Sign In
					</span>
				</div>
                <form id="form" runat="server"> 
				<div class="login100-form validate-form">
<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Username: " TabIndex="1">  <asp:TextBox ID="username" runat="server" BackColor="#CCCCCC" Height="25px"></asp:TextBox></asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter the username" ForeColor="Red" ControlToValidate="username"></asp:RequiredFieldValidator>
                   <br />
                    <br />
<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Password: " TabIndex="2">  <asp:TextBox ID="password" runat="server" BackColor="#CCCCCC" Height="25px" Visible="True" TextMode="Password"></asp:TextBox></asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the password" ForeColor="Red" ControlToValidate="password"></asp:RequiredFieldValidator>
                   <br />
                    <br />
                    <div>
                  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  
<asp:Button ID="login" runat="server" Text="Login" Font-Size="18px" Height="50px" Width="195px" ForeColor="White" BackColor="Black" OnClick="login_Click" TabIndex="4" />
                    <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Forgotpwd.aspx" class="link"  style="font-size:18px;">Forget Password</a>
                         
 </div>
                      
            </div>
                   </form>
        </div>
    </div>
        </div>
</asp:Content>

