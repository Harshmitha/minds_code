<%@page import="com.javatpoint.dao.databasecon"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Faculty"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
databasecon.delete(u);
response.sendRedirect("viewmapping.jsp");
%>