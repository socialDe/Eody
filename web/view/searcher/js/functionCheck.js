$(document).ready(function(){
                
        
        // 비밀번호 확인
        $('#pwd_check').focusout(function(){
                if ($('#searcher_pwd').val() == $('#pwd_check').val()) { 
                $('#check_text').text("비밀번호가 일치합니다!");
        } else{
                $('#check_text').text("비밀번호가 다릅니다!");
        } 
        });
        

});
