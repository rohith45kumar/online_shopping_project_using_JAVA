<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<%@page import="mypackage.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
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
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;width: 100%;border:3px inset whitesmoke;padding:15px;background-color:darkslategrey;">Messages Received <i class='fas fa-comment-alt'></i></div>
<table>
        <thead>
          <tr style="background-color: green;opacity:0.85;color:whitesmoke;font-size:20px;">
            <th scope="col">ID</th>
            <th scope="col">Email</th>
            <th scope="col">Subject</th>
            <th scope="col">Body</th>
          </tr>
        </thead>
        <tbody>
  <%
      try {
          Connection con=ConnectionProvider.getCon();
          Statement st=con.createStatement();
          ResultSet rs= st.executeQuery("select * from message");
          while (rs.next())
          {
  %>
          <tr class="data">
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
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