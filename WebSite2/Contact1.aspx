<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact1.aspx.cs" Inherits="Contact1" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Contact Us</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/ionicons.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/view.css">
    <link rel="stylesheet" href="css/main.css">
    </head>
     <style>
        table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th,td{
  text-align:left;
  padding:5px;
}
.error{
    margin-left: 50px;
}
    </style>
<%--     <asp:ContentPlaceHolder id="head" runat="server">
    </asp:ContentPlaceHolder>--%>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.html"><img src="image/Logo.png"  height="130"/></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto active">
            <li class="nav-item"><a href="Default.aspx" class="nav-link" style="font-size:20px;">Home</a></li>
          <li class="nav-item"><a href="About.aspx" class="nav-link" style="font-size:20px;">About</a></li>
          <li class="nav-item"><a href="Department.aspx" class="nav-link"style="font-size:20px;">Departments</a></li>
          <li class="nav-item"><a href="Contact1.aspx" class="nav-link" style="font-size:20px;">Contact</a></li>
          <li class="nav-item"><a href="Login.aspx" class="nav-link" style="font-size:20px;"><span>Login</span></a></li>
          <li class="nav-item cta"><a href="Appointment.aspx" class="nav-link" data-toggle="modal" data-target="#modalAppointment" style="font-size:20px;"><span>Make an Appointment</span></a></li>
        </ul>
      </div>
    </div>
  </nav>
     <div class="hero-wrap" style="background-image: url('image/bg_6.jpg'); background-attachment:fixed;">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-8 ftco-animate text-center">
           <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Departments</span></p>
            <h1>Contact Us</h1>
          </div>
        </div>
      </div>
    </div>
<section class="ftco-section contact-section ftco-degree-bg">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
          <div class="col-md-12 mb-4">
            <h2 class="h4">Contact Information</h2>
          </div>
          <div class="w-100"></div>
          <div class="col-md-3">
            <p style="font-size:16px; color:black;"><span><strong style="font-size:18px; color:black;">Address:</strong></span> 203 Fake St. Mountain View, San Francisco, California, USA</p>
          </div>
          <div class="col-md-3">
            <p><span><strong style="font-size:18px; color:black;">Phone:</strong></span> <a style="font-size:16px; color:black;" href="tel://1234567920"> +2 392 3929 210</a></p>
          </div>
          <div class="col-md-3">
            <p><span><strong style="font-size:18px; color:black;">Email:</strong></span> <a  style="font-size:16px; color:black;" href="mailto:info@care&cure.com"> info@care&cure.com</a></p>
          </div>
          <div class="col-md-3">
            <p><span><strong style="font-size:18px; color:black;">Website:</strong></span> <a  style="font-size:16px; color:black;" href="#"> www.care&cure.com</a></p>
          </div>
        </div>
     
  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
     <form id="form" runat="server" method="post">
   <div class="row block-9">
          <div class="col-md-6 pr-md-5">
                <table>
        <tr>
   <th style="border:hidden;"><asp:Label ID="Label12" runat="server" Text="Name:" ForeColor="Black" Font-Size="18px"></asp:Label></th> 
    <td style="border:hidden;"><asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderStyle="Solid" Width="250px" BorderWidth="1px">
   </asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox1" ErrorMessage=" Please fill the name!!" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator></td>
             </tr>
            <tr>
    <th style="border:hidden;"><asp:Label ID="Label13" runat="server" Text="Email:" ForeColor="Black" Font-Size="18px"></asp:Label></th>
    <td style="border:hidden;"><asp:TextBox ID="TextBox2" runat="server" TextMode="Email"  BorderColor="Black" BorderStyle="Solid" Width="250px" BorderWidth="1px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator12"  ControlToValidate="TextBox2" ForeColor="Red" runat="server" ErrorMessage=" Please fill the email!!" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage=" Invalid Email!!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </td>
             </tr>
            <tr>
    <th style="border:hidden;"><asp:Label ID="Label14" runat="server" Text="Subject:" ForeColor="Black" Font-Size="18px"></asp:Label></th>
   <td style="border:hidden;"><asp:TextBox ID="TextBox3" runat="server"  BorderColor="Black" BorderStyle="Solid" Width="250px" BorderWidth="1px">
</asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage=" Please fill the name!!" ForeColor="Red"></asp:RequiredFieldValidator></td> 
             </tr>
            <tr>
    <th style="border:hidden;"><asp:Label ID="Label15" runat="server" Text="Message:" ForeColor="Black" Font-Size="18px"></asp:Label></th>
    <td style="border:hidden;"><asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"  BorderColor="Black" BorderStyle="Solid" Width="250px" BorderWidth="1px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage=" Please fill the name!!" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
                 </tr>
            </table>
              <br />
              <br />
    <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button1_Click"  BackColor="Black" Font-Size="18px" BorderStyle="None" ForeColor="white" Height="50px" Width="200px" />
              <br />
              <br />
              </div>
<div class="col-md-6" id="map"></div>
        </div>
         

    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="modelloginLabel" aria-hidden="true">
    	<div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="modallogintLabel">Login</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
                
                <div id="div-forms">
         
		                <div class="modal-body" id="form1">
                             
<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Username: " TabIndex="1">  <asp:TextBox ID="username" runat="server" BackColor="#CCCCCC" Height="25px"></asp:TextBox></asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter the username" ForeColor="Red" ControlToValidate="username"></asp:RequiredFieldValidator>
                   <br />
                    <br />
<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Black" Text="Password: " TabIndex="2">  <asp:TextBox ID="password" runat="server" BackColor="#CCCCCC" Height="25px" Visible="True" TextMode="Password"></asp:TextBox></asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the password" ForeColor="Red" ControlToValidate="password"></asp:RequiredFieldValidator>
                   <br />
                    <br />
 <asp:Button ID="Button1" runat="server" Text="Login" Font-Size="18px" Height="50px" Width="195px" ForeColor="White" BackColor="Black" OnClick="login_Click" TabIndex="4" />
                    <br />
                    <br />
				        <div class="modal-footer">
                       	 <div>
                                <button id="login_lost_btn" type="button" class="btn btn-link">Forget Password?</button>
                            </div>
				        </div>
           </div>
    	    		    <div class="modal-body" id="lost-form" style="display:none;">
                          
<asp:Label ID="Label1" runat="server" Text="Currrent Password" ForeColor="Black" Font-Size="18px"></asp:Label>  <asp:TextBox ID="pwd" runat="server" Height="25px" BackColor="#CCCCCC"> </asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" Display="Dynamic" ErrorMessage="Enter Current Password" ForeColor="Red"></asp:RequiredFieldValidator>
   <br />
   <br />   
<asp:Label ID="Label2" runat="server" Text="New Password"  Font-Size="18px" ForeColor="Black"></asp:Label>  <asp:TextBox ID="newpwd" runat="server" Height="25px" BackColor="#CCCCCC"> </asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="newpwd" Display="Dynamic" ErrorMessage=" Enter New Password" ForeColor="Red"></asp:RequiredFieldValidator>
 <br />
 <br />
<asp:Label ID="Label5" runat="server" Text="Confirm Password"  Font-Size="18px" ForeColor="Black"></asp:Label>  <asp:TextBox ID="cfmpwd" runat="server" Height="25px" BackColor="#CCCCCC"> </asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cfmpwd" Display="Dynamic" ErrorMessage="Enter Password Again" ForeColor="Red"></asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="newpwd" ControlToValidate="cfmpwd" Display="Dynamic" ErrorMessage="Password Doesn't Match" ForeColor="Red"></asp:CompareValidator>
 <br />
 <br />
<asp:Button ID="change" runat="server" Text="Change Password" Font-Size="18px" Height="50px" Width="195px" ForeColor="White" BackColor="Black" OnClick="change_Click" />
 <br />
 <br />
 <div class="modal-footer">
  <button id="lost_login_btn" type="button" class="btn btn-link">Log In</button>
  </div>
  </div>
    
      </div>
	</div>
    </div>
        </div>
          <div class="modal fade" id="modalAppointment" tabindex="-1" role="dialog" aria-labelledby="modalAppointmentLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="modalAppointmentLabel">Appointment</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
<div class="modal-body">
    <table>
        <tr>
<th style="border:hidden;"><asp:Label ID="Label6" runat="server" Text="Name:" Font-Size="18px" ForeColor="Black"></asp:Label></th>
<td style="border:hidden;"><asp:TextBox ID="Name" runat="server" Height="35px" Width="250px"  BackColor="#CCCCCC" Font-Size="18px"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Name" CssClass="error" ErrorMessage="Please fill the patient name!!" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
<th style="border:hidden;"><asp:Label ID="Label7" runat="server" Text="Email:" Font-Size="18px" ForeColor="Black"></asp:Label></th>
<td style="border:hidden;"><asp:TextBox ID="Email" runat="server" Height="35px" Width="250px"  BackColor="#CCCCCC" Font-Size="18px"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator7"  ControlToValidate="Email" CssClass="error" ForeColor="Red" runat="server" ErrorMessage="Please fill the email!!"></asp:RequiredFieldValidator>  
 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  CssClass="error" ControlToValidate="Email" ErrorMessage="Invalid Email!!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
<th style="border:hidden;"><asp:Label ID="Label8" runat="server" Text="Doctor Name:" Font-Size="18px" ForeColor="Black"></asp:Label></th>
<td style="border:hidden;"><asp:TextBox ID="Doctor" runat="server" Height="35px" Width="250px"  BackColor="#CCCCCC" Font-Size="18px"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator8"  CssClass="error" runat="server" ControlToValidate="Doctor" ErrorMessage="Please fill the specific doctor name!!" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
<th style="border:hidden;"><asp:Label ID="Label9" runat="server" Text="Date:" Font-Size="18px" ForeColor="Black"></asp:Label></th>    
<td style="border:hidden;"><asp:TextBox ID="Date" runat="server" Height="35px" TextMode="Date" Width="250px"  BackColor="#CCCCCC" Font-Size="18px"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator9" CssClass="error" runat="server" ControlToValidate="Date" ErrorMessage="Please select the appointment date!!!" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>  
<th style="border:hidden;"><asp:Label ID="Label10" runat="server" Text="Time:" Font-Size="18px" ForeColor="Black"></asp:Label></th>
<td style="border:hidden;"><asp:DropDownList ID="DropDownList3" runat="server" Height="35px" Width="250px"  BackColor="#CCCCCC" Font-Size="18px">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>10:00am - 1:00pm</asp:ListItem>
            <asp:ListItem>4:00pm - 7:00pm</asp:ListItem>
            <asp:ListItem>9:00pm-11:00pm</asp:ListItem>
        </asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"  CssClass="error" ControlToValidate="DropDownList3" ErrorMessage="Please select the suitable timings!!!" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator></td>
              </tr>
            <tr>        
<th style="border:hidden;"><asp:Label ID="Label11" runat="server" Text="Condition:" Font-Size="18px" ForeColor="Black"></asp:Label></th>
<td style="border:hidden;"><asp:TextBox ID="Condition" runat="server" Height="80px" TextMode="MultiLine" Width="250px"  BackColor="#CCCCCC" Font-Size="18px"></asp:TextBox></td>
       </tr>
         <tr>
        </table>
    <br />
<asp:Button ID="Button2" runat="server" Text="Book Appointment" OnClick="Button1_Click" BackColor="#167ce9" Font-Size="18px" BorderStyle="None" ForeColor="white" Height="50px" Width="250px" />
           </div>
           </div>
          </div>
         </div>
         </form>  
                 </div>
    </section>
     <footer class="ftco-footer ftco-bg-dark ftco-section img" style="background-image: url(images/bg_5.jpg);">
    	<div class="overlay"></div>
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
                <h2 class="ftco-heading-2" style="font-size:26px;">Address:</h2>
                <ul>
	                <li style="font-size:20px;"><a href="#" style="color:white;"><span class="icon icon-map-marker"></span><span class="text" style="color:white; font-size:20px;"> 203 Fake St. Mountain View, San Francisco, California, USA</span></a></li>
	                <li style="font-size:20px;"><a href="#"><span class="icon icon-phone"></span><span class="text" style="font-size:20px;"> +2 392-3929-210</span></a></li>
	                <li style="font-size:20px;"><a href="#"><span class="icon icon-envelope"></span><span class="text" style="font-size:20px;"> info@care&cure.com</span></a></li>
	              </ul>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>

          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2" style="font-size:26px;">Emergency Number:</h2>
            <div class="block-23 mb-3">
	              <p><a href="#" style="color:white;"><span class="icon icon-phone"></span><span class="text" style="color:white; font-size:20px;"> 1800-2020-2020</span></a></p>
	            </div>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-md-12 text-center">

            <p style="font-size:20px;">
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> Care & Cure Hospital all rights reserved
          </p>
          </div>
        </div>
      </div>
    </footer>
  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
<script src="js/navigation.js"></script>
</body>
</html>
