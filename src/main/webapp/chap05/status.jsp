<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coreタグライブラリ</title>
</head>
<body>
<c:forEach var="name" items="掛谷,薄井,酒井,金子,高江" varStatus="stt">
  <div
    <c:if test="${stt.count % 2 == 0}">style="color:Red;"</c:if>
    >こんにちは、${name}さん！</div>
</c:forEach>
</body>
</html>