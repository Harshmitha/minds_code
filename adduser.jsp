
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="G:\EclipseWokSpace\task4\WebContent\WEB-INF\bootstrap-3.3.7-dist\css\bootstrap.css" rel="stylesheet" type="text/css"/>
<title>Insert title here</title>
</head>



<%@page import="com.javatpoint.dao.databasecon"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.Faculty"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  

<%  
int i=databasecon.Fsave(u);  
if(i>0){ 
	%>
	<script> alert("login Success!!!!");</script>
	<%
	response.sendRedirect("login.jsp");
}
%>  
</body>
</html>