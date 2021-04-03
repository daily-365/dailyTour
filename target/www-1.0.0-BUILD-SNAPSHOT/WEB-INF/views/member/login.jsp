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
    
    <script type="text/javascript">
    
    function msg(){
    
    alert('<%=session.getAttribute("userId")%>님 환영합니다.');
    
    }
    
    
    
    </script>
    
    
    
<!-- Modal -->

  <div class="modal fade" id="myModal" role="dialog"> <!-- 사용자 지정 부분① : id명 -->

    <div class="modal-dialog">

    

      <!-- Modal content-->

      <div class="modal-content">

            <div class="modal-body text-center">
             <form role="form" method="post" autocomplete="off" onsubmit="msg()"> 
            <label>ID</label><br>
             <input type="text" name="userId" placeholder="아이디를 입력해주세요" required="required"><br><br>
               <label>PW</label><br>
             <input type="password" name="userPw" placeholder="비밀번호를 입력해주세요" required="required"><br><br>
               
               <hr>
             <span><button class="btn" type="submit">로그인</button>
             <button class="btn col-sm-offset-4" type="button" onclick="javascript: location.href='${pageContext.request.contextPath}/member/join';" >회원가입</button></span>
               
               <hr>
               <span><img src="" alt="네이버"><img src="" alt="카카오톡"><img src="" alt="페이스북"><img src="" alt="구글"><img src="" alt="트위터"></span>
               
                <hr>
                <a href="#">아이디를 잊으셨나요?</a>
                <hr>
                <a href="#">비밀번호를 잊으셨나요?</a>  
             </form>
            
        </div>

     

      </div>

    </div>

  </div>



<br/><br/>


<script type="text/javascript">

$('#myModal').modal({
  keyboard: false
})
</script>


    