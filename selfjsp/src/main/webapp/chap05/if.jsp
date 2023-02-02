<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="point" value="68" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coreタグライブラリ</title>
</head>
<body>
あなたの得点は${point}です。<br>
<c:if test="${point > 60}">
  <span style="color:Red;">合格です！</span>
</c:if>
<c:if test="${point <= 60}">
  <span style="color:Blue;">不合格です...</span>
</c:if>
</body>
</html>