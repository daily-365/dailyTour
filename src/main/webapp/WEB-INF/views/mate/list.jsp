<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

        <!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

 

 <div class="container">

    <h1 class="text-center">Mate</h1>
    <br><br>

   <form role="form" method="get" autocomplete="off" class="form-inline">
      
    <div class="form-group">
      
    <select class="form-control col-sm-1">
     <option value="오전">오전</option>
     <option value="오후">오후</option>
    </select>
    </div>
    
    <div class="form-group">
     <select class="form-control col-sm-1">
     <%for(int i=12; i>=1; i--){ %>
     <option value="<%=i%>"><%=i %>시</option>
        <%} %>
    </select>
    </div>
    
    <div class="form-group">
     <select class="form-control col-sm-1"> 
     <%for(int i=10; i<=60; i+=10){ %>
     <option value="<%=i%>"><%=i %>분</option>
        <%} %>
    </select>
    </div>
    
   <div class="form-group">
     <select class="form-control col-sm-1">
     <option value="서울">서울</option>
     <option value="경기">경기</option>
     <option value="강원">강원</option>
     <option value="경상">경상</option>
     <option value="충청">충청</option>
     <option value="전라">전라</option>
     <option value="제주">제주</option>
    </select>
     </div>
     
     <div class="form-group">
    <button class="btn btn-primary" type="submit" class="btn-primary">검색</button>
    </div>
    
   </form>
   
   <br><br>
   
   <section class="container">
   
   <div class="form-gruop">
   <img src="/../../resources/img/사진1.jpg" style="width:200px; height: 200px;" class="img-thumbnail">
   <br><br>
   <h4>같이 저녁드실분 찾아요</h4>
   <p>강남</p>
   <p>11:00</p>
   <span>에비시디 &nbsp; &nbsp; &nbsp; &nbsp;<img src="/../../resources/img/사진2.jpg" style="width:50px; height: 50px;" class="img-circle"></span>             
   <br><br>
   </div>
   
   
   <div class="form-gruop">
    <img src="/../../resources/img/사진1.jpg" style="width:200px; height: 200px;" class="img-thumbnail">
   <br><br>
   <h4>같이 저녁드실분 찾아요</h4>
   <p>강남</p>
   <p>11:00</p>
   <span>에비시디 &nbsp; &nbsp; &nbsp; &nbsp;<img src="/../../resources/img/사진2.jpg" style="width:50px; height: 50px;" class="img-circle"></span>  
   <br><br>
   </div>
   
    </section>
     
   
   
   
   </div>