<%@ page contentType="text/html;charset=UTF-8" %>
<%! String msg = "こんにちは、世界！"; %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><%=msg %></title>
</head>
<body>
<%-- 指定された文字列を繰り返し表示 --%>
<%
for(int i = 0; i < 5; i++) {
    out.println(msg + "<br>");
}
%>
<jsp:include page="include.jsp" />    
</body>
</html>