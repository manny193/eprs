package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class newEmp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");


   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
   
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>IQbiz</title>\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<link href=\"style0.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<script type=\"text/javascript\" src=\"js/cufon-yui.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/arial.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/cuf_run.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<!-- START PAGE SOURCE -->\n");
      out.write("<div class=\"main\">\n");
      out.write("  <div class=\"header\">\n");
      out.write("    <div class=\"logo\">\n");
      out.write("        <h1><span>EPRS</span><small>EMPLOYEE PAYROLL AND REIMBURSEMENT SYSTEM</small></h1>\n");
      out.write("    </div>\n");
      out.write("     ");

    
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
        session.setAttribute("userid", null);
        session.invalidate();
        response.sendRedirect("index_1.jsp");

      out.write("\n");
      out.write("<br>You are not logged in<br/>\n");
      out.write("<a href=\"index_1.jsp\">Please Login</a>\n");
} else {

      out.write("\n");
      out.write("\n");
      out.write("    <div class=\"menu_nav\">\n");
      out.write("      <ul>\n");
      out.write("        <li><a href=\"logout.jsp\">Log Out</a></li>\n");
      out.write("        \n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"clr\"></div>\n");
      out.write("    <div class=\"hbg\"><img src=\"images/eprs.gif\" width=\"980\" height=\"298\" alt=\"\" class=\"fr\" />\n");
      out.write("    \n");
      out.write("      <div class=\"clr\"></div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"clr\"></div>\n");
      out.write("  \n");
      out.write("      \n");
      out.write("    \n");
      out.write("  \n");
      out.write("        \n");
      out.write("       \n");
      out.write("            ");

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
          
          
      out.write(" \n");
      out.write("          \n");
      out.write("          \n");
      out.write("              <div class=\"content_left\">\n");
      out.write("                  <p>Hello &nbsp;");
      out.print(name );
      out.write("</p>\n");
      out.write("                  <div class=\"templatemo_menu\">\n");
      out.write("                  <ul>\n");
      out.write("                      <li><a href=\"manager.jsp\" >Your Payroll</a></li>\n");
      out.write("                      <li><a href=\"newEmp.jsp\" class=\"current\">New Employee</a></li>\n");
      out.write("                      <li><a href=\"updateEmp.html\">Update Employee Details</a></li>\n");
      out.write("                      <li><a href=\"my_r.html\">Apply for Reimbursement</a></li>\n");
      out.write("                      <li><a href=\"emp_r.jsp\">Approve Employee Reimbursement</a></li>\n");
      out.write("                  </ul>\n");
      out.write("              </div>\n");
      out.write("              </div>\n");
      out.write("                  <h4>   \n");
      out.write("<form action=\"newEmp.jsp\" method=\"POST\">\n");
      out.write("            <label id=\"name\" >Name: </label>\n");
      out.write("            <input type=\"text\" id=\"name\" name=\"name\"><br>\n");
      out.write("            <label id=\"dob\" >Date Of Birth: </label>\n");
      out.write("            <input type=\"date\" id=\"dob\" name=\"dob\"><br>\n");
      out.write("            <label id=\"email\" >Email: </label>\n");
      out.write("            <input type=\"email\" id=\"email\" name=\"email\"><br>\n");
      out.write("            <label id=\"contact\" >Contact: </label>\n");
      out.write("            <input type=\"number\" id=\"contact\" name=\"contact\"><br>\n");
      out.write("            <label id=\"add\" >Address: </label>\n");
      out.write("            <textarea id=\"add\" name=\"add\" cols=\"30\" rows=\"5\"></textarea><br>\n");
      out.write("            <label id=\"band\" >Band: </label>\n");
      out.write("            <select name=\"band\" id=\"band\">\n");
      out.write("                <option value=\"1\" selected>1</option>\n");
      out.write("                <option value=\"2\">2</option>\n");
      out.write("                <option value=\"3\">3</option>  \n");
      out.write("            </select><br>\n");
      out.write("            <label id=\"sal\" >Basic Salary: </label>\n");
      out.write("            <input type=\"number\" id=\"sal\" name=\"sal\"><br>\n");
      out.write("            <input type=\"submit\" name=\"submit\" value=\"Submit\">\n");
      out.write("        </form>\n");
      out.write("              \n");
      out.write("                      </h4>\n");
      out.write("              \n");
      out.write("          ");
 }}catch(  SQLException | ClassNotFoundException se) {
      out.println(se);
    }}
                
      out.write("\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("      <div class=\"clr\"></div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
