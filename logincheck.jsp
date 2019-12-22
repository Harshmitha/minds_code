<%@page import="com.javatpoint.dao.databasecon"%>
<%@page import="javax.swing.JOptionPane"%>
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
    String email_id = request.getParameter("email");    
    String password = request.getParameter("password");
    databasecon db1 = new databasecon();
  	Connection con1 = db1.getConnection();
    Statement st = con1.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from faculty where email_id='" + email_id + "' and password='" + password + "'");
    if (rs.next()) {
    	
        session.setAttribute("user", email_id);
        //out.println("welcome " + userid);
        response.sendRedirect("welcome.jsp");
    
    	
    } else {
        out.println("Invalid password <a href='login.jsp'>try again</a>");
    }
%>
</body>
</html>