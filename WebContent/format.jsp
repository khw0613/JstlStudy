<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>시각</h2>
<c:set var="date" value="<%= new Date() %>"></c:set>
<fmt:formatDate value="${date}" type="both" dateStyle="short" timeStyle="short"/>
<br>
<fmt:formatDate value="${date}" type="both" dateStyle="short" timeStyle="medium"/>
<br>
<fmt:formatDate value="${date}" type="both" dateStyle="short" timeStyle="long"/>
<br>
<fmt:formatDate value="${date}" type="both" dateStyle="short" timeStyle="full"/>
<br>
----------------------
<br>
<h2>숫자 포맷</h2>
<fmt:formatNumber value="10000000000" type="currency" currencySymbol="$"/>
<br>
<fmt:formatNumber value="0.99" type="percent"/>
<br>
<h2>국가별 포맷</h2>
<fmt:setLocale value="ko_kr"/>
<fmt:formatNumber value="10000000000" type="currency"/>
<br>
<fmt:formatDate value="${date}" type="both" dateStyle="short" timeStyle="full"/>
<br>

<fmt:setLocale value="en_us"/>
<fmt:formatNumber value="10000000000" type="currency"/>
<br>
<fmt:formatDate value="${date}" type="both" dateStyle="short" timeStyle="full"/>
<br>

<fmt:setLocale value="ja_jp"/>
<fmt:formatNumber value="10000000000" type="currency"/>
<br>
<fmt:formatDate value="${date}" type="both" dateStyle="short" timeStyle="full"/>
<br>

<h2>세계별 시간대</h2>
<fmt:timeZone value="Asia/Hong_Kong">
	홍콩 : <fmt:formatDate value="${date }" type="both"/>
</fmt:timeZone>
</body>
</html>