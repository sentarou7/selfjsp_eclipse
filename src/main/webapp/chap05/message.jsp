<%@ page contentType="text/html;charset=UTF-8"
    import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% pageContext.setAttribute("today", new Date()); %>
<fmt:setLocale value="${fn:split(header['accept-language'], ',')[0]}" />
<fmt:setBundle basename="msg" var="msg" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>i18n</title>
</head>
<body>
<fmt:message key="morning" bundle="${msg}" /><br>
<fmt:message key="night" bundle="${msg}" /><br>
<fmt:message key="now" bundle="${msg}">
    <fmt:param>
        <fmt:formatDate value="${today}" type="TIME" timeStyle="MEDIUM" />
    </fmt:param>
</fmt:message>
</body>
</html>