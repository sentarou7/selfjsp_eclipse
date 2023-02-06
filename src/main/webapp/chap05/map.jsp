<%@ page contentType="text/html;charset=UTF-8"
	import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
Map<String, String> map = Map.of(
	"JSP", "Jakarta Server Pages",
	"PHP", "PHP:Hypertext Preprocessor",
	"ASP.NET", "Active Server Page .NET"
);
pageContext.setAttribute("arch", map);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coreタグライブラリ</title>
</head>
<body>
<ul>
<c:forEach var="item" items="${arch}">
  <li>${item.key}：${item.value}</li>
</c:forEach>
</ul>
</body>
</html>