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
 
<script type="text/javascript"  src="/../../resources/js/jquery-3.5.1.min.js"></script>

<div class="container-fluid">

   <header class="container">
   <br><br>
      
   <input type="hidden" name=" communityWriteId" value="${comm. communityWriteId }">
      
       <p style="border: 2px solid black; padding: 30px;"> ${comm.communityWriteId}  :  ${comm.communityReply }  </p>
      <button type="button" class="btn btn-warning" onclick="location.href='/community/list'">목록</button>
  
   </header>
  <br><br>
  
   <section class="container">
   
    <h3 class="pull-left">덧글 달기</h3>
    <br>
    <form role="form" method="post" autocomplete="off" onsubmit="msg()">
    
    <script type="text/javascript">
    function msg(){
    	
    	alert('덧글이 등록되었습니다.')
    	
    }
    
    </script>
     
     <input type="hidden" name="communityReplyId" value="${member.userName }">
    
    <div class="form-group">
    <textarea rows="5" cols="50" name="communityReplyContent"  class="form-control" placeholder="내용을 입력해 주세요"></textarea>
     <button type="submit"  class="form-control btn btn-warning col-sm-12">덧글 입력</button>
     </div>
          
     </form>
     
     <br><br>
   </section>
  
  <footer class="container">
    
    <h4><!-- ? -->개의 덧글</h4>
     
    <c:forEach var="commRe" items="${commRe }" >
     <hr>  
     
     
   <p> ${commRe.communityReplyId}  <span class="col-sm-offset-8"> <fmt:formatDate value="${commRe.communityReplyDate }" pattern="yyyy-MM-dd"/> </span>
   
   
    
    <button type="button" class="btn btn-primary col-sm-offset-10">수정</button>
    <button type="button" class="btn btn-danger">삭제</button></p> <br>
  
    
    ${commRe.communityReplyContent }
    </c:forEach>
     
  </footer>
  

</div>
    
    