<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ポストデータ</title>
</head>
<body>
<%
String animal = request.getParameter("animal");
switch(animal) {
    case "ham":
        out.println("つぶらな瞳がとっても可愛いですよね。");
        break;
    case "dog":
        out.println("古来からの人間の友です。");
        break;
    case "goki":
        out.println("そんな趣味があってもいいと思います。");
        break;
    default:
        out.println("？？？");
        break;
}
%>
</body>
</html>