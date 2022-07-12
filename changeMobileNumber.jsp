<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<%@page import="mypackage.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>change mobile number</title>
 <style>
  h3{
   color: red;
  }
 </style>
</head>
<body>
<%
 String msg=request.getParameter("msg");
 if ("done".equals(msg))
 {
%>
<h3 class="alert">Your Mobile Number successfully changed!</h3>
<%
 }
%>
<%
 if ("wrong".equals(msg))
 {
%>
<h3 class="alert">Your Password is wrong!</h3>
<%
 }
%>
<form action="changeMobileNumberAction.jsp" method="post">
 <h3>Enter Your New Mobile Number</h3>
 <input type="number" name="mobileNumber" placeholder="Enter your new mobile number" required class="input-style">
 <hr>
<h3>Enter Password (For Security)</h3>
 <input type="password" name="password" placeholder="Enter password" required class="input-style">

<hr>
 <button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>