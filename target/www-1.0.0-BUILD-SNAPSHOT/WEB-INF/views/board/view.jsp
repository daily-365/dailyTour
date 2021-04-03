<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

 
 
 
    <section class="container">
    
      <table class="table table-hover">
 <thead>
 <tr>
 <th>제목</th>
 <th>등록일</th>
 <th>조회수</th> 
 </tr>
</thead>
<tr>
<td></td>
<td></td>
<td></td>
</tr>

<tbody>
<tr>


</tr>
</tbody>


</table> 
    
    
      
      
<%--       <c:if test="${verify eq 1 }">  --%>
    <button class="btn col-sm-offset-10"  type="button" 
    onclick="javascript: location.href='${pageContext.request.contextPath}/board/modify';">글 수정</button>
    <button class="btn" type="button"
     onclick="javascript: location.href='${pageContext.request.contextPath}/board/delete';">글 삭제</button>
<%--     </c:if> --%>

    </section>

 
 
 
 
 
 </div>