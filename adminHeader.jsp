<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <style>
        *{
            font-family: "Times New Roman";

        }
        body{
            background-image: url("../images/background.jpg");
            background-repeat: no-repeat;
            background-size:100% 135%;
        }
        .sticky{
            background-color:darkslategrey;
            padding:10px;
        }
        .ihead>a{
            color:white;
        }
        .ihead>a:hover{
            /*background-color:darkolivegreen;*/
            /*color:black;*/
            /*    font-size:20px;*/
            background-color:darkslategrey;
            color:yellow;
            box-shadow:0 4px 8px 0 rgba(0,0,0,1),0 6px 20px 0 rgba(0 ,0, 0, 1);
        }
    </style>
</head>
    <!--Header-->
    <div class="topnav sticky" >
   <%String email=session.getAttribute("email").toString();%>
            <center><h2 style="color: red;font-size:30px;">Magnus Online shopping</h2></center>
        <div class="ihead" style="position: relative;left: 100px">
            <a href="addNewProduct.jsp">Add New Product <i class='fas fa-plus-square'></i></a>
            <a href="allProductEditProduct.jsp">All Products & Edit Products <i class='fab fa-elementor'></i></a>
            <a href="messagesReceived.jsp">Messages Received <i class='fas fa-comment-alt'></i></a>
            <a href="ordersReceived.jsp">Orders Received <i class="fas fa-archive"></i></a>
            <a href="cancelOrders.jsp">Cancel Orders <i class='fas fa-window-close'></i></a>
            <a href="deliveredOrders.jsp">Delivered Orders <i class='fas fa-dolly'></i></a>
            <a href="../logout.jsp">Logout <i class='fas fa-share-square'></i></a>
          </div>
    </div>
           <br>
           <!--table-->
