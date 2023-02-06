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
<fmt:formatDate value="${today}" pattern="yyyy年MM月dd日 HH時mm分ss秒" /><br>
<fmt:formatDate value="${today}" pattern="E曜日" /><br>
<fmt:formatDate value="${today}" pattern="yy/MM hh:mm z" /><br>
</body>
</html>