<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
  src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  <link href="board.css" rel="stylesheet" >


<title>JSP 게시판 웹 사이트</title>


</head>
<body>
  <div class="container">
    <%--
  <c:if test="${not empty authUser }">
    ${authUser.name }님, 안녕하세요.
    <a href="logout.do">[로그아웃하기]</a>
    <a href="changePwd.do">[암호변경하기]</a>
  </c:if>
  <c:if test="${empty authUser }">
    <a href="join.do">[회원가입하기]</a>
    <a href="login.do">[로그인하기]</a>
  </c:if>
 --%>
 <div class="header-wrapper">
	<div class="header pagewidth">
		<!-- TITLE -->
		<h1>게시판 예제</h1>
		<h2>무료 제공 템플릿을 활용한 게시판 디자인</h2>
		<!-- END TITLE -->
		 
    <u:isLogin>
    ${authUser.name }님, 안녕하세요.
    <a href="logout.do">[로그아웃하기]</a>
    <a href="changePwd.do">[암호변경하기]</a>
    <a href="removeMember.do">[회원 탈퇴하기]</a>  
    </u:isLogin>
    <u:notLogin>
      <a href="join.do">[회원가입하기]</a>
      <a href="login.do">[로그인하기]</a>
    </u:notLogin>
	</div>
</div>
<div class="nav-wrapper">
	<div class="nav pagewidth">
		<ul>	
			<!-- MENU -->
			
			<li class="selected">
			<a href="index.jsp">Home</a></li>
			
			<li><a href="/article/list.do">Board</a></li>
			<!-- END MENU -->
		</ul>
	</div>
</div>
<div class="pagewidth">
	<div class="page-wrap">
		<div class="content">
		
			<!-- CONTENT -->
			<h3>과정명 : 자바기반 응용sw개발전문가</h3>
			<h3>이름 : 유보미</h3>
		</div>
	<div class="sidebar">	
			
			<!-- SIDEBAR -->	
			
			
			<!-- SIDEBAR -->
	
		</div>
	
		<div class="clear"></div>		
	</div>
	<div class="footer">
		<p><a href="http://validator.w3.org/check/referer" title="valid XHTML">XHTML</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer" title="valid CSS">CSS</a> &nbsp;&nbsp; &copy; YourWebsiteName. Design: <a href="http://www.spyka.net">spyka webmaster</a> | <a href="http://www.justfreetemplates.com">Free Web Templates</a></p> 
	</div>
</div>

<div style="font-size: 0.8em; text-align: center;">
<br />
Design downloaded from Zeroweb.org: <a href="http://www.zeroweb.org">Free website templates, layouts, and tools.</a><br />
<br />
</div>

  </div>
</body>
</html>




