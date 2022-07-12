<!DOCTYPE html>
<html>
<head>
<%--<link rel="stylesheet" href="css/signup-style.css">--%>
    <link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupaction.jsp" method="post">
        <input type="text" name="name" placeholder="Enter Name" required>
        <input type="email" name="email" placeholder="Enter Email" required>
        <input type="number" name="mobilenumber" placeholder="Enter Mobile Number" required>
        <select name="securityQuestion" required>
            <option>What was your first car?</option>
            <option>What is the name of your first pet?</option>
            <option>What elementary school did you attend?</option>
            <option>What is the name of the town that you were born?</option>
        </select>
        <input type="text" name="answer" placeholder="Enter Answer" required>
        <input type="password" name="password" placeholder="Enter Password" required>
        <input type="submit" value="sign up">
    </form>
      <h2 class="lil"><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
    String msg=request.getParameter("msg");
    if ("valid".equals(msg))
    {
%>
<h1 class="err2">Successfully Registered</h1>
<%}%>
<%
    if("Invalid".equals(msg))
    {
%>
<h1 class="errs">Something Went Wrong Try Again !</h1>
<%}%>
      <div class="online">

      <h2 class="h2">Online Shopping</h2>
    <p class="p">The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
  </div>
</div>

</body>
</html>