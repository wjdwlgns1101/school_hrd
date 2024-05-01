function add(){
	
	if(frm.sid.value.length == 0 || isNaN(frm.sid.value)){
		alert('학번 입력 하세요');
		frm.sid.focus();
		return false;
	}
	else if(frm.midscore.value.length == 0 || isNaN(frm.midscore.value)){
		alert('중간을 입력하세요');
		frm.midscore.focus();
		return false;
	}
	else if(frm.finalscore.value.length == 0 || isNaN(frm.finalscore.value)){
		alert('기말을 입력하세요');
		frm.finalscore.focus();
		return false;
	}
	else if(frm.attend.value.length == 0 || isNaN(frm.attend.value)){
		alert('출석을 입력하세요');
		frm.attend.focus();
		return false;
	}
	else if(frm.report.value.length == 0 || isNaN(frm.report.value)){
		alert('레포트를 입력하세요');
		frm.report.focus();
		return false;
	}
	else if(frm.etc.value.length == 0 || isNaN(frm.etc.value)){
		alert('기타를 입력하세요');
		frm.etc.focus();
		return false;
	}
	else {
		alert("수강신청 완료")
		document.frm.submit();
		return true;
		
	}

}

function res(){
	alert("다시 입력");
	document.frm.reset();
}
