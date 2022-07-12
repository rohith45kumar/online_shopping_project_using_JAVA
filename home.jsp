<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<%@page import="mypackage.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
    *{
        font-family: "Times New Roman";
    }
    body
    {
        /*background: url("images/background.jpg");*/
        /*background-repeat: no-repeat;*/
        /*background-size:100% 135%;*/
        background-color:black;
    }
    table{
        background-color: transparent;
    }
h3
{
	color: yellow;
	text-align: center;
}
.data{
    background-color:black;
    color: white;
    font-size:16px;
    font-weight:bolder;
    opacity:0.7;
}
.data:hover{
    background-color:black;
    color: white;
    box-shadow:0 4px 8px 0 rgba(0,0,0,1),0 6px 20px 0 rgba(0 ,0, 0, 1);
    opacity:1;
}
.my{
    color: white;
}
.my:hover{
    color: white;
}
.alert{
    color:red;
}

</style>
</head>
<body>
<%
    String msg=request.getParameter("msg");
    if ("added".equals(msg))
    {
%>
<h3 class="alert">Product added successfully!</h3>
<%
    }
%>
<%
    if ("exists".equals(msg))
    {
%>
<h3 class="alert">Product already exist in you cart! Quantity  increased!</h3>
<%
    }
%>
<%
    if ("invalid".equals(msg))
    {
%>
<h3 class="alert">Some thing went wrong! Try again</h3>
<%
    }
%>

<div style="color:whitesmoke; text-align: center; font-size: 30px;font-weight: bolder;width: 100%;border:3px inset whitesmoke;padding:15px;background-color:darkslategrey;">Available Products</div>
<table style="position: relative;bottom:20px;">
        <thead>
          <tr style="background-color:green;opacity:0.85;color:whitesmoke;font-size:20px;">
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th>Add to cart <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
        <br>
<%
    try {
        Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        ResultSet rs= st.executeQuery("select * from product where active='Yes'");
        while (rs.next())
        {
%>
          <tr class="data">
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(4)%></td>
            <td><a class="my" href="addToCartAction.jsp?id=<%=rs.getString(1)%>">Add to cart <i class='fas fa-cart-plus'></i></a></td>
          </tr>
<%
    }
    }
    catch (Exception e)
    {
        System.out.println(e);
    }
%>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>