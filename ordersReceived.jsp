<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<%@page import="mypackage.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/ordersReceived-style.css">
<title>Home</title>
<style>
.th-style
{ width: 25%;}
.data{
    /*background-color:black;*/
    /*color:white;*/
    background-color: white;
    font-size:12px;
    font-weight:bolder;
    opacity:0.7;
}
.data:hover{
    /*background-color:transparent;*/
    color:black;
    box-shadow:0 4px 8px 0 rgba(0,0,0,1),0 6px 20px 0 rgba(0 ,0, 0, 1);
    opacity:1;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;width: 100%;border:3px inset whitesmoke;padding:15px;background-color:darkslategrey;">Orders Received <i class="fas fa-archive"></i></div>
<%
    String msg=request.getParameter("msg");
    if ("cancel".equals(msg))
    {
%>
<h3 class="alert">Order Cancel Successfully!</h3>
<%
    }
%>
<%
    if ("delivered".equals(msg))
    {
%>
<h3 class="alert">Successfully Updated!</h3>
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

<table id="customers" style="font-size:10px;text-align: center;">
          <tr>
          <th style="background-color: green">Mobile Number</th>
            <th style="background-color: green" scope="col">Product Name</th>
            <th style="background-color: green" scope="col">Quantity</th>
            <th style="background-color: green" scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            <th style="background-color: green">Address</th>
            <th style="background-color: green">City</th>
            <th style="background-color: green">State</th>
            <th style="background-color: green">Country</th>
            <th style="background-color: green" scope="col">Order Date</th>
             <th style="background-color: green" scope="col">Expected Delivery Date</th>
             <th style="background-color: green" scope="col">Payment Method</th>
              <th style="background-color: green" scope="col">T-ID</th>
              <th style="background-color: green" scope="col">Status</th>
              <th style="background-color: green" scope="col">Cancel order <i class='fas fa-window-close'></i></th>
              <th style="background-color: green" scope="col">Order Delivered <i class='fas fa-dolly'></i></th>
          </tr>
  <%
      try {
       Connection con=ConnectionProvider.getCon();
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select * from cart inner join product where cart.product_id=product.id and cart.orderDate is not NULL and cart.status='processing'");
       while (rs.next())
       {
  %>
       
          <tr class="data">
          <td><%=rs.getString(10)%></td>
            <td><%=rs.getString(17)%></td>
            <td><%=rs.getString(3)%></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(5)%> </td>
                <td><%=rs.getString(6)%></td>
               <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(8)%></td>
                 <td><%=rs.getString(9)%></td>
             <td><%=rs.getString(11)%></td>
              <td><%=rs.getString(12)%></td>
               <td><%=rs.getString(13)%></td>
               <td><%=rs.getString(14)%></td>
               <td><%=rs.getString(15)%></td>
               <td><a href="cancelOrderAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Cancel <i class='fas fa-window-close'></i></a></td>
                <td><a href="deliveredOrdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Delivered <i class='fas fa-dolly'></i></a></td>
            </tr>
         <%
             }}
      catch (Exception e)
             {
                 System.out.println(e);
             }
         %>
        </table>
      <br>
      <br>
      <br>
<br>
<br>
<br>
<br>
<br>
</body>
</html>