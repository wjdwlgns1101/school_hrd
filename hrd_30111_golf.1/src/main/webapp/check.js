function add(){
	if(frm.resvno.value.length == 0){
		alert("학번이 입력되지 않았습니다.");
		frm.resvno.focus();
		return false;
	}
	else if(frm.empno.value.length == 0){
		alert("사원번호가 입력되지 않았습니다.");
		frm.empno.focus();
		return false;
	}
	else if(frm.resvdate.value.length == 0){
		alert("근무일자가 입력되지 않았습니다.");
		frm.resvdate.focus();
		return false;
	}
	else if(frm.seatno.value.length == 0){
		alert("좌석번호가 입력되지 않았습니다.");
		frm.seatno.focus();
		return false;
	}
	else{
		alert("죄석 예약이 완료 되었습니다.");
		document.frm.submit();
		return true;
	}
	
}

function res(){
	alert("정보를 지우고 처음부터 다시 입력합니다.");
	document.frm.reset();
}

function add2(){
	if(frm1.empno.value.length == 0){
		alert("사원번호가 입력되지 않았습니다.");
		frm1.empno.focus();
		return false;	
	}else{
		alert("");
		document.frm.submit();
		return true;
	}
}