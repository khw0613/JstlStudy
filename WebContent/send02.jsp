<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl의 core 라이브러리 세팅 -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="n1" value="${param.num1 }" scope="request"></c:set>
<c:set var="n2" value="${param.num2 }" scope="request"></c:set>
<jsp:forward page="result01.jsp"></jsp:forward>