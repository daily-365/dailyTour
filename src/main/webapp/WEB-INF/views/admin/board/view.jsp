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
    
       <c:forEach var="board" items="${board}">
       
               
        <div style="border: 3px solid yellow;"> <br>
        
        <p><span class="pull-left">&nbsp;&nbsp;&nbsp;작성자 : ${board.writeId}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;제목 : ${board.boardTitle}</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>등록일 : <fmt:formatDate value="${board.boardDate}" pattern="yyyy-MM-dd"/></span><span class="pull-right">조회수 : ${board.boardVisit}&nbsp;&nbsp;&nbsp;&nbsp;</span> </p>
        
            
        <p  style="border-top: 2px solid red;"> <br>&nbsp;${board.boardContent}</p>
        
        <br>
        <div class="col-sm-offset-10">
     
          </div>
          
        <button class="btn col-sm-offset-10" type="button" onclick="javascript: location.href='/admin/board/modify'">수정</button>
        <button class="btn" type="button" onclick="javascript: location.href='/admin/board/delete'">삭제</button>
        <br><br>
      
       </div>
       <br>

       
       
       </c:forEach>
     



    </section>

 
 <footer class="container-fluid">
    
     <h1 class=text-center style=" padding: 30px; background-color: lightgray;">Event</h1>
      
 </footer>
 
 
 
 </div>