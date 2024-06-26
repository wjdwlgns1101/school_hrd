
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보조회</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<section style="position: fixed; background-color: gray; width: 100%; top: 70px; height: 100%; left: 0;">
    <h2 style="text-align: center;"><b>성적현황</b></h2>    
     <form style="display: flex; align-items: center; justify-content: center; text-align: center; padding-bottom: 20px;">
     	<table border="1">
     <tr>
     		<td style="text-align: center;"> 과목코드 </td>		
		<td> <input type="text" name="subcode" style="width: 200px"></td>
     	<td> <input type="button" value="조회" onclick="add()"> </td>
     
     </tr>
     <%
     		String sub = request.getParameter("subcode"); 
     %>	
     	</table>
     	
     
     </form>
    <form style="display: flex; align-items: center; justify-content: center; text-align: center;">
        <table border="1">
            <tr>
                <td> 학번 </td>
                <td> 성명 </td>
                <td> 학과 </td>
                <td> 과목 </td>
                <td> 중간 </td>
                <td> 기말 </td>
                <td> 출석 </td>
                <td> 레포트 </td>
                <td> 기타 </td>
                <td> 총점 </td>
                <td> 학점 </td>
            </tr>
   
     			
     			
            <%
                request.setCharacterEncoding("UTF-8");
                try{
                	String sql = "SELECT s.stuid, s.sname, s.dept_name, sb.subname, sc.midscore, sc.finalscore, sc.attend, sc.report, sc.etc "
                            + "FROM TBL_STUDENT_202210 s  "
                            + "JOIN TBL_SCORE_202210 sc ON s.stuid = sc.sid  "
                            + "JOIN TBL_SUBJECT_202210 sb ON sc.subcode = sb.subcode ";

                	if(sub != null && !sub.isEmpty()) {
                		sql += "where sb.subcode = ? ";
                	};
					
                	
                	PreparedStatement pstmt = conn.prepareStatement(sql);
                	
                
                	if(sub != null && !sub.isEmpty() ){
                		pstmt.setString(1, sub);
                	};
                	
          
                	
                	
                	
                	
                	ResultSet rs = pstmt.executeQuery();
                	while(rs.next()){
                		int midscore = rs.getInt(5); // 중간 점수
                		int finalscore = rs.getInt(6); // 기말 점수
                		int attend = rs.getInt(7); // 출석 점수
                		int report = rs.getInt(8); // 레포트 점수
                		int etc = rs.getInt(9); // 기타 점수
                		
                		double total_score =  (midscore*0.3)+(finalscore*0.3)+(attend*0.2)+(report*0.1)+(etc*0.1);
                		
                		String grades;
                		if(total_score >= 95.0){
                			grades = "A+";
                		}else if(total_score >= 90.0){
                			grades = "A";
                		}
                		else if(total_score >= 85.0){
                			grades = "B+";
                		}
                		else if(total_score >= 80.0){
                			grades = "B";
                		}
                		else if(total_score >= 75.0){
                			grades = "C+";
                		}
                		else if(total_score >= 70.0){
                			grades = "C";
                		}
                		else if(total_score >= 65.0){
                			grades = "D+";
                		}
                		
                		else if(total_score >= 60.0){
                			grades = "D";
                		}else{
                			grades = "F";
                		}
                		
                	

            %>
            <tr>
                <td><%= rs.getString(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(3) %></td>
                <td><%= rs.getString(4) %></td>
                <td><%= rs.getString(5) %></td>
                <td><%= rs.getString(6) %>
                <td><%= rs.getString(7) %></td>
				<td><%= rs.getString(8) %></td>
				<td><%= rs.getString(9) %></td>

				<td><%=total_score%></td>
				<td><%=grades%></td>
               
            </tr>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table>
    </form>
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
