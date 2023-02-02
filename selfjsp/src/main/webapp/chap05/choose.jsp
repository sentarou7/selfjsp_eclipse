<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="point" value="58" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coreタグライブラリ</title>
</head>
<body>
あなたの得点は${point}です。<br>
<c:choose>
    <c:when test="${point < 20}">ランクD</c:when>
    <c:when test="${point < 50}">ランクC</c:when>
    <c:when test="${point < 70}">ランクB</c:when>
    <c:otherwise>ランクA</c:otherwise>
</c:choose>
</body>
</html>