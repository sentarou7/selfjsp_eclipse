<%@ page contentType="text/html;charset=UTF-8" import="java.net.*" %>
<%
String email = "";
Cookie[] cookies = request.getCookies();
if(cookies != null){
    for(Cookie cook : cookies){
        if(cook.getName().equals("email")){
        // email = cook.getValue();
        email = URLDecoder.decode(cook.getValue(), "UTF-8");
        break;
        }
    }
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>クッキー情報</title>
</head>
<body>
<form method="POST" action="cookie2.jsp">
メールアドレス：
<input type="text" name="email" size="40" value="<%=email %>">
<input type="submit" value="送信">
</form>
</body>
</html>