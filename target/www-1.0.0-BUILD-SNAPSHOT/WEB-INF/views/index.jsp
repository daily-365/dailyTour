<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
    <!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

   
   
   
  <nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">LOGO</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        
       <c:if test="${login ne true}">
        
        <li><a href="${pageContext.request.contextPath}/member/login">로그인</a></li>
        <li><a href="${pageContext.request.contextPath}/member/join">회원가입</a></li>
       
        </c:if>
        
        
        <c:if test="${login eq true }">
               
        <li><a href="${pageContext.request.contextPath}/member/logout">로그아웃</a></li>
           </c:if>  
        
        
        <li class="dropdown">
        <ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">메뉴<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="${pageContext.request.contextPath}/board/list">공지사항</a></li>
            <li><a href="#">여행지검색</a></li>
            <li><a href="#">메이트찾기</a></li>
            <li><a href="#">커뮤니티</a></li>
          </ul>
        </li>
      </ul>
      </li>
      </ul>
     </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    
     
                                                <br><br>
  
    
           <h1 class="text-center" style="font-family: 휴먼둥근헤드라인;">View <br><br><br><br></h1>
        
     
         <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
   
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img class="img-rounded" src="/../../resources/img/배경1.jpg" >
    </div>
    <div class="item">
      <img class="img-rounded" src="/../../resources/img/배경2.jpg">
     </div>
       <div class="item">
      <img class="img-rounded" src="/../../resources/img/배경3.jpg" >
     </div>

  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

    
<script type="text/javascript">

$(function(){

// 이미지 슬라이드 컨트롤를 사용하기 위해서는 carousel를 실행해야한다.
$('#carousel-example-generic').carousel({


// 슬리아딩 자동 순환 지연 시간
// false면 자동 순환하지 않는다.
interval: 2000,

// hover를 설정하면 마우스를 가져대면 자동 순환이 멈춘다.
pause: "hover",

// 순환 설정, true면 1 -> 2가면 다시 1로 돌아가서 반복
wrap: true

 });

});


</script>


<!-- Modal -->

  <div class="modal fade" id="myModal" role="dialog"> <!-- 사용자 지정 부분① : id명 -->

    <div class="modal-dialog">

    

      <!-- Modal content-->

      <div class="modal-content">

        <div class="modal-header ">
             
        
           <button class="btn" data-dismiss="modal" style="float: right;">X</button>
        </div>

        <div class="modal-body text-center">
          <img src="/../../resources/img/도쿄돔.jpg/" style="width:500px; height:300px;"><br><br>
          <p>도쿄 여행 특가 세일 중 입니다.도쿄 여행 특가 세일 중 입니다.도쿄 여행 특가 세일 중 입니다.도쿄 여행 특가 세일 중 입니다.도쿄 여행 특가 세일 중 입니다.</p> <!-- 사용자 지정 부분③ : 텍스트 메시지 -->

        </div>

        <div class="modal-footer">

         <span style="float: left;"  class="btn" onclick="javascript: location.href='#'">자세히 보러가기</span>
         <span style="float: right;"><input type="checkbox" value="">&nbsp;다시 보지 않기</span>
        </div>

      </div>

    </div>

  </div>



<br/><br/>


<script type="text/javascript">

$('#myModal').modal({
  keyboard: false
})
</script>






    
    