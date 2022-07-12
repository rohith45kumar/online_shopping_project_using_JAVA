<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<%@page import="mypackage.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
 <style>
  h3{
   color:red;
   font-size:20px;
  }
  body{
   background-image: url("../images/img2.jpg");
  }
.alert{
 position: relative;
 bottom:20px;
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
<h3 class="alert">Product Added Successfully!</h3>
<%
 }
%>
<%
 if ("invalid".equals(msg))
 {
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%
 }
%>
<%
 int id=1;
 try{
  Connection con=ConnectionProvider.getCon();
  Statement st=con.createStatement();
  ResultSet rs= st.executeQuery("select max(id) from product");
  while (rs.next())
  {
   id=rs.getInt(1);
   id=id+1;
  }
 }
 catch (Exception e)
 {
  System.out.println(e);
 }
%>
<form action="addNewProductAction.jsp" method="post">


<h3 style="color:white;font-size:20px;width: 100%;border:3px inset whitesmoke;padding:15px;background-color:darkslategrey;position: relative;bottom:30px">Product ID: <%out.println(id);%> </h3>
<input type="hidden" name="id" value="<%out.println(id);%>">

<div class="left-div">
 <h3>Enter Name</h3>
 <input class="input-style" type="text" name="name" placeholder="Enter Name" required>
<hr>
</div>

<div class="right-div">
<h3>Enter Category</h3>
 <input class="input-style" type="text" name="category" placeholder="Enter Category" required>

 <hr>
</div>

<div class="left-div">
<h3>Enter Price</h3>
 <input class="input-style" type="number" name="price" placeholder="Enter Number" required>

 <hr>
</div>

<div class="right-div">
<h3>Active</h3>
   <select class="input-style" name="active">
    <option value="Yes">Yes</option>
    <option value="No">No</option>
   </select>
<hr>
</div>
 <button class="button" id="but" style="background-color: green;color: white">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</body>
</html>