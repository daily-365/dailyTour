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
    
    
    <nav class="navbar navbar-default">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">HOME</a>
    </div>

        <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
         <select class="form-control" name="searchType" id="searchType">
         <option value="loc">모집 지역</option>
         <option value="title">제목</option>
         <option value="name">닉네임</option>
         <option value="visit">조회수</option>
          </select>
        
        
        
        </div>
        <div class="form-group">
          <input type="text" name="keyword" id="keywordInput"  value="${scri.keyword }" class="form-control" placeholder="검색어를 입력해 주세요">
        </div>
        <button type="submit" id="searchBtn" class="btn btn-default">검색</button>
      </form>
      
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
      

</nav>

  <section class="container">
  

    <table class="table table-hover">
      <thead>
    <tr>
    <th>번호</th>
    <th>제목</th>
     <th>지역</th> 
    <th>닉네임</th>
    <th>시간</th>
    <th>조회수</th>    
    </tr>
    </thead>
    
    
   <c:forEach var="list" items="${list }">
    <tbody>
    <tr>
    <td>${list.communityNo }</td>
    <td><a href="/community/view?communityNo?=${communityNo}">${list.communityTitle }</a></td>
    <td>${list.communityLocation }</td>
   <td>${list.communityWriteId }</td>
    <td><fmt:formatDate value="${list.communityDate }" pattern="yyyy-MM-dd"/></td>
    <td>${list.communityVisit }</td>
    
    
    </tr>
    </tbody>
    </c:forEach>
    
    
    </table>
  
  
       <br><br>
       
      <button class="btn pull-right" type="button" onclick="javascript : location.href='/community/write'">글쓰기</button>
  
  </section>

<footer class="container">
   
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


</footer>


