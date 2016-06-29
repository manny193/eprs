<%-- 
    Document   : employee
    Created on : Jun 1, 2016, 11:28:06 PM
    Author     : lenovo
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
   %>
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
<!-- START PAGE SOURCE -->
<div class="main">
  <div class="header">
    <div class="logo">
        <h1><span>EPRS</span><small>EMPLOYEE PAYROLL AND REIMBURSEMENT SYSTEM</small></h1>
    </div>
     <%
    
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
        session.setAttribute("userid", null);
        session.invalidate();
        response.sendRedirect("index_1.jsp");
%>
<br>You are not logged in<br/>
<a href="index_1.jsp">Please Login</a>
<%} else {
%>

    <div class="menu_nav">
      <ul>
        <li><a href="logout.jsp">Log Out</a></li>
        
      </ul>
    </div>
    <div class="clr"></div>
    <div class="hbg"><img src="images/eprs.gif" width="980" height="298" alt="" class="fr" />
    
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  
      
    
  
        
       
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
          String name=rs.getString("emp_name");
          
          %> 
          
          
              <div class="content_left">
                  <div class="templatemo_menu">
                  <ul>
                      <li><a href="manager.jsp" class="current">Your Payroll</a></li>
                      <li><a href="newEmp.jsp">New Employee</a></li>
                      <li><a href="updateEmp.html">Update Employee Details</a></li>
                      <li><a href="my_r.html">Apply for Reimbursement</a></li>
                      <li><a href="emp_r.jsp">Approve Employee Reimbursement</a></li>
                  </ul>
              </div>
              </div>
              <div class="mainbar2">
          <div class="sidebar">
              <div class="gadget"><p>Hello &nbsp;
              <%=name %></p>
              <img src="images/man.jpg" width="80" height="100" alt="" />
              </div>
          </div>
          </div>
             
              
          <% }}catch(  SQLException | ClassNotFoundException se) {
      out.println(se);
    }}
                %>
    </div>

      <div class="clr"></div>
    </body>
</html>
