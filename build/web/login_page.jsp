<%-- 
    Document   : login_page
    Created on : Jun 2, 2016, 10:01:29 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css" />
        <title>JSP Page</title>
    </head>
    <body>
         <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="#"><span>EPRS</span></a> <small>EMPLOYEE PAYROLL AND REIMBURSEMENT SYSTEM</small></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html">Home</a></li>
        
          <li><a href="about.html">About Us</a></li>
          
          <li><a href="contact.html">Contact Us</a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
        <div class="content">
    <div class="content_resize"> <img src="images/hbg_img.jpg" width="948" height="295" alt="" class="hbg_img" /> <a href="#"><img src="images/readmore.jpg" width="120" height="45" alt="" class="readmore" /></a>
      <div class="clr"></div>
      <div class="mainbar">
        <div class="article">
         <h2><span>LOGIN : </span></h2>
         <form action="eprs_login" method="POST">
          
          <input type="text" name="user_id" id="user_id"/><br></br>
          <input type="password" name="pass" id="pass"/><br></br>
          <input type="submit" name="submit" value="login" id="submit"/><br></br>
            </form>
        </div>
      </div>
    </div>
        </div>
    </body>
</html>
