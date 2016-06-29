<%-- 
    Document   : eprs_login
    Created on : Jun 24, 2016, 11:06:10 AM
    Author     : lenovo
--%>

<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("user_id");   
    String pwd = request.getParameter("pass");
   
    Connection con =mypack.MyDb.myConnection();
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select band from emp where emp_id='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        if("1".equals(rs.getString("band"))){
        session.setAttribute("userid", userid); 
        response.sendRedirect("employee.jsp");
        }
        else if("3".equals(rs.getString("band"))){
        session.setAttribute("userid", userid); 
        response.sendRedirect("hr.jsp");
        }
        else if("2".equals(rs.getString("band"))){
        session.setAttribute("userid", userid); 
        response.sendRedirect("manager.jsp");
        }
    }
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        
    else {
        out.println("Invalid password <a href='index_1.html'>try again</a>");
    }
%>
