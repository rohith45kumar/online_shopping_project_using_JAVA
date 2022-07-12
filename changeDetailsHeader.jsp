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
        *{
            font-family: "Times New Roman";
        }
        .tb2>a:hover{
            box-shadow:0 4px 8px 0 rgba(0,0,0,1),0 4px 8px 0 rgba(0,0,0,1);
            background-color:darkslategrey;
            color: yellow;
        }
        .tb2>a{
            color: whitesmoke;
        }
        .tb2>h2 a:hover{
            box-shadow:0 4px 8px 0 rgba(0,0,0,1),0 4px 8px 0 rgba(0,0,0,1);
            background-color:darkslategrey;
            color: red;
        }

    </style>
</head>
    <!--Header-->
    <div class="topnav sticky" style="background-color:darkslategrey;padding:10px;">
            <center><h2 style="color: red;">Change Details<i class="fa fa-edit"></i></h2></center>
             <%
                 String email=session.getAttribute("email").toString();
             %>
        <div class="tb2" style="width:92%;margin: auto;">
            <h2 ><a style="color: green" href="home.jsp"><i class='fas fa-arrow-circle-left'>Back</i></a></h2>
             <h2><a style="color:blue" class="email" href=""><%out.println(email);%> <i class='fas fa-user-alt'></i></a></h2>
            <a href="changePassword.jsp">Change Password <i class='fas fa-key'></i></a>
            <a href="addChangeAddress.jsp">Add or change Address <i class='fas fa-map-marker-alt'></i></a>
            <a href="changeSecurityQuestion.jsp">Change Security Question <i class="fa fa-repeat"></i></a>
            <a href="changeMobileNumber.jsp">Change Mobile Number <i class='fas fa-phone'></i></a>
          </div>
    </div>
           <br>


<!--table-->
