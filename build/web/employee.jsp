<%-- 
    Document   : employee
    Created on : Jun 1, 2016, 11:28:06 PM
    Author     : lenovo
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>IQbiz</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style0.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
</head>
<body>
<%

   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
   %>
<%
    
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
        session.setAttribute("userid", null);
        session.invalidate();
        response.sendRedirect("index_1.html");
%>
<br>You are not logged in<br/>
<a href="index_1.html">Please Login</a>
<%} else {
%>


<!-- START PAGE SOURCE -->
<div class="main">
  <div class="header">
    <div class="logo">
        <h1><span>EPRS</span><small>EMPLOYEE PAYROLL AND REIMBURSEMENT SYSTEM</small></h1>
    </div>
     

    <div class="menu_nav">
      <ul>
        <li class="active"><a href="logout.jsp">Log Out</a></li>
        
      </ul>
    </div>
    <div class="clr"></div>
    <div class="hbg"><img src="images/eprs.gif" width="980" height="298" alt="" class="fr" />
    
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
      </div>
      <div class="clr"></div>
    
  
        <h1>hello</h1><br>
       
            <%
                try{
                    
      Class.forName("com.mysql.jdbc.Driver");
      Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","1234");
      Statement s=c.createStatement();
      ResultSet rs=s.executeQuery("Select * from emp where emp_id="+"'"+session.getAttribute("userid")+"';");
      if(!rs.next()){
          out.println("empty");
      }
      else {
         out.println("not null");
        
             
          String name=rs.getString("emp_name");
          String sal=rs.getString("basic_sal");
          %> <h1>
              <%=name %></h1><h2><%=sal %></h2>
          <% }}catch(  SQLException | ClassNotFoundException se) {
      out.println(se);
    }
                %>
                <%
    }
%>
    </body>
</html>
