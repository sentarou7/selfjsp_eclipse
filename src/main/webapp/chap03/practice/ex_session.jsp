<%@ page contentType="text/html;charset=UTF-8" %>
<%
Integer cnt = (Integer)session.getAttribute("cnt");
if(cnt == null){
    session.setAttribute("cnt", 1);
    cnt = 1;
}else{
    cnt++;
    session.setAttribute("cnt", cnt);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>セッション情報</title>
</head>
<body>
アクセス回数：<%=cnt %>回
</body>
</html>