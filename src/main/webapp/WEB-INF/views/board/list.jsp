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

 <form class="navbar-form navbar-right" method="get" role="search">
    
   
  
   <div class="form-group">
    <input type="text" name="boardTitle" class="form-control" required="required"  placeholder="제목을 입력해 주세요">
     <input type="text" name="boardContent" class="form-control" required="required" placeholder="내용을 입력해 주세요">
  </div>
  <button id="searchBtn" type="submit" class="btn btn-default">검색</button>
      
   </form>
   
     <script type="text/javascript">
     var jsonData = JSON.parse('${list}');
     
     var jsonArr = [];
     
      
     </script>

  
   <nav class="container-fluid">
   <ul class="nav nav-pills nav-stacked col-sm-2">
  <li role="presentation" class="active"><a href="#">공지사항</a></li>
  <li role="presentation"><a href="${pageContext.request.contextPath }/board/view">이벤트 정보</a></li>
   </ul>
</nav>

<section class="container">

<table class="table table-hover">
 <thead>
 <tr>
 <th>번호</th>
 <th>제목</th>
 <th>등록일</th>
 <th>조회</th> 
 </tr>
</thead>

<c:forEach var="list" items="${list}">
 
<tbody>
<tr>
<td>${list.boardNo}</td>
<td>${list.boardTitle}</td>
<td>${list.boardDate}</td>
<td>${list.boardVisit}</td>
</tr>


</tbody>


</c:forEach>

</table>   


<div class="text-center">
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</div>
 
 
<%--  <% if(session.getAttribute("userId").equals("admin")){ %> --%>
 <button class="btn" type="button" style="float: right;" 
 onclick="javascript: location.href='${pageContext.request.contextPath}/board/write';">글쓰기</button>

<%-- <% } %> --%>


</section>
  
   
   </div>
   
    
    
    