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
 
 alert('글이 작성되었습니다.');

 }


</script>


<!-- Modal -->

  <div class="modal fade" id="myModal" role="dialog"> <!-- 사용자 지정 부분① : id명 -->

    <div class="modal-dialog">

    
      <!-- Modal content-->

      <div class="modal-content">
       
      <div class="modal-body">
       
       <h1 class="text-center">글쓰기</h1>
       
      <form role="form" method="post" autocomplete="off" onsubmit="msg()">
        
              <label for="boardTitle">제목</label><br>
             <input type="text" name="boardTitle" placeholder="제목을 입력해 주세요" required="required"><br><br>
               <label for="boardContent">내용</label><br>
             <textarea rows="5" cols="50" name="boardContent" placeholder="내용을 입력해 주세요" required="required"></textarea>
         <hr>
             <button class="btn" type="submit">글쓰기</button>
             <button class="btn" type="reset">재작성</button>
      </form>
    
   </div>
   </div>
   
 </div>
   
  </div>
  
  <script type="text/javascript">

$('#myModal').modal({
  keyboard: false
})
</script>
  
    