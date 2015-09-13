<%@ page import ="java.util.*,java.io.*,java.sql.*,com.credensys.general.*" %>
<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1" %>

<%
	out.println("Invali");
	out.println("req: " + request);
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String user = request.getParameter("uname");
	String email = request.getParameter("email");
	String pwd = request.getParameter("pass");
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://us-cdbr-azure-northcentral-a.cleardb.com/codedayAXJ7VCiw9",
            "baa5526d0bbd67", "15f6d7bc");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into m_users(first_name, last_name, email, uname, pass, regdate) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "', CURDATE())");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>