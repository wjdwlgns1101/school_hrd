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

<section style="position: fixed; background-color: gray; width: 100%; top: 70px; height: 100%; left: 0;">
	<h2 style="text-align: center;"><b>성적입력</b></h2>	
<form method="post" action="i_ation.jsp" name="frm" style="display: flex; align-items: center; justify-content: center;">
<table border="1">
	<tr>
		<td style="text-align: center;"> 학번 </td>
		<td> <input type="text" name="sid" style="width: 200px"></td>
	</tr>	
	<tr>
		<td style="text-align: center;"> 교과코드 </td>
		<td> 
			<select name="subcode" style="width: 200px" oncancel="getvalue(this.value)">
				<option value="A001"> A001-자바 </option>
				<option value="A002"> A002-C언어 </option>
				<option value="A003"> A003-데이터베이스 </option>
				<option value="A004"> A004-웹프로그래밍 </option>
				<option value="A005"> A005-영어 </option>

			</select>
		</td>
	</tr>
	<tr>
		<td style="text-align: center;"> 중간 </td>
		<td> <input type="text" name="midscore" style="width: 200px"></td>
		
	</tr>
	<tr>
		<td style="text-align: center;"> 기말 </td>
		<td> <input type="text" name="finalscore" style="width: 200px"></td>
		
	</tr>
	<tr>
		<td style="text-align: center;"> 출석 </td>
		<td> <input type="text" name="attend" style="width: 200px"></td>
		
	</tr>
	<tr>
		<td style="text-align: center;"> 레포트 </td>
		<td> <input type="text" name="report" style="width: 200px"></td>
	</tr>
	<tr>
		<td style="text-align: center;"> 기타 </td>
		<td> <input type="text" name="etc" style="width: 200px"></td>
	</tr>
	
	<tr style="text-align: center;">
		<td colspan="2">
			<input type="button" value="등록" onclick="add()"> &nbsp;
			<input type="button" value="취소" onclick="res()">
			
		</td>
	</tr>	
</table>
</form>	

</section>
<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>