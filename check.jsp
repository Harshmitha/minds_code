<%-- 
    Document   : check
    Created on : Jul 4, 2017, 6:33:47 PM
    Author     : java3
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="network.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
Connection con=DbConnection.getConnection();
Statement st=con.createStatement();
ResultSet rs=null;
try{
    rs=st.executeQuery("select * from file_upload where id='"+id+"'");
    if(rs.next()){
        String str1=rs.getString("str1"); 
String str2=rs.getString("str2");   
String str3=rs.getString("str3");   
String files =str1+str2+str3;   
        System.out.println("fileeeee="+files);
        response.sendRedirect("ohome.jsp?msg=sucess");
    }
        else{
            response.sendRedirect("olog.jsp");
        }
    
}catch(Exception e){
    e.printStackTrace();
    
}







%>