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
 
  <header class="container-fluid" style="background-color: navy; opacity: 70%;">
        <br><br>
    <h1 class="text-center" style="color: white;">My Page</h1>
    <br><br>
  </header>
 
 <nav class="container-fluid" style="font-size: 20px;">
<ul class="nav nav-tabs nav-justified">
<li role="presentation" class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
      Menu <span class="caret"></span>
    </a>
  <ul class="dropdown-menu" style="font-size: 16px;" role="menu">
            <li><a href="#" class="btn-info">게시글 관리</a></li>
            <li><a href="#" class="btn-info">댓글 관리</a></li>
            <li><a href="/myPage/detailInfo" class="btn-info">프로필 등록/수정</a></li>
 </ul>

</ul>
 </nav>
 
 <section class="container">
 
   <br>
   <h1 class="text-center">Profile</h1>
   <br><br>
    
    

    <div class="text-center">
     
    <img   style="width:250px; height: 200px;" class="img-circle" src="${member.profileImg }" alt="profile">
    <br><br>
    
    <div style="border: 2px dotted black; padding: 30px;" class="img-thumbnail">
      <h3 class="text-center">${member.userName }</h3>
      <h3>${member.userPhone }</h3>
      <h3>${member.userMail }</h3>
       <h3 class="text-center">${member.userAddr1 }</h3>
       <h3 class="text-center">${member.userAddr2 }${member.userAddr3 }</h3>
       
       </div>             
    </div>

 
  <br><br> <br><br>
  
 </section>
 
 
 <footer class="container-fluid" style="background-color: black; opacity: 50%;">
 <br><br>
  <h1 class="text-center" style="color: white;">My Page</h1>
 <br><br>
 
 </footer>
 
 
 </div>