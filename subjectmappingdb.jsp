
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="G:\EclipseWokSpace\task4\WebContent\WEB-INF\bootstrap-3.3.7-dist\css\bootstrap.css" rel="stylesheet" type="text/css"/>
<title>Insert title here</title>
</head>


<%@page import="com.javatpoint.dao.databasecon"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.subject_mapping"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>
  

<%  
int i=databasecon.subject_mappingsave(u);  
if(i>0){ 
	%>
	<script> alert("login Success!!!!");</script>
	<%
response.sendRedirect("viewmapping.jsp");

}
else{
	   out.println("Error the dupilcate value is already existed <a href='subjectmapping.jsp'>try again</a>");
}

%>  
</body>
</html>
