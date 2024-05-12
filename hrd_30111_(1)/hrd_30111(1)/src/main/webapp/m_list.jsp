<%@page import="org.apache.tomcat.websocket.Transformation"%>
<%@page import="javax.xml.crypto.dsig.Transform"%>
<%@page import="java.text.DecimalFormat"%>
<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="position: fixed; background-color: gray; top: 70px; text-align: center; left: 0; width: 100%; height: 100%; padding-top: 20px;">
<b style="font-size: 20px;">회원정보조회</b>
<div style="display: flex; justify-content: center; padding-top: 20px;">
<table border="1" >
<tr>
	<td style="width: 200px;">수강월</td>   
	<td style="width: 200px;">회원번호</td>   
	<td style="width: 200px;">회원명</td>	  
	<td style="width: 200px;">강의명</td>	   
	<td style="width: 200px;">강의장소</td>	   
	<td style="width: 200px;">수강료</td>		
	<td style="width: 200px;">등급</td>			
</tr>

<%
request.setCharacterEncoding("UTF-8");
 try{
	 String sql = "SELECT C.resist_month, M.c_no, M.c_name, T.class_name, C.class_area, C.tuition, M.grade "  
	           + "FROM TBL_TEACHER_202201 T "
	           + "JOIN TBL_CLASS_202201 C ON T.teacher_code = C.teacher_code "
	           + "JOIN TBL_MEMBER_202201 M ON C.c_no = M.c_no ";


 				
	 PreparedStatement pstmt = conn.prepareStatement(sql);
	 ResultSet rs = pstmt.executeQuery();

	 while(rs.next()){
		 
		 String resist_month = rs.getString(1);
		 String month = resist_month.substring(0,4)+"년" + resist_month.substring(4,6) + "월";
		 
		 int tuition = rs.getInt(6);
		 DecimalFormat transFormat = new DecimalFormat("₩ ###,###");
	 
%>

	<tr>
		<td><%= month %></td>
		<td><%= rs.getString(2) %></td>
		<td><%= rs.getString(3) %></td>
		<td><%= rs.getString(4) %></td>
		<td><%= rs.getString(5) %></td>
		<td><%= transFormat.format(tuition) %></td>
		<td><%= rs.getString(7) %></td>
		
	</tr>
		 <% 
	 }
	 
 }catch(Exception e){
	    e.printStackTrace();
 }
 


%>






</table>
</div>
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>