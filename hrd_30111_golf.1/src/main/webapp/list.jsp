<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근무좌석 예약</title>
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section style="position: fixed; width: 100%; background-color: gray; top: 70px; left: 0; height: 100%; line-height: 40px;">
    <h2 style="text-align: center;">근무좌석 예약</h2>
    
    <form action="l_action" name="frm1"  method="post" style=" display:flex; align-items: center; justify-content: center;  ">
        <table  border="1">
            <tr> 
                <td> 사원번호를 입력하시오 </td>
                <td><input type="text" name="empno"> </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" value="좌석예약조회" onclick="add2()">
                    <input type="button" value="홈으로" onclick="res2()">
                </td>
            </tr>
        </table>
    </form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
