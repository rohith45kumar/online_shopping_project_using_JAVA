<%@ page import="java.sql.Connection" %>
<%@ page import="java.nio.charset.spi.CharsetProvider" %>
<%@ page import="mypackage.ConnectionProvider" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%
    String email=request.getParameter("email");
    String mobileNumber=request.getParameter("mobilenumber");
    String securityQuestion=request.getParameter("securityQuestion");
    String answer=request.getParameter("answer");
    String newpassword=request.getParameter("newpassword");
    int check=0;
    try
    {
        Connection con= ConnectionProvider.getCon();
        Statement st=con.createStatement();
        ResultSet rs= st.executeQuery("select * from users where email='"+email+"' and mobilenumber= '"+mobileNumber+"' and securityQuestion = '"+securityQuestion+"' and answer ='"+answer+"'");
        while (rs.next())
        {
            check=1;
            st.executeUpdate("update users set password='"+newpassword+"' where email='"+email+"'");
            response.sendRedirect("forgotPassword.jsp?msg=done");
        }
        if (check==0)
        {
            response.sendRedirect("forgotPassword.jsp?msg=invalid");
        }
    }
    catch (Exception e)
    {
        System.out.println(e);
    }


%>