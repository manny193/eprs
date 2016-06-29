<%-- 
    Document   : logout
    Created on : Jun 24, 2016, 11:42:06 AM
    Author     : lenovo
--%>

<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index_1.html");
%>
