<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag trimDirectiveWhitespaces="true"@%>

<%
	HttpSession httpSession = request.getSession(false);

if(httpSession != null || httpSession.getAttribute("authUser") != null){
%>
<jsp:dobody />
<% 	
	
}
%>