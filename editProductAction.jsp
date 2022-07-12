<%@ page import="java.sql.Connection" %>
<%@ page import="javax.naming.CannotProceedException" %>
<%@ page import="mypackage.ConnectionProvider" %>
<%@ page import="java.sql.Statement" %>
<%
    String id=request.getParameter("id");
    String name=request.getParameter("name");
    String category=request.getParameter("category");
    String price=request.getParameter("price");
    String active=request.getParameter("active");

try {
    Connection con= ConnectionProvider.getCon();
    Statement st=con.createStatement();
    st.executeUpdate("update product set name='"+name+"',category='"+category+"',price='"+price+"',active='"+active+"' where id='"+id+"'");
if (active.equals("No"))
{
    st.executeUpdate("delete from cart where product_id='"+id+"' and address is NULL");
}
response.sendRedirect("allProductEditProduct.jsp?msg=done");
}
catch (Exception e)
{
    System.out.println(e);
    response.sendRedirect("allProductEditProduct.jsp?msg=invalid");

}
%>