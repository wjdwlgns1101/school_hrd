<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%

Connection conn = null;
try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/school_db","root","user1101");
	

    
}
catch(Exception e){
    e.printStackTrace();
}

%>