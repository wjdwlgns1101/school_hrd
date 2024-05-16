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
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section style="position: fixed; width: 100%; background-color: gray; top: 70px; left: 0; height: 100%; line-height: 40px;">
	<h2 style="text-align: center;">근무좌석 예약</h2>
	
 <div style=" display:flex; align-items: center; justify-content: center; ">
<table  border="1">

<tr>

	<td>사원번호</td>
	<td>이름</td>
	<td>근무일자</td>
	<td>좌석번호</td>
		
</tr>
<%
request.setCharacterEncoding("UTF-8");
try{
	String sql="select E.empno, E.empname, E.deptcode, count(resvno) "
			+ "from tbl_emp_202108 E,  tbl_resv_202108 R "
			+ "where E.empno = R.empno "
			+ "group by E.empno, E.empname, E.deptcode "
			+ "order by E.empno ";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){
		String deptcode = rs.getString(3);
		
		if(deptcode.equals("10")) deptcode = "영업팀";
		else if(deptcode.equals("20")) deptcode = "총무팀";
		else deptcode="구매팀";
		%>
		<tr> 
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%= deptcode%></td>
			<td><%=rs.getString(4)%></td>
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