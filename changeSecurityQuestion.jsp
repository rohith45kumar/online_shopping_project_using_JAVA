<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<%@page import="mypackage.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
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
<h3 class="alert">Your security Question successfully changed !</h3>
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
<form action="changeSecurityQuestionAction.jsp" method="post">
<h3>Select Your New Securtiy Question</h3>
  <select class="input-style" name="securityQuestion">
   <option value="what was your first car?">what was your first car?</option>
   <option value="what is the name of your first pet?">what is the name of your first pet?</option>
   <option value="What elementary school did you attend?">What elementary school did you attend?</option>
   <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>

  </select>
 <hr>
 <h3>Enter Your New Answer</h3>
 <input type="text" name="newAnswer" placeholder="Enter New Answer" required class="input-style">
<hr>
<h3>Enter Password (For Security)</h3>
 <input type="password" name="password" placeholder="Enter Password" required class="input-style">

<hr>
<button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>