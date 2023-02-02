<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Refresh応答ヘッダー</title>
</head>
<body>
<%
response.setIntHeader("Refresh", 5);
//response.setHeader("Refresh", "5; URL=http://localhost:8080/");
out.print("現在時刻：" + new Date());
%>
</body>
</html>