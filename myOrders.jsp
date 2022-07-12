<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<%@page import="mypackage.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
    <style>
        .data{
            background-color:black;
            color:white;
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
    </style>
</head>
<body>
<div style="color:whitesmoke;font-weight: bolder; text-align: center; font-size: 30px;z-index: -1;width: 100%;border:3px inset whitesmoke;padding:15px;background-color:darkslategrey;">My Orders <i class='fab fa-elementor'></i></div>
<table>
        <thead>
          <tr style="background-color:green;opacity:0.85;color:whitesmoke;">
            <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">category</th>
            <th scope="col"><i class="fa fa-inr"></i>  Price</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            <th scope="col">Order Date</th>
             <th scope="col">Expected Delivery Date</th>
             <th scope="col">Payment Method</th>
              <th scope="col">Status</th>
              
          </tr>
        </thead>
        <tbody>
<%
    int sno=0;
    try {
        Connection con=ConnectionProvider.getCon();
        Statement st= con.createStatement();
        ResultSet rs= st.executeQuery("select * from cart inner join product where cart.product_id=product.id and cart.email='"+email+"' and cart.orderDate is not NULL ");
        while (rs.next())
        {
            sno=sno+1;
%>
          <tr class="data">
            <td><%out.println(sno);%></td>
            <td><%=rs.getString(17)%></td>
            <td><%=rs.getString(18)%></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(19)%> </td>
            <td><%=rs.getString(3)%></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(5)%> </td>
             <td><%=rs.getString(11)%></td>
              <td><%=rs.getString(12)%></td>
               <td><%=rs.getString(13)%></td>
               <td><%=rs.getString(15)%></td>
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
<br>
<br>
<br>
</body>
</html>