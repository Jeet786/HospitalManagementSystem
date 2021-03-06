﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3"%>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
     <title>Home</title>
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
  margin-top: 30px;
  margin-left: 150px;
}
th, td {
  padding: 10px;
  color:black;
}
th {
  text-align: left;
  color:black;
}
.clear{
 	clear: both;
 }
 
</style>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.html"><img src="image/Logo.png"  height="130"/></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"><a href="Default.aspx" class="nav-link" style="font-size:20px;">Home</a></li>
          <li class="nav-item"><a href="About.html" class="nav-link" style="font-size:20px;">About</a></li>
          <li class="nav-item"><a href="department.html" class="nav-link" style="font-size:20px;">Departments</a></li>
          <li class="nav-item"><a href="contact.html" class="nav-link" style="font-size:20px;">Contact</a></li>
         </ul>
           <ul class="navbar-nav navbar-right  ml-auto">
      <li class="nav-item"><a href="#" class="nav-link" style="font-size:20px;"><span class="glyphicon glyphicon-user"</span> <asp:Label runat="server" ID="lbluserInfo"></asp:Label></a></li>
        <li class="nav-item"><a href="Default.aspx" class="nav-link" style="font-size:20px;"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
      </div>
    </div>
  </nav>   
 <br />
 <br />
     <form id="form1" runat="server">
         <h2 style="font-size:36px;"><center><strong>Personal Details</strong></h2></center><br/>
     <table style="width:80%">
  <tr>
    <th>Name: <asp:TextBox ID = "txtName" runat = "server" BorderStyle="None"  BackColor="Transparent"  /></th>
    <th>Qualification: <asp:TextBox ID = "txtquali" runat = "server" BorderStyle="None"  BackColor="Transparent" /></th> 
  </tr>
  <tr>
   <th>Specialist: <asp:TextBox ID = "txtspeci" runat = "server" BorderStyle="None"  BackColor="Transparent" /></th>
    <th>Email: <asp:TextBox ID = "txtemail" runat = "server" BorderStyle="None"  BackColor="Transparent" /></th> 
  </tr>
</table>
         </form><br />
     <asp:PlaceHolder ID = "PlaceHolder1" runat="server">
         <h2 style="font-size:36px; margin-left:150px;"><left><strong>Appointments</strong></h2></left>
     </asp:PlaceHolder>
     <div class ="clear">
         </div>
    <br />
    <br />
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
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> Care & Cure Hospital All Rights Reserved
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
</body>
</html>

