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
    
       <input id="communityNo" name="communityNo" type="hidden" value="${comm.communityNo }">
       <input id="communityWriteId" name="communityWriteId" type="hidden" value="${comm.communityWriteId }">
    
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
    <button type="button" data-toggle="modal" data-target="#modifyModal" class="btn btn-warning col-sm-offset-10">수정</button>  
       
 <!-- Modify Modal -->
<div class="modal fade" id="modifyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title text-center" id="myModalLabel">커뮤니티 글 수정</h4>
      </div>
      <div class="modal-body">
       
       <form class="text-center" method="post" role="form" autocomplete="off">
       
 
      
       <input id="communityNo" name="communityNo" type="hidden" value="${comm.communityNo }">
       <input id="communityWriteId" name="communityWriteId" type="hidden" value="${comm.communityWriteId }">
       
        <div class="form-group">
       <label for="communityTitle">제목</label>
       <input class="form-control text-center" id="communityTitle" name="communityTitle" type="text" placeholder="${comm.communityTitle }">
       </div>
        <div class="form-group">
       <label for="communityContent">내용</label>
       <textarea class="form-control text-center" id="communityContent" name="communityContent" placeholder="${comm.communityContent }"></textarea>
       </div>
       
       <div class="form-group">
       <label for="communityLocation">장소</label>
         <select class="form-control" name="communityLocation">
      <option value="전체">전체</option>
     <option value="서울">서울</option>
     <option value="경기">경기</option>
     <option value="경상">경상</option>
     <option value="강원">강원</option>
     <option value="충청">충청</option>
     <option value="전라">전라</option>
     <option value="제주">제주</option>
          </select>
       </div>       
           <button type="submit" class="btn btn-primary">등록</button>
            <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
     </form>
     
    </div>
  </div>
</div>
     </div>
     
     <button type="button" id="deleteBtn" class="btn btn-warning pull-right" >삭제</button>  
     
     <script type="text/javascript" >
     var form = $("form[role='form']")
     
     $('#deleteBtn').on('click',function(){
    	 if(confirm("정말 삭제하시겠습니까??")==true){
    	 form.attr('action',"/community/delete");
    	 form.attr('method','get');
    	 form.submit();
    	 }
     });
     
     
     
     </script> 
     
     </c:if>
     
     <br><br>
            
     <h3><a href="/community/reply?communityWriteId=${comm.communityWriteId }">덧글달기</a></h3>
  
  
  </section>
  
  
  

</div>

    