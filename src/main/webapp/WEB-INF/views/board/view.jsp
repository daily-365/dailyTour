<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   <!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<script type="text/javascript" src="/../../resources/js/jquery-3.5.1.min.js"></script>


 <div class="container-fluid">
 
 
    <nav class="container-fluid">
   <ul class="nav nav-pills nav-stacked col-sm-2">
  <li role="presentation" class="active"><a href="#">이벤트 정보</a></li>
  <li role="presentation"><a href="${pageContext.request.contextPath }/board/list">공지사항</a></li>
   </ul>
</nav>

 
   <header class="container">
   <h1 class=text-center style=" padding: 30px; background-color: lightgray;">Event</h1>
   <br><br>
    </header>
 

 
 
    <section class="container">
 
         <c:if test="${member.verify ne 1 }">
 
 
       <c:forEach var="board" items="${board}">
        
      
        <form role="form" method="get" autocomplete="off"  onsubmit="msg()">
       
           <div class="form-group col-sm-6 col-sm-offset-3">
              <label for="boardNo" >글번호</label><br>
              <input class="form-control" type="number" value="${board.boardNo }" name="boardNo" readonly="readonly">
              </div>
              
              <div class="form-group col-sm-6 col-sm-offset-3">              
              <label for="boardTitle" >제목</label><br>
             <input class="form-control" type="text" name="boardTitle" value="${board.boardTitle }"  readonly="readonly">
             </div>
               
                <div class="form-group col-sm-6 col-sm-offset-3">
               <label for="boardContent">내용</label><br>
             <textarea class="form-control" rows="10" cols="50"  name="boardContent" readonly="readonly">${board.boardContent}</textarea>
              </div>
              
      
     <div class="form-group col-sm-6 col-sm-offset-3">
     <br><br>
      <p style="border: 3px dashed black;"> </p>
      <br><br>
      </div>     
      
         </form>

          </c:forEach>
         
         </c:if>
         
         
         <c:if test="${member.verify eq 1 }">
          <c:forEach var="board" items="${board}">
          
          <form role="form" method="get" autocomplete="off" >
       
           <div class="form-group col-sm-6 col-sm-offset-3">
              <label for="boardNo" >글번호</label><br>
              <input class="form-control" type="number" value="${board.boardNo }"  name="boardNo" readonly="readonly">
              </div>
              
              <div class="form-group col-sm-6 col-sm-offset-3">              
              <label for="boardTitle" >제목</label><br>
             <input class="form-control" type="text" name="boardTitle" value="${board.boardTitle }"  onfocus="if(this.value=='${board.boardTitle}'){this.value=''}" required="required" >
             </div>
               
                <div class="form-group col-sm-6 col-sm-offset-3">
               <label for="boardContent">내용</label><br>
             <textarea class="form-control" rows="10" cols="50"  name="boardContent"  onfocus="if(this.value=='${board.boardContent}'){ this.value=''}" required="required">${board.boardContent}</textarea>
              </div>
              
                 
         <div class="form-group col-sm-6 col-sm-offset-3">
        <button class="btn" type="button" id="modifyBtn">수정</button>
        <button class="btn" type="button"  id="deleteBtn">삭제</button>
         
         
          <br><br> <br><br>
           </div>
         
        <div class="form-group col-sm-6 col-sm-offset-3">
         <br><br>
      <p style="border: 3px dashed black;"> </p>
      <br><br>
      </div>     
      
         
         </form>
          
           </c:forEach>
             
             
          </c:if>
                    
        <script type="text/javascript">
        
        $(document).ready(function(){
        var form = $("form[role='form']")
        
        
        $('#modifyBtn').on('click',function(){
        	
        if(confirm("수정 하시겠습니까?")==true){
        	
        	form.attr('action','/board/modify');
        	form.attr('method','get');
        	form.submit();
        }
        });
        
        
        $('#deleteBtn').on('click',function(){
        if(confirm("삭제 하시겠습니까?")==true){
        	
        	form.attr('action','/board/delete');
        	form.attr('method','get');
        	form.submit();
        }
        });     
        });
        
        </script>
           
       
                 
          </section> 
     
        <br>

       

 
 <footer class="container-fluid">
    
     <nav class="container text-center">
  <ul class="pagination">
 <c:if test="${pageMaker.prev}">
   <li><a href="view${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a></li>
  </c:if> 
  
  <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
   <li><a href="view${pageMaker.makeQuery(idx)}">${idx}</a></li>
  </c:forEach>
    
  <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
   <li><a href="view${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a></li>
  </c:if> 
  </ul>
</nav>
      
 </footer>
 
 
 
 </div>