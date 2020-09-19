$(document).ready(function(){
        
        // 아이디 중복확인
        $('#aid_check_btn').click(function(){
                var mid = $('input[name="manager_id"]').val();
                
                $.ajax({
              url:'aidcheckimpl.mc',
                  data: {'id': mid },
              success: function(data){
                                if(data == 1){
                                        $('#aid_check_result').text('이미 사용 중인 아이디입니다.');
                                } else {
                                        $('#aid_check_result').text('사용 가능한 아이디입니다.');
                                }
                  },
                });
                
        });

        // 비밀번호 확인
        $('#pwd_check').focusout(function(){
                if ($('#manager_pwd').val() == $('#pwd_check').val()) { 
                $('#check_text').text("비밀번호가 일치합니다!");
        } else{
                $('#check_text').text("비밀번호가 다릅니다!");
        } 
        });
        

});
