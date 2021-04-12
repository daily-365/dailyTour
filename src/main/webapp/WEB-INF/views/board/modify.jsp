<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
       <!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
function msg() {
	alert('글이 수정되었습니다.')
	
}


</script>

 <div class="container-fluid">

    <header class="container">
        <br><br>
       <h1 class="text-center">글수정</h1>
       <br><br>
       </header>
       
      
      <section class="container">
       
      <form  role="form" method="post" autocomplete="off"  onsubmit="msg()">
       

             <div class="form-group col-sm-4 col-sm-offset-4">
             
               <input type="hidden" name="boardNo" value="<%=request.getParameter("boardNo")%>">
             
              <label for="boardTitle" >제목</label><br>
             <input class="form-control" type="text" name="boardTitle" placeholder="제목을 입력해 주세요" required="required"><br><br>
             </div>
               
                <div class="form-group col-sm-4 col-sm-offset-4">
               <label for="boardContent">내용</label><br>
             <textarea class="form-control" rows="5" cols="50" name="boardContent" placeholder="내용을 입력해 주세요" required="required"></textarea>
              </div>
        
            <div class="form-group col-sm-2 col-sm-offset-4"><br>
             <button class="btn" id="modifyBtn"  class="form-control" type="submit">수정</button>
             
                </div>
                

      </form>
    
 </section>
 
 </div>
