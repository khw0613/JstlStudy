<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl의 core 라이브러리 세팅 -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="str" value="ABCD EFGH 1234"></c:set>

<!-- fn은 el식으로 사용 -->
${fn:toLowerCase(str)}
<br>
${fn:indexOf(str, "EF")}
<br>
${fn:substring(str, 5, 9)}
<br>
${fn:replace(str, "ABCD", "^^")}