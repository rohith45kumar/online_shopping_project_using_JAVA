<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<%@page import="mypackage.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Add or change address</title>
 <style>
  h3{
   color: red;
  }
 </style>
</head>
<body>
<%
 String msg=request.getParameter("msg");
 if ("valid".equals(msg))
 {
%>
<h3 class="alert">Address Successfully Updated !</h3>
<%
 }
%>
<%
 if ("invalid".equals(msg))
 {
%>
<h3 class="alert">Some thing Went Wrong! Try Again!</h3>
<%
 }
%>
<%
 try {
  Connection con=ConnectionProvider.getCon();
  Statement st= con.createStatement();
  ResultSet rs= st.executeQuery("select * from users where email='"+email+"'");
  while (rs.next())
  {
%>
<form action="addChangeAddressAction.jsp" method="post">
<h3>Enter Address</h3>
 <input type="text" name="address" placeholder="Enter Address" class="input-style" value="<%=rs.getString(7)%>" required>
 <hr>
 <h3>Enter city</h3>
<input type="text" name="city" placeholder="Enter City" class="input-style" value="<%=rs.getString(8)%>" required>

<hr>
<h3>Enter State</h3>
<input type="text" name="state" placeholder="Enter State" class="input-style" value="<%=rs.getString(9)%>" required>

<hr>
<h3>Enter country</h3>
<input type="text" name="country" placeholder="Enter Country" class="input-style" value="<%=rs.getString(10)%>" required>

<hr>
 <button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
  <%
 }}
 catch (Exception e)
 {
  System.out.println(e);
 }
%>
</body>
<br><br><br><br>
</html>