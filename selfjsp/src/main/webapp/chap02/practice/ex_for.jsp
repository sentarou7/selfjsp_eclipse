<%@ page contentType="text/html;charset=UTF-8" %>
<%! String title = "独習サーブレット＆JSP"; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=title %></title>
</head>
<body>
<%
for(int i = 0; i < 5; i++) {
    out.println(title + "<br>");
}
%>
</body>
</html>