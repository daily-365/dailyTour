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

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="#">메이트 찾기</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">커뮤니티 <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">모집</a></li>
            <li><a href="#">후기</a></li>
            <li><a href="#">추천</a></li>
            
            
            
            </ul>
        </li>
      </ul>
       <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="검색어를 입력해 주세요">
        </div>
        <button type="submit" class="btn btn-default">검색</button>
      </form>
      
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

  <section class="container">
  
  <h4>모집 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;전체 서울 경기 경상 강원 충청 전라 제주</h4>
  
    <table class="table table-hover">
      <thead>
    <tr>
    <th>번호</th>
    <th>제목</th>
    <th>닉네임</th>
    <th>시간</th>
    <th>조회</th>    
    </tr>
    </thead>
    
    <tbody>
    <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    </tr>
    </tbody>
    
    </table>
  
  
       <br><br>
       
      <button class="btn pull-right" type="button" onclick="${pageContext.request.contextPath }/community/write">글쓰기</button>
  
  </section>




