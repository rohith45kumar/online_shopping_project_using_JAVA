<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<%@page import="mypackage.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="css/messageUs.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;width: 100%;border:3px inset whitesmoke;padding:15px;background-color:darkslategrey;position: relative;bottom:15px">Message Us <i class='fas fa-comment-alt'></i></div>
<%
    String msg=request.getParameter("msg");
    if ("valid".equals(msg))
    {
%>
<h3 style="text-align:center; color:yellow;">Message successfully sent. Our team will contact you soon!</h3>
<%
    }
%>
<%
    if ("invalid".equals(msg))
    {
%>
<h3 style="text-align:center; ">Some thing Went Wrong! Try Again!</h3>
<%
    }
%>
<br>
<form action="messageUsAction.jsp" method="post" style="position: relative;bottom:17px">
    <input class="input-style" name="subject" type="text" placeholder="subject" required>
    <hr>
    <textarea class="input-style" name="body" placeholder="Enter your message" style="height: 150px" required></textarea>
    <hr>
    <button class="button" type="submit">Send <i class="far fa-arrow-alt-circle-right"></i></button>
</form>
<br><br><br>
</body>
</html>