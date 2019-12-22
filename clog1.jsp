<%-- 
    Document   : clog1
    Created on : Jun 28, 2017, 11:23:12 AM
    Author     : java3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String name=request.getParameter("name");
String pass=request.getParameter("pass");
try{
    if (name.equalsIgnoreCase("cloud") && pass.equalsIgnoreCase("cloud")) {
            response.sendRedirect("cloudhome.jsp");
                                  }else{
        response.sendRedirect("clog.jsp");
                                  }
}catch(Exception e){
    e.getStackTrace();
}
%>