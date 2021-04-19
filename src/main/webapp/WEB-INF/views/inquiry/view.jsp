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
  
  <script type="text/javascript" src="/../../resources/js/jquery-3.5.1.min.js"></script>
    
    <div class="container-fluid">
    
  <header class="container">
  <br><br>
  <h3 class="pull-left">1:1 문의</h3>
  <br><br>
  
  </header>
  
  <section class="container">
  <input type="hidden" name="inquiryNo" value="${view.inquiryNo }">
  <hr>
  <p>글번호 : ${view.inquiryNo }</p>
  <hr>
  <p>제목 : ${view.inquiryTitle}</p>
   <hr> 
   <p>문의 내용 : ${view.inquiryContent}</p>
  <hr>
   
   
   

     <p  style="border: 3px solid black; padding: 30px; ">관리자 : ${view.inquiryComment}</p>
      
    
     
      <c:if test="${member.verify eq 1 }">
      <p>${member.userName }</p>
     <form role="form" method="post" autocomplete="off">
     
    
       <input type="hidden" name="inquiryTitle" value="${view.inquiryTitle} RE : ${member.userName}">
        <input type="hidden" name="inquiryContent" value="${view.inquiryContent}">
        <input type="hidden" name="inquiryWriteName" value="${view.inquiryWriteName}">
        
       <textarea name="inquiryComment" rows="5" cols="50"></textarea><br><br>
        
        <button class="btn pull-left" type="submit" >답글하기</button>
      </form> 
   
   </c:if>
   
   <br><br>
 
    <button type="button" class=" btn btn-primary" data-toggle="modal" data-target="#myModal">수정</button>
   
     <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">문의하기</h4>
      </div>
      <div class="modal-body">

  
      <form role="form" method="post" autocomplete="off" >
             
             <input type="hidden"  value="${view.inquiryNo }" name="inquiryNo">
                                        
           <div class="form-group">
           <label>작성자</label>
            <input class="form-control" value="${view.inquiryWriteName}" type="text" name="inquiryWriteName" readonly="readonly">
           </div>
            
          <div class="form-group" >
           <label>문의제목</label>
            <input class="form-control" type="text" value="${view.inquiryTitle}" name="inquiryTitle" required="required"
            onfocus="if(this.value=='${view.inquiryTitle}'){this.value=''}">
           </div>
           
       
          <div class="form-group">
           <label>문의내용</label>
            <textarea class="form-control" rows="5" cols="50" name="inquiryContent" required="required"
            onfocus="if(this.value=='${view.inquiryContent}'){this.value=''}">${view.inquiryContent }</textarea>
           </div>
          
                  
      <div class="modal-footer">
        <button type="button"  id="modifyBtn" class="btn btn-primary">작성</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
        
        <script type="text/javascript">
        var form = $("form[role='form']");
        
        $('#modifyBtn').on('click',function(){
        	if(confirm("수정 하시겠습니까?")==true){
        	form.attr('action','/inquiry/modify')
        	form.attr('method','get')
        	form.submit();
        	
        	}
        });
        
        </script>
        
     </div>
        
           </form>
  </div>
  </div>
  </div>
  </div>
  
  
   <button type="button" class=" btn btn-danger" id="deleteBtn">삭제</button>
     
      <script type="text/javascript">
        var form = $("form[role='form']");
        
        $('#deleteBtn').on('click',function(){
        	if(confirm("삭제 하시겠습니까?")==true){
        	form.attr('action','/inquiry/delete')
        	form.attr('method','get')
        	form.submit();
        	
        	}
        });
        
        </script>

  
  </section>
  
  
  <footer class="container">
   <button class="btn pull-right"  type="button" onclick="javascript: location.href='/inquiry/list'">목록으로</button>
  
  </footer>
  
  </div>