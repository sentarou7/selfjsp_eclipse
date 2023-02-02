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
<c:if test="${point < 20}">ランクD</c:if>
<c:if test="${point >= 20 && point < 50}">ランクC</c:if>
<c:if test="${point >= 50 && point < 70}">ランクB</c:if>
<c:if test="${point >= 70}">ランクA</c:if>
</body>
</html>