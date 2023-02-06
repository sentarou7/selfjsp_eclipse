<%@ page contentType="text/html;charset=UTF-8"
    import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>i18nタグライブラリ</title>
</head>
<body>
<c:set var="num" value="1249.31" />
<fmt:parseNumber value="${num}" integerOnly="true" var="inum" />
${inum} <br>
<c:set var="perc" value="12.5%" />
<fmt:parseNumber value="${perc}" type="PERCENT" var="iperc" />
${iperc} <br>
<c:set var="today" value="2020年10月26日" />
<fmt:parseDate value="${today}" pattern="yyyy年MM月dd日" var="dtoday" />
${dtoday} <br>
<c:set var="today2" value="18:35" />
<fmt:parseDate value="${today2}" type="TIME" timeStyle="SHORT" var="dtoday2" />
${dtoday2} <br>
</body>
</html>