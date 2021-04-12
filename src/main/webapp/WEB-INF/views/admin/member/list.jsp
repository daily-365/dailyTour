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
    
      <header class="container">
        <br><br>
        <h1 class="text-center">회원정보</h1>
         <br><br> 
            
      </header>
    
    <nav class="container">
      
      <form role="form" method="get" autocomplete="off">
    
    <div class="form-inline col-sm-offset-7">
    <select class="form-control" name="searchType" >
      <option value="">목록</option>
     <option value="id">아이디</option>
     <option value="name">이름</option>
     <option value="grade">회원등급</option>
    </select>
         <input type="text" id="keywordInput" class="form-control" placeholder="검색어를 입력해 주세요" value="${scri.keyword }"  name="keyword" required="required">
      <button id="searchBtn"     class="btn btn-default" type="button">검색</button>
        
        <script type="text/javascript">
        $(function(){
        	$('#searchBtn').click(function(){
        		self.location="list"
        		+'${pageMaker.makeQuery(1)}'
        		+"&searchType="
        		+$("select option:selected").val()
        		+"&keyword="
        		+encodeURIComponent($('#keywordInput').val());
        	});
        	  	
        	
        });
               
        </script>
        
        
         </div>
         <br><br>
         </form>
         
    </nav>
    
    
    
    <section class="container-fuid">
          
      <table class="table table-hover">
      
      <thead style="background-color: grey;">
      <tr>
      <th>회원번호</th>
      <th>회원 ID</th>
      <th>이름</th>
      <th>성별</th>
      <th>회원등급</th>
      <th>게시글/댓글</th>
      <th>가입일</th>
      </tr>
      </thead>
      
      <c:forEach var="list" items="${list }">
      <tbody>
      <tr>
      <td>${list.userNo}</td>
      <td>${list.userId}</td>
      <td>${list.userName}</td>
      <td>${list.userGender}</td>
      <td>list.userGrade -일반회원,유료회원</td>
      <td>list.boardNo/list.replyNo</td>
      <td><fmt:formatDate value="${list.regiDate}" pattern="yyyy-MM-dd"/></td>
      </tr>
      </tbody>
      </c:forEach>
   
      
      
      </table>
    
    
    
     </section>
     
    <nav class="container text-center">
  <ul class="pagination">
  <c:if test="${pageMaker.prev }">
    <li>
      <a href="list${pageMaker.makeQuery(pageMaker.startPage-1 )}" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    </c:if>
    
    
    <c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
    <li><a href="list${pageMaker.makeQuery(idx) }">${idx}</a></li>
    </c:forEach>
    
    <c:if test="${pageMaker.next && pageMaker.endPage>0 }">
    <li>
      <a href="list${pageMaker.makeQuery(pageMaker.endPage+1) }" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
    </c:if>
    
    
  </ul>
</nav>
    
    </div>