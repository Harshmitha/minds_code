<%-- 
    Document   : oreg1
    Created on : Jun 23, 2017, 4:01:23 PM
    Author     : java3
--%>

<%@page import="network.Mail"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="network.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
	String name=request.getParameter("name");
	String pass=request.getParameter("pass");
	String mail=request.getParameter("mail");
	String dob=request.getParameter("dob");
	String country=request.getParameter("country");
	System.out.println("User Details :"+ name + " " + pass + " "
			+ mail + " " + dob + " " + country);
	Connection con = DbConnection.getConnection();
	Statement st = con.createStatement();
	try {
		Random RANDOM = new SecureRandom();
		int PASSWORD_LENGTH = 4;
		String letters = "0123456789";
		String SId = "";
		for (int i = 0; i < PASSWORD_LENGTH; i++) {
			int index = (int) (RANDOM.nextDouble() * letters.length());
			SId += letters.substring(index, index + 1);
		}
		String msgg = "SID" + SId;

		int i = st
				.executeUpdate("insert into oreg (name, pass, mail, dob, country, skey)values('"
						+ name
						+ "','"
						+ pass
						+ "','"
						+ mail
						+ "','"
						+ dob + "','" + country + "','" + msgg + "')");
		if (i != 0) {
			Mail ma = new Mail();
			ma.secretMail(msgg, name, mail);
			String msg = "Secret Key" + msgg;
			System.out.println("registration sucess");
			response.sendRedirect("oreg.jsp?msg=sucess");
		} else {
			response.sendRedirect("oreg.jsp?mssg=sucess");
			System.out.println("registration failed");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>