<%-- 
    Document   : olog1
    Created on : Jun 24, 2017, 10:46:50 AM
    Author     : java3
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String name=request.getParameter("name");
String pass=request.getParameter("pass");
String skey=request.getParameter("skey");
Connection con=DbConnection.getConnection();
Statement st=con.createStatement();
ResultSet rs=null;
try{
    rs=st.executeQuery("select * from oreg where name='"+name+"' and pass='"+pass+"' and skey='"+skey+"'");
    if(rs.next()){
        session.setAttribute("oid", rs.getString("id"));
            session.setAttribute("omail", rs.getString("mail"));
            session.setAttribute("oname", rs.getString("name"));        
        System.out.println("Sucess");
        response.sendRedirect("ohome.jsp?msg=sucess");
    }
        else{
            response.sendRedirect("olog.jsp");
        }
    
}catch(Exception e){
    e.printStackTrace();
    
}







%>
