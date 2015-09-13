<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1 "pageEncoding="ISO-8859-1"%>
<%
	out.println("req: " + request);
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://us-cdbr-azure-northcentral-a.cleardb.com/codedayAXJ7VCiw9",
            "baa5526d0bbd67", "15f6d7bc");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from m_users where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>