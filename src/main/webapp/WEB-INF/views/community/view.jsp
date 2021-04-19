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
     <h1 class="text-center">모집  상세페이지</h1>
        
    <br><br>
  </header>

  <section class="container">
    
    <input type="hidden" value="${comm.communityNo}">
    <input type="hidden" value="${comm.communityWriteId}">
    
    <h4>모집지역 : ${comm.communityLocation } </h4>
     <hr>
     <h4>${comm.communityTitle }<span class="pull-right">조회 : ${comm.communityVisit } 덧글 : ${comm.communityReply }</span></h4>
     <h4><a href="#">${comm.communityWriteId }</a><span class="pull-right"> <fmt:formatDate value="${comm.communityDate }" pattern="yyyy-MM-dd"/> </span> </h4>
    
     <hr>
     <h4>${comm.communityContent }</h4>
     <hr>
     <br>
     
    <button type="button" class="btn btn-warning pull-left" onclick="javascript: location.href='/community/list'">목록</button>     
    
    <c:if test="${member.userName eq comm.communityWriteId }">
    <button type="button" class="btn btn-warning col-sm-offset-10">수정</button>  
    <button type="button" class="btn btn-warning pull-right">삭제</button>  
     </c:if>
     
     <br><br>
            
     <h3><a href="/community/reply?communityWriteId=${comm.communityWriteId }">덧글달기</a></h3>
  
  
  </section>
  
  
  

</div>

    