<%@page errorPage="admin/error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <style>
        body{
            background: url("images/background.jpg");
            background-repeat: no-repeat;
            background-size:100% 135%;
            /*background-color: black;*/
        }
.sticky{
    background-color:darkslategrey;
    /*opacity:0.9;*/
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
.top1 h2 a{
    color:blueviolet;
}
.top1 .email{
    width:210px;
}
.top1 .email a:hover{
    background-color:darkslategrey;
    color:red;
    box-shadow:0 4px 8px 0 rgba(0,0,0,1),0 6px 20px 0 rgba(0 ,0, 0, 1);
}
.head1{
    color:red;
    margin:25px;
    font-size:40px;
}
.search-container{
    position: relative;
    right:10px;
    width: 200px;
}
.search{
    width:80%;
}
.sicon{
    position: relative;
    left: 12px;
    bottom:40px;
}
.ihead{
    position: relative;
    left:10px;
}

    </style>

</head>
    <!--Header-->
<%--    <br>--%>
    <div class="topnav sticky" style="z-index: 1">
    <%
        String email=session.getAttribute("email").toString();
    %>
        <div class="top1">
            <center><h2 class="head1">Magnus Online shopping</h2></center>
            <h2 class="email"><a href=""><% out.println(email);%></a></h2>
            <div class="ihead">
            <a href="home.jsp">Home<i class="fa fa-institution"></i></a>
            <a href="myCart.jsp">My Cart<i class='fas fa-cart-arrow-down'></i></a>
            <a href="myOrders.jsp">My Orders  <i class='fab fa-elementor'></i></a>
            <a href="changeDetails.jsp">Change Details <i class="fa fa-edit"></i></a>
            <a href="messageUs.jsp">Message Us <i class='fas fa-comment-alt'></i></a>
            <a href="about.jsp">About <i class="fa fa-address-book"></i></a>
            <a href="logout.jsp">Logout <i class='fas fa-share-square'></i></a>
            </div>
        </div>
            <div class="search-container">
             <form action="searchHome.jsp" method="post">
                 <input type="text" placeholder="Search" name="search" class="search">
                 <button type="submit" class="sicon"><i class="fa fa-search"></i></button>
             </form>
               

            </div>
          </div>
           <br>
           <!--table-->
