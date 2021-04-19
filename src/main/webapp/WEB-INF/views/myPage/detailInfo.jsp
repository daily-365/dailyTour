<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
   <!-- 다음 주소 API --> 
 <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> 

<!-- JQuery  -->
<script src="/../../resources/js/jquery-3.5.1.min.js"></script>


 
    <div class="container-fluid">

    <header class="container">
     <br><br>
       <h1 class="text-center">회원 상세 정보</h1>
    
     <br><br>
    </header>
   
    <section class="container">
      
      <form role="form" autocomplete="off" method="post" enctype="multipart/form-data"> 
        
        <div class="form-group col-sm-4 col-sm-offset-4">
        <label for="userId">아이디</label>
         <input class="form-control" type="text" name="userId"  value="${member.userId }" readonly="readonly">
         </div>
      
        <div class="form-group col-sm-4 col-sm-offset-4">
        <label for="userName">닉네임</label>
         <input  class="form-control" type="text" name="userName" value="${member.userName }">
         </div>
         
           <div class="form-group col-sm-4 col-sm-offset-4">
        <label for="userGender">성별</label>
         <input  class="form-control" type="text" name="userGender" value="${member.userGender }" readonly="readonly">
         </div>
         
           <div class="form-group col-sm-4 col-sm-offset-4">
        <label for="userBirth">생년월일</label>
         <input class="form-control" type="number" name="userBirth1" value="${member.userBirth1 }" readonly="readonly">
         <input  class="form-control" type="number" name="userBirth2" value="${member.userBirth2 }" readonly="readonly">
         <input class="form-control" type="number" name="userBirth3" value="${member.userBirth3 }" readonly="readonly">
         </div>
         
           <div class="form-group col-sm-4 col-sm-offset-4">
        <label for="userPhone">연락처</label>
         <input class="form-control" type="text" name="userPhone" value="${member.userPhone}">
         </div>
         
           <div class="form-group col-sm-4 col-sm-offset-4">
        <label for="userMail">이메일</label>
         <input class="form-control" type="text" name="userMail" value="${member.userMail} ">
         </div>
           
               <div class="form-group col-sm-4 col-sm-offset-4">
      <button class="btn btn-default pull-right" type="button" onclick="execDaumPostcode()">우편번호 찾기</button>
        <label for="userAddr1">우편번호</label>
         <input class="form-control" type="text" id="userAddr1" name="userAddr1">
        
         <label for="userAddr2">주소</label>
         <input class="form-control" type="text" id="userAddr2" name="userAddr2">
              
         <label for="userAddr3">상세주소</label>
         <input class="form-control" type="text" id="userAddr3" name="userAddr3">
       
        <script type="text/javascript">
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
 
                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
 
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
 
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('userAddr1').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('userAddr2').value = fullRoadAddr;
                document.getElementById('userAddr3').focus();
            }
        }).open();
    }
</script>
      
        
         </div>
         
             <div class="form-group col-sm-4 col-sm-offset-4">
              <label for="profileImg">프로필 사진</label>
             <input type="file"  name="file" id="profileImg"  >
             <div class="select_img"><img class="img-circle" name="profileImg" src=""></div>
             
             <!-- 이미지 미리보기 -->
             <script type="text/javascript">
             $('#profileImg').on('change',function(){
            	 
             if(this.files && this.files[0]){
            	 
            var reader = new FileReader;
           
             reader.onload =function(data){
            	 
            	 $('.select_img img').attr('src',data.target.result).width('200px');
            	 $('.select_img img').attr('src',data.target.result).height('200px');
             }
            	 reader.readAsDataURL(this.files[0]);
             }
             
             
             });
                        
             </script>
             
             </div>
         
         
         
         <div class="form-group col-sm-4 col-sm-offset-4">
        <button class="btn btn-primary"  id="modifyBtn"  type="submit">회원정보변경</button>
       <button class="btn btn-danger" type="button" onclick="javascript: location.href='/myPage/info'">취소</button>
     
        </div>
       
       
      </form>
    
    
    </section>
    
    </div>