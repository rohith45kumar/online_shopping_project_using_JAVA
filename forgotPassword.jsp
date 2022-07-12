<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="forgotpasswordaction.jsp" method="post">
         <div class="Fp">
         <input type="email" name="email" placeholder="Enter Email" required>
         <input type="number" name="mobilenumber" placeholder="Enter Mobile Number" required>
         <select name="securityQuestion">
             <option value="What was your first car?">What was your first car?</option>
             <option value="What is the name of your first pet?">What is the name of your first pet?</option>
             <option value="What elementary school did you attend?">What elementary school did you attend?</option>
             <option value="What is the name of the town that you were born?">What is the name of the town that you were born?</option>
         </select>
         <input type="text" name="answer" placeholder="Enter Answer" required>
         <input type="password" name="newpassword" placeholder="Enter your new password" required>
         <input type="submit" value="Save">
         </div>
     </form>
      <h2 class="fli"><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
   <%
       String msg=request.getParameter("msg");
       if ("done".equals(msg))
       {
   %>
<h1 class="err3">Password Changed Successfully!</h1>
<%
    }
%>
      <%
          if ("invalid".equals(msg))
          {
      %>
<h1 class="eerfp">Some thing Went Wrong Try Again !</h1>
<%
    }
%>
      <div class="online1">
    <h2 class="h2">Online Shopping</h2>
    <p class="p">The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
  </div>
</div>
</body>
</html>