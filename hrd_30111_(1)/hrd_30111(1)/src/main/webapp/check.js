function add(){

	if(frm.resist_month.value.length == 0){
		alert("수강월이 입력되지 않았습니다.");
		frm.resist_month.focus();
		return false;
	}
	
	else if(frm.c_name.value == 0){
		alert("회원명이 선택이 되지 않았습니다.");
		frm.c_name.focus();
		return false;
	}
	else if(frm.c_no.value.length == 0){
		alert("강사명이 입력 되지 않았습니다.");
		frm.c_no.focus();
		return false;
	}
	else if(frm.class_ares[0].checked == false && frm.class_ares[1].checked == false
		&& frm.class_ares[2].checked == false && frm.class_ares[3].checked == false
		&& frm.class_ares[4].checked == false){
			alert("강의장소가 선택되지 않았습니다.");
			frm.class_ares.focus();
			return false;
	}
	else if(frm.class_name.value == 0){
		alert("강의명이 선택 되지 않았습니다.");
		frm.class_name.focus();
		return false;
	}
	else{
		alert("수강신청이 정상적으로 완료되었습니다.");
		document.frm.submit();
		return false;

	}

}

function res(){
	alert("정보를 지우고 다시 입력합니다.");
	document.frm.reset();
	
}
function getvalue(c_no){
	
	frm.c_no.value=c_no;
}
function getvalue2(tuition){
	if(frm.c_name.value>=20000)
		frm.tuition.value=tuition/2;
		else
			frm.tuition.value=tuition;
}