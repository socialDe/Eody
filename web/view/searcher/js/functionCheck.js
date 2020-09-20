$(document).ready(function(){
                
		// 아이디 중복확인
        $('#aid_check_btn').click(function(){
                var mid = $('input[name="searcher_id"]').val();
                
                $.ajax({
              url:'idcheckimpl.mc',
                  data: {'id': mid },
              success: function(data){
                                if(data == 1){
                                        $('#id_check_result').text('이미 사용 중인 아이디입니다.');
                                } else {
                                        $('#id_check_result').text('사용 가능한 아이디입니다.');
                                }
                  },
                });
                
        });
        
        // 비밀번호 확인
        $('#pwd_check').focusout(function(){
                if ($('#searcher_pwd').val() == $('#pwd_check').val()) { 
                $('#pwd_check_result').text("비밀번호가 일치합니다!");
        } else{
                $('#pwd_check_result').text("비밀번호가 다릅니다!");
        } 
        });
        

});
