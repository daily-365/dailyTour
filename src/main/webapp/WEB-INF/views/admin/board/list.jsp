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

 <form class="navbar-form navbar-right"  role="search">
    
   
  
   <div class="form-group">
   <select name="searchType" class="form-control">
  <option value="">목록</option>
  <option value="t">제목</option>
  <option value="c">내용</option>
  <option value="w">작성자</option>
  <option value="tc">제목  / 내용</option>
 </select>

    <input type="text" name="keyword" id="keywordInput" value="${scri.keyword}" class="form-control" required="required"  placeholder="Search">
 
  
  <button id="searchBtn" type="button" class="btn btn-default">검색</button>
  <script type="text/javascript">
 $(function(){
  $('#searchBtn').click(function() {
   self.location = "list"
     + '${pageMaker.makeQuery(1)}'
     + "&searchType="
     + $("select option:selected").val()
     + "&keyword="
     + encodeURIComponent($('#keywordInput').val());
    });
 });   
 </script>
 </div>
   </form>
   
  
   <nav class="container-fluid">
   <ul class="nav nav-pills nav-stacked col-sm-2">
  <li role="presentation" class="active"><a href="#">공지사항</a></li>
  <li role="presentation"><a href="${pageContext.request.contextPath }/admin/board/view">이벤트 정보</a></li>
   </ul>
</nav>

<section class="container">

<table class="table table-hover">
 <thead>
 <tr>
 <th>번호</th>
 <th>작성자</th>
 <th>제목</th>
 <th>등록일</th>
 <th>조회</th> 
 </tr>
</thead>

<c:forEach var="list" items="${list}">
 
<tbody>
<tr>
<td>${list.boardNo}</td>
<td>${list.writeId }</td>
<td>${list.boardTitle}</td>
<td><fmt:formatDate value="${list.boardDate}" pattern="yyyy-MM-dd"/></td>
<td>${list.boardVisit}</td>
</tr>


</tbody>


</c:forEach>

</table>   


    <nav class="container text-center">
  <ul class="pagination">
 <c:if test="${pageMaker.prev}">
   <li><a href="list${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a></li>
  </c:if> 
  
  <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
   <li><a href="list${pageMaker.makeQuery(idx)}">${idx}</a></li>
  </c:forEach>
    
  <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
   <li><a href="list${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a></li>
  </c:if> 
  </ul>
</nav>
 

 <button class="btn" type="button" style="float: right;" 
 onclick="javascript: location.href='${pageContext.request.contextPath}/admin/board/write';">글쓰기</button>


</section>
  
   
   </div>
   
    
    
    