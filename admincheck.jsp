<%@page import="com.javatpoint.dao.databasecon"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.javatpoint.bean.Admin" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("username");    
    String pwd = request.getParameter("password");
   /*  Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/faculty_ia", "root", "admin"); */
    
    databasecon db = new databasecon();
    Connection con = db.getConnection();
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from admin where username='" + user + "' and password='" + pwd + "'");
    if (rs.next()) {
          session.setAttribute("user", user);
        //out.println("welcome " + userid);
        response.sendRedirect("adminwelcome.jsp");
    	
    } else {
        out.println("Invalid password <a href='admin.jsp'>try again</a>");
    }
%>
</body>
</html>