<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href=css/bootstrap.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>게시판 로그인</title>
</head>
<body>
	<script src = "https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src = "js/bootstrap.js"></script>


  <div class="container" >
    
    
    <main class="form-signin">
    <form action="login.do" method="post">
    
    <h1 class="h3 mb-3 fw-normal" >로그인</h1>
      <p>
        아이디: 
        <input type="text" name="id" value="${param.id }" class="form-control" required autofocus/>
        <c:if test="${errors.id }">ID를 입력하세요.</c:if>
      </p>
      <p>
        암호 :
        <input type="password" name="password"  class="form-control" required autofocus/>
        <c:if test="${errors.password }">암호를 입력하세요.</c:if>
      </p>
      <input type="submit" value="로그인" />
    </form>
    </main>
    
  </div>
</body>
</html>


