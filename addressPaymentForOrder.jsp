<%@page import="mypackage.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="footer.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/addressPaymentForOrder-style.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Home</title>
<script>
    if (window.history.forward(1)!=null)
        window.history.forward(1)
</script>
    <style>
        *{
            font-family: "Times New Roman";
        }
       body{
           background: url("images/img10.png");
           background-repeat: no-repeat;
           background-size:100% 135%;
       }
        .data{
            background-color:black;
            color:wheat;
            font-size:16px;
            font-weight:bolder;
            opacity:0.7;
        }
        .data:hover{
            background-color: black;

            color: white;
            box-shadow:0 4px 8px 0 rgba(0,0,0,1),0 6px 20px 0 rgba(0 ,0, 0, 1);
            opacity:1;
        }
        h3{
            color:green;
        }
    </style>
</head>
<body>
<table>
<thead>
<%
    String email=session.getAttribute("email").toString();
    int total=0;
    int sno=0;
    try {
        Connection con=ConnectionProvider.getCon();
        Statement st= con.createStatement();
        ResultSet rs1= st.executeQuery("select sum(total) from cart where email='"+email+"' and address is NULL ");
        while (rs1.next())
        {
            total=rs1.getInt(1);
        }
%>

        </thead>
        <thead>
          <tr style="background-color:green;opacity:0.85;color:whitesmoke;font-size:20px;">
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
          </tr>
        </thead>
        <tbody>
        <%
            ResultSet rs= st.executeQuery("select * from product inner join cart on product.id=cart.product_id and cart.email='"+email+"' and cart.address is NULL ");
            while (rs.next())
            {
        %>
          <tr class="data">
          <%sno=sno+1;%>
           <td><%out.println(sno);%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(4)%></td>
            <td> <%=rs.getString(8)%></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(10)%></td>
            </tr>
         <%
             }
            ResultSet rs2=st.executeQuery("select * from users where email='"+email+"'");
            while (rs2.next())
            {

         %>
        <tr style="display:flex;width:400px;position: relative;left:947px;overflow-x: hidden;">
            <th scope="col" style="background-color: yellow;width: 45%"><a href="myCart.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></th>
            <th scope="col" style="width: 55%;position: relative;top:1px"><span style="color:white;background-color:green;padding: 10px;">Total: <i class="fa fa-inr"></i> <%out.println(total);%></span></th>
        </tr>
        </tbody>
      </table>
<br>
<hr style="width: 100%">
<form action="addressPaymentForOrderAction.jsp" method="post">

 <div class="left-div">
 <h3>Enter Address</h3>
<input class="input-style" placeholder="Enter Address" type="text" name="address" value="<%=rs2.getString(7)%>">

 </div>

<div class="right-div">
<h3>Enter city</h3>
    <input class="input-style" placeholder="Enter City" type="text" name="city" value="<%=rs2.getString(8)%>">

</div>

<div class="left-div">
<h3>Enter State</h3>
    <input class="input-style" placeholder="Enter State" type="text" name="state" value="<%=rs2.getString(9)%>">

</div>

<div class="right-div">
<h3>Enter country</h3>
    <input class="input-style" placeholder="Enter Country" type="text" name="country" value="<%=rs2.getString(10)%>">

</div>
<h3 style="color: red">*If there is no address its mean that you did not set you address!</h3>
<h3 style="color: red">*This address will also updated to your profile</h3>
<hr style="width: 100%">
<div class="left-div">
<h3>Select way of Payment</h3>
 <select class="input-style" name="paymentMethod">
     <option value="Cash on delivery(COD)">Cash on delivery(COD)</option>
     <option value="Online payment">Online payment</option>

 </select>
</div>

<div class="right-div">
<h3>Pay online on this btechdays@pay.com</h3>
    <input class="input-style" placeholder="Enter TransactionId" type="text" name="transactionId">

<h3 style="color: red">*If you select online Payment then enter you transaction ID here otherwise leave this blank</h3>
</div>
<hr style="width: 100%">

<div class="left-div">
<h3>Mobile Number</h3>
    <input class="input-style" placeholder="Enter Mobile Number" type="text" name="mobileNumber" value="<%=rs2.getString(3)%>" required>

<h3 style="color: red">*This mobile number will also updated to your profile</h3>
</div>
<div class="right-div">
<h3 style="color: red">*If you enter wrong transaction id then your order will we can cancel!</h3>
<button class="button" type="submit">Proceed to generate Bill & Save<i class='far fa-arrow-alt-circle-right'></i></button>
<h3 style="color: red">*Fill form correctly</h3>
</div>
</form>
<%
    }
    }
    catch (Exception e)
    {
        System.out.println(e);
    }
%>

      <br>
      <br>
      <br>

</body>
</html>