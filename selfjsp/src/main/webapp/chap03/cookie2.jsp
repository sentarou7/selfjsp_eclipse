<%@ page contentType="text/html;charset=UTF-8" import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>クッキー情報</title>
</head>
<body>
<%
//Cookie cook = new Cookie("email", request.getParameter("email"));
request.setCharacterEncoding("UTF-8");
String value = URLEncoder.encode(request.getParameter("email"), "UTF-8");
Cookie cook = new Cookie("email", value);
cook.setMaxAge(60 * 60 * 24 * 180);
response.addCookie(cook);
%>
クッキーが保存されました。
</body>
</html>