<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coreタグライブラリ</title>
</head>
<body>
<c:forEach var="name" items="掛谷,薄井,酒井,金子,高江">
  <div>こんにちは、${name}さん！</div>
</c:forEach>
</body>
</html>