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
<b style="font-size: 20px;">강사조회</b>
<div style="display: flex; justify-content: center; padding-top: 20px;">
<table border="1" >
<tr>
	<td style="width: 150px;">강사코드</td>
	<td style="width: 150px;">강의명</td>
	<td style="width: 150px;">강사명</td> 
	<td style="width: 150px;">총매출</td> 
	
</tr>

<%
request.setCharacterEncoding("UTF-8");
 try{
	 String sql = "SELECT T.teacher_code, T.class_name, T.teacher_name, FORMAT(SUM(C.tuition), 0) AS total_tuition "
	           + "FROM TBL_TEACHER_202201 T "
	           + "JOIN TBL_CLASS_202201 C ON T.teacher_code = C.teacher_code "
	           + "WHERE T.teacher_code = C.teacher_code "
	           + "GROUP BY T.teacher_code, T.class_name, T.teacher_name "
	           + "ORDER BY T.teacher_code";
			 
	 PreparedStatement pstmt = conn.prepareStatement(sql);
	 ResultSet rs = pstmt.executeQuery();

	 while(rs.next()){
		 
%>

	<tr>
		<td><%= rs.getString(1) %></td>
		<td><%= rs.getString(2) %></td>
		<td style="text-align: right;"><%= rs.getString(3) %></td>
		<td style="text-align: right;">₩ <%= rs.getString(4) %></td>

		
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