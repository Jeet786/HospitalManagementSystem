<%@ Page Title="Appointment" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeFile="Appointment.aspx.cs" Inherits="Appointment" %>
		
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
table, th, td {
border: 1px solid black;
border-collapse: collapse;
margin-top: 30px;
margin-left: 150px;
}
th, td {
padding: 10px;
}
th {
text-align: left;
}
.clear{
clear: both;
}

input[type=submit],[type=reset] {
background-color: #4CAF50;
color: white;
padding: 14px 20px;
margin: 8px 0;
border: none;
border-radius: 4px;
cursor: pointer;
}

input[type=submit]:hover {
background-color: #45a049;
}

.request{
border-radius: 5px;
background-color: #f2f2f2;
padding: 20px;
}
     
</style>
<div class=" col-lg-12 md-6 sm-4 request ">
<form id="form1" runat="server">
<center><h2  style="font-size:36px;"><b>Appointment Form</b</h2></center>
<center><table style="width: 50%; border:hidden;" id="table1">  
<tr>
<th style="border:hidden; font-size:24px; color:black;">Name</th>
<td style="border:hidden;"><asp:TextBox ID="Name" runat="server" Height="40px" Width="350px"  BackColor="#CCCCCC" Font-Size="18px"></asp:TextBox>
<br />
<br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Name" ErrorMessage="Please fill the patient name!!" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<th style="border:hidden; font-size:24px; color:black;">Email</th>
<td style="border:hidden;"><asp:TextBox ID="Email" runat="server" Height="40px" Width="350px"  BackColor="#CCCCCC" Font-Size="18px"></asp:TextBox>
<br />
<br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator7"  ControlToValidate="Email"  ForeColor="Red" runat="server" ErrorMessage="Please fill the email!!" Display="Dynamic"></asp:RequiredFieldValidator>
 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  ControlToValidate="Email" ErrorMessage="Invalid Email!!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator></td>
</tr>
<tr>
<th style="border:hidden; font-size:24px; color:black;">Doctor Name</th>
<td style="border:hidden;"><asp:DropDownList ID="Doctor" runat="server"  Height="40px" Width="350px" BackColor="#CCCCCC" Font-Size="18px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name"></asp:DropDownList>
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Emp_DetailConnectionString %>" SelectCommand="SELECT [name] FROM [docdetail]"></asp:SqlDataSource>
<br />
<br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Doctor" ErrorMessage="Please fill the specific doctor name!!" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<th style="border:hidden; font-size:24px; color:black;">Date</th>    
<td style="border:hidden;"><asp:TextBox ID="Date" runat="server" Height="40px" TextMode="Date" Width="350px"  BackColor="#CCCCCC" Font-Size="18px"></asp:TextBox>
<br />
<br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator9" Display="Dynamic" runat="server" ControlToValidate="Date" ErrorMessage="Please select the appointment date!!!" ForeColor="Red"></asp:RequiredFieldValidator></td>
</tr>
<tr>  
<th style="border:hidden; font-size:24px; color:black;">Time</th>
<td style="border:hidden;"><asp:DropDownList ID="DropDownList3" runat="server" Height="40px" Width="350px"  BackColor="#CCCCCC" Font-Size="18px">
<asp:ListItem>Select</asp:ListItem>
<asp:ListItem>10:00am - 1:00pm</asp:ListItem>
<asp:ListItem>4:00pm - 7:00pm</asp:ListItem>
<asp:ListItem>9:00pm-11:00pm</asp:ListItem>
</asp:DropDownList>
<br />
<br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"  Display="Dynamic" ControlToValidate="DropDownList3" ErrorMessage="Please select the suitable timings!!!" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>        
<th style="border:hidden; font-size:24px; color:black;">Condition</th>
<td style="border:hidden;"><asp:TextBox ID="Condition" runat="server" Height="80px" TextMode="MultiLine" Width="350px"  BackColor="#CCCCCC" Font-Size="18px"></asp:TextBox></td>
</tr>
</table></center>
<center><asp:Button ID="Button2" runat="server" Text="Book Appointment" OnClick="Button1_Click" BackColor="#167ce9" Font-Size="18px" BorderStyle="None" ForeColor="white" Height="50px" Width="250px" /></center>
</form>
</div>
</b>
</asp:Content>