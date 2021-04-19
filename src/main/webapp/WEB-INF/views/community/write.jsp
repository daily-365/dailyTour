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
    
    
    <div class="container-fluid">
    
     <header class="container">
     
     <br><br>
     
     <h1 class="text-center">커뮤니티 모집 글 작성</h1>
     
     <br><br>
     
     </header>
    
    <section class="container">
    
    <script type="text/javascript">
    function msg(){
    	
    	alert('글이 등록되었습니다.')
    }
    
    </script>
    
    <form role="form" autocomplete="off" method="post" onsubmit="msg()">
    
    <div class="form-gorup col-sm-4 col-sm-offset-4">
      <label>닉네임</label>
     <input class="form-control" type="text" id="communityWriteId" name="communityWriteId" readonly="readonly" value="${member.userName }">
      <br><br>
      </div>
      
      
      <div class="form-gorup col-sm-4 col-sm-offset-4">
      <label>제목</label>
     <input class="form-control" type="text" id="communityTitle" name="communityTitle"   required="required">
     <br><br>
      </div>
       
      <div class="form-gorup col-sm-4 col-sm-offset-4">
      <label>모집 지역</label>
     <select class="form-control"  name="communityLocation"> 
     <option value="전체">전체</option>
     <option value="서울">서울</option>
     <option value="경기">경기</option>
     <option value="경상">경상</option>
     <option value="강원">강원</option>
     <option value="충청">충청</option>
     <option value="전라">전라</option>
     <option value="제주">제주</option>
     </select>
     <br><br>
      </div>
      
      
      <div class="form-gorup col-sm-4 col-sm-offset-4">
      <label for="communitiContent">내용</label>
      <textarea class="form-control" rows="5" cols="50" required="required" name="communityContent" id="communityContetn"></textarea>
    <br><br>
      </div>
     
          <div class="form-gorup col-sm-4 col-sm-offset-4">
          <button type="submit"  class="btn btn-warning" id="registBtn" >등록</button>
          <button type="button"  class="btn btn-warning" onclick="javascript: location.href='/community/list'">돌아가기</button>
          <br><br>
          </div>
     
    
    </form>
    
    
    </section>
     
    
    
    
    </div>