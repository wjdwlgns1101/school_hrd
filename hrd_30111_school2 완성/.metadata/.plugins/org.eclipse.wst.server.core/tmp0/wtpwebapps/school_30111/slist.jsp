<%@ include file="db.jsp" %>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.PreparedStatement"%>
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
<section style="position: fixed; background-color: gray; width: 100%; top: 70px; height: 100%; left: 0;">
	<h2 style="text-align: center;"><b>학생정보현황</b></h2>
	
	<form action="i_action.jsp" style="display: flex; align-items: center; justify-content: center; text-align: center;">
	<table border="1">
		<tr>
			<td> 학번 </td>
			<td> 이름 </td>
			<td> 주민번호 </td>
			<td> 학과명 </td>
			<td> 성별 </td>
			<td> 전화번호 </td>
			<td> 이메일 </td>
		</tr>
		
	<%
	request.setCharacterEncoding("UTF-8");
	try{
		String sql="SELECT stuid, sname, jumin, dept_name, phone, email "+
						"FROM TBL_STUDENT_202210 ";
						
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()){
			String jumin = rs.getString(3);
			
			String jm = jumin.substring(0,6) + "-" + jumin.substring(6,12);
			
			String gener = jumin.substring(6,7);
			if(gener.equals("3")){
				gener = "남자";
			}else{
				gener= "여자";
			}

	%>
		<tr>
			<td><%=rs.getString(1) %></td>	
			<td><%=rs.getString(2) %></td>	
			<td><%=jm %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=gener %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getString(6) %></td>	
		</tr>
		
<% 

		}
	}catch(Exception e){
		e.printStackTrace();
	}
		
	%>
	</table>
	
	</form>

</section>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>