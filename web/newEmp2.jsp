<%-- 
    Document   : newEmp2
    Created on : Jun 29, 2016, 1:11:25 PM
    Author     : lenovo
--%>
<%@page import="java.sql.*"%>
<% 
    String name = request.getParameter("name");   
    String dob = request.getParameter("dob");
    String email = request.getParameter("email");
    long contact = Long.parseLong(request.getParameter("contact"));
    String add = request.getParameter("add");
    String band = request.getParameter("band");
   
    String mgrid = request.getParameter("mgr_id");

    Connection con =mypack.MyDb.myConnection();
    Statement st = con.createStatement();
    st.executeUpdate("insert into emp(e_name, e_phno, e_email, e_addr, e_band, e_mgrid, e_dob) values ('" + name + "','" + contact + "','" + email + "','" + add + "','" + band + "','" + mgrid + "','" + dob + ");");
    
    float sal = Float.parseFloat(request.getParameter("sal")); 
    float da=(45/100)*sal;
    float hra=(30/100)*sal;
    
    
    
    st.executeUpdate("insert into sal(e_name, e_phno, e_email, e_addr, e_band, e_mgrid, e_dob) values ('" + name + "','" + contact + "','" + email + "','" + add + "','" + band + "','" + mgrid + "','" + dob + ");");
    
    
%>
