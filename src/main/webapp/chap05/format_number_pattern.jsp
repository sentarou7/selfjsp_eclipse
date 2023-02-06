<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>i18nタグライブラリ</title>
</head>
<body>
<c:set var="num" value="2501.9812" />
<c:set var="num2" value="-0.9812" />
${num} ->
<fmt:formatNumber value="${num}" pattern="##,000.00" /><br>
${num} ->
<fmt:formatNumber value="${num}" pattern="00,000.00" /><br>
${num} ->
<fmt:formatNumber value="${num}" pattern="00E00" /><br>
${num2} ->
<fmt:formatNumber value="${num2}" pattern="% ##.00" /><br>
${num} ->
<fmt:formatNumber value="${num}" pattern="△0,000;▼0,000" /><br>
${num2} ->
<fmt:formatNumber value="${num2}" pattern="△0,000;▼0,000" /><br>
</body>
</html>