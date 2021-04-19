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
     <h1 class="text-center">Q & A</h1>
   <br><br>
   </header>
   
    
 <section class="container">
  
  <h3 class="pull-left">1:1 문의</h3>
  <br><br>
  
  <table class="table table-hover">
  <thead>
  <tr>
   <th>번호</th>
  <th>제목</th>
  <th>닉네임</th>
  <th>시간</th>
  </tr>

  </thead>



<c:forEach var="list" items="${list }">
<tbody>
 <tr>
 <td>${list.inquiryNo}</td>
 
   <c:if test="${member.userName eq list.inquiryWriteName || member.verify eq 1}">
 <td><a href="/inquiry/view?inquiryNo=${list.inquiryNo}">${list.inquiryTitle}</a></td>
    </c:if>
 
      
   <c:if test="${member.userName ne list.inquiryWriteName && member.verify ne 1}">
  <td>${list.inquiryTitle}</td>
  </c:if>
  
  
 <td>${list.inquiryWriteName}</td>
 
 <td><fmt:formatDate value="${list.inquiryDate}" pattern="yyyy-MM-dd HH:mm:SS"/></td>
  </tr>
  
  
 </tbody>
 
  </c:forEach>
  
  </table>
 
 </section>
 
 <c:if test="${member.verify ne 1 }">
 
 <footer class="container"> 
   <br><br>
   <!-- Button trigger modal -->
<button type="button" class="btn pull-right" data-toggle="modal" data-target="#myModal">
     글쓰기
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">문의하기</h4>
      </div>
      <div class="modal-body">
       
        <script type="text/javascript">
         function msg(){
        	 alert('글이 작성되었습니다.')
         }
        </script>
       
       <form role="form" method="post" autocomplete="off" onsubmit="msg()">
                    
           <div class="form-group">
           <label>작성자</label>
            <input class="form-control" value="${member.userName}" type="text" name="inquiryWriteName" readonly="readonly">
           </div>
            
          <div class="form-group">
           <label>문의제목</label>
            <input class="form-control" type="text" name="inquiryTitle" required="required">
           </div>
           
       
          <div class="form-group">
           <label>문의내용</label>
            <input class="form-control" type="text" name="inquiryContent" required="required">
           </div>
          
                  
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">작성</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
        
     </div>
        
           </form>
          </div>  
   
    </div>
  </div>
</div>


 <br><br>
 </footer>
 </c:if>
 

 </div>
    