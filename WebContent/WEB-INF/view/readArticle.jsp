<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>
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
<title>Insert title here</title>
<style>
.read-col {
height: 200px;
}
</style>

</head>
<body>
  <u:navbar></u:navbar>
  
    <div class="container">
    <div class="row">
      <div class="col-3"></div>
      <div class="col-6">
      

    <table class="table">
    <tbody>
    	
        <tr>
      <th scope="row">번호</th>
      <td>${articleData.article.number }</td>

    </tr>
    <tr>
      <th scope="row">작성자</th>
      <td>${articleData.article.writer.name }</td>

    </tr>
    <tr>
      <th scope="row">제목</th>
      <td><c:out value="${articleData.article.title }"></c:out></td>
    </tr>
        <tr>
         <th scope="row">내용

         </th></label>
   
      
      
      <td class="read-col"><c:out value="${articleData.content.content }"></c:out></td>
    </tr>
      </tbody>
      
      
      <tr>
        <td colspan="2"><c:set var="pageNo"
            value="${empty param.pageNo ? '1' : param.pageNo }" /> <a
          href="list.do?pageNo=${pageNo}">[목록]</a>
          <c:if
            test="${authUser.id == articleData.article.writer.id}">
            <a href="modify.do?no=${articleData.article.number }">[게시글수정]</a>
            <a href="delete.do?no=${articleData.article.number }">[게시글삭제]</a>
          </c:if></td>
      </tr>
      <tr>
      </tr>
    </table>
    
    <%-- 
    로그인 한 경우만
    댓글 폼 출력
    
    --%>
    <u:replyForm articleNo="${articleData.article.number }"/>
    
    <u:listReply /> 
    
            </div>
      </div>
    </div>
    </div>

</body>
</html>







