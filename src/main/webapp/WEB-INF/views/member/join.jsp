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
     
      alert('회원가입을 축하드립니다.');
      
     }
   
   </script>
    
<!-- Modal -->
     
  <div class="modal fade" id="myModal" role="dialog"> <!-- 사용자 지정 부분① : id명 -->

    <div class="modal-dialog">

    

      <!-- Modal content-->

      <div class="modal-content">

         <div class="modal-body">
          
          <form role="form" method="post" autocomplete="off" onsubmit="msg()">
          
          <label for="userId">아이디</label><br>
          <input type="text" name="userId" required="required"><br>
          
          <hr>
          
          <label for="userPw">비밀번호</label><br>
           <input type="password" name="userPw" required="required"><br>
           
          <hr>
          
          <label for="userPwCheck">비밀번호 확인</label><br>
           <input type="password" name="userPwCheck" required="required"><br>
          
          <hr>
           
          <label for="userNick">닉네임</label><br>
           <input type="text" name="userNick" required="required"><br>
                           
          <hr>
          
          <label>생년월일</label><br>
          <select name="userBirth1" required="required">
          <option  >출생연도</option>
          <%for(int i=2021; i>=1900; i--) { %>
          <option value="<%=i%>"><%=i%></option>
           <% } %>
          </select>
          <select name="userBirth2" required="required">
          <option>월</option>
          <%for(int i=1; i<=12; i++) { %>
          <option value="<%=i%>"><%=i%></option>
           <% } %>
          </select>
          <select name="userBirth3" required="required">
          <option>일</option>
          <%for(int i=1; i<=31; i++) { %>
          <option value="<%=i%>"><%=i%></option>
           <% } %>
          </select>
          
          <hr>
           
          <label for="userGender" >성별</label><br>
           <input type="radio" name="userGender" value="남" required="required">남 <input type="radio" name="userGender" value="여" required="required">여
           <br>
    
      <hr>
      
        <span><button type="button" class="btn" onclick="javascript: location.href='${pageContext.request.contextPath}/member/login';">Cancel</button>       <button type="submit"  class="btn">Submit</button> </span>
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


    