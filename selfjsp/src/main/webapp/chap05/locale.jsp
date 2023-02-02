<%@ page contentType="text/html;charset=UTF-8"
    import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% pageContext.setAttribute("today", new Date()); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>i18nタグライブラリ</title>
</head>
<body>
<c:set var="num" value="2501.9812" />
<fmt:setLocale value="ja_JP" />
日本 ->
<fmt:formatDate value="${today}" type="BOTH"
    dateStyle="LONG" timeStyle="LONG" /><br>
<fmt:formatNumber value="${num}" type="NUMBER" groupingUsed="true"
    minIntegerDigits="5" maxFractionDigits="3" /><br>
<fmt:setLocale value="en_US" />
アメリカ ->
<fmt:formatDate value="${today}" type="BOTH"
    dateStyle="LONG" timeStyle="LONG" /><br>
<fmt:formatNumber value="${num}" type="NUMBER" groupingUsed="true"
    minIntegerDigits="5" maxFractionDigits="3" /><br>
<fmt:setLocale value="de_DE" />
ドイツ ->
<fmt:formatDate value="${today}" type="BOTH"
    dateStyle="LONG" timeStyle="LONG" /><br>
<fmt:formatNumber value="${num}" type="NUMBER" groupingUsed="true"
    minIntegerDigits="5" maxFractionDigits="3" /><br>
</body>
</html>