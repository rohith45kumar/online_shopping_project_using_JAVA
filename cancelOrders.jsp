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
/*.r2{*/
/*    background-color:black;*/
/*    color: white;*/
/*    font-size:16px;*/
/*    font-weight:bolder;*/
/*    opacity:0.7;*/
/*}*/
/*.r2:hover{*/
/*    background-color:black;*/
/*    color: white;*/
/*    box-shadow:0 4px 8px 0 rgba(0,0,0,1),0 6px 20px 0 rgba(0 ,0, 0, 1);*/
/*    opacity:1;*/
/*}*/
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;width: 100%;border:3px inset whitesmoke;padding:15px;background-color:darkslategrey;">Cancel Orders <i class='fas fa-window-close'></i></div>


<table id="customers">
    <thead>
          <tr >
          <th style="background-color:green;opacity:0.85;color:whitesmoke;">Mobile Number</th>
            <th style="background-color:green;opacity:0.85;color:whitesmoke;" scope="col">Product Name</th>
            <th style="background-color:green;opacity:0.85;color:whitesmoke;"  scope="col">Quantity</th>
            <th style="background-color:green;opacity:0.85;color:whitesmoke;" scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            <th style="background-color:green;opacity:0.85;color:whitesmoke;">Address</th>
            <th style="background-color:green;opacity:0.85;color:whitesmoke;" >City</th>
            <th style="background-color:green;opacity:0.85;color:whitesmoke;">State</th>
            <th style="background-color:green;opacity:0.85;color:whitesmoke;">Country</th>
            <th style="background-color:green;opacity:0.85;color:whitesmoke;">Order Date</th>
             <th style="background-color:green;opacity:0.85;color:whitesmoke;"  scope="col">Expected Delivery Date</th>
             <th style="background-color:green;opacity:0.85;color:whitesmoke;" scope="col">Payment Method</th>
              <th style="background-color:green;opacity:0.85;color:whitesmoke;" scope="col">T-ID</th>
              <th style="background-color:green;opacity:0.85;color:whitesmoke;" scope="col">Status</th>
          </tr>
    </thead>
<tbody>
    <%
        try {
            Connection con=ConnectionProvider.getCon();
            Statement st= con.createStatement();
            ResultSet rs= st.executeQuery("select * from cart inner join product where cart.product_id=product.id and cart.orderDate is not NULL and cart.status='Cancel'");
            while (rs.next())
            {
    %>
    <tr>
        <td class="r2"><%=rs.getString(10)%></td>
        <td class="r2"><%=rs.getString(17)%></td>
        <td class="r2"><%=rs.getString(3)%></td>
        <td class="r2"><i class="fa fa-inr"></i>  <%=rs.getString(5)%></td>
        <td class="r2"><%=rs.getString(6)%></td>
        <td class="r2"><%=rs.getString(7)%></td>
        <td class="r2"><%=rs.getString(8)%></td>
        <td class="r2"><%=rs.getString(9)%></td>
        <td class="r2"><%=rs.getString(11)%></td>
        <td class="r2"><%=rs.getString(12)%></td>
        <td class="r2"><%=rs.getString(13)%></td>
        <td class="r2"><%=rs.getString(14)%></td>
        <td class="r2"><%=rs.getString(15)%></td>
    </tr>
    <%
            }}
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