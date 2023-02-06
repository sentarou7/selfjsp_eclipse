<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>i18nタグライブラリ</title>
</head>
<body>
<c:set var="num" value="2501.9812" />
${num} ->
<fmt:formatNumber value="${num}" type="NUMBER" groupingUsed="true"
  minIntegerDigits="5" maxFractionDigits="3" /><br>
<c:set var="cur" value="4571.53" />
${cur} ->
<fmt:formatNumber value="${cur}" type="CURRENCY" currencySymbol="＄" /><br>
<c:set var="perc" value="0.5764" />
${perc} ->
<fmt:formatNumber value="${perc}" type="PERCENT" maxFractionDigits="1" /><br>
</body>
</html>