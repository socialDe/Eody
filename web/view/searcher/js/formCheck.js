
// 로그인 폼 체크 (아이디나 비밀번호가 틀렸을 때)
var msg = $('#msg').val();
if (msg != ""){
	alert(msg);
	console.log(msg);
}


// 로그인 폼 체크 (공백으로 submit할 때)
function loginFormCheck(){
	
	var id = $('input[name="id"]').val();
	var pwd = $('input[name="pwd"]').val();
		           
	if (id == ""){
		alert('어아디를 입력해주세요!');	
		return false;
						
	}else if (pwd == ""){
		alert('비밀번호를 입력해주세요!');
		return false;
	}
	
	return true;
	
} 

// 회원가입 폼 체크 (공백으로 submit할 때)
function regiFormCheck(){
	var id = $('input[name="searcher_id"]').val();
	var pwd = $('input[name="searcher_pwd"]').val();
	var name = $('input[name="searcher_name"]').val();
	var address = $('input[name="searcher_address"]').val();
	var phone = $('input[name="searcher_phone"]').val();
	var nickname = $('input[name="searcher_nickname"]').val();
	var year =  $('select[name="user_birth_year"]').val();
	var month =  $('select[name="user_birth_month"]').val();
	var day =  $('select[name="user_birth_day"]').val();
	var email = $('input[name="searcher_email"]').val();
	var gender = $('input:radio[name="searcher_gender"]').is(':checked');
	console.log('year'+year);
	if (id == ""){
		alert('어아디를 입력해주세요!');	
		return false;			
	}else if (pwd == ""){
		alert('비밀번호를 입력해주세요!');	
		return false;				
	}else if (name == ""){
		alert('이름을 입력해주세요!');
		return false;
	}else if (address == ""){
		alert('주소를 입력해주세요!');
		return false;	
	}else if (phone == ""){
		alert('전화번호를 입력해주세요!');
		return false;
	}else if (nickname == ""){
		alert('닉네임을 입력해주세요!');	
		return false;
	}else if (year == "" || month == "" || day == ""){
		alert('생년월일을 입력해주세요!');
		return false;
	}else if (email == ""){
		alert('이메일을 입력해주세요!');
		return false;
	}else if (!gender){
		alert('성별를 입력해주세요!');
		return false;
	}
	return true;
	
}