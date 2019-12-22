<%@page import="com.javatpoint.dao.databasecon"%>
<jsp:useBean id="u" class="com.javatpoint.bean.subject_mapping"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%  
int i=databasecon.subject_mappingupdate(u);  
if(i>0){ 	%>
	<script> alert("login Success!!!!");</script>
	<%
response.sendRedirect("viewmapping.jsp");

}


%>  