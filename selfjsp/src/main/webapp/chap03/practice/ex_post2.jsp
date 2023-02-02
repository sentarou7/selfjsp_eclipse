<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ポストデータ</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String food = request.getParameter("food");
switch(food) {
    case "ラーメン":
        out.println("ぼくも大好きです。");
        break;
    case "カレーライス":
        out.println("まぁまぁですね。");
        break;
    case "納豆ごはん":
        out.println("この世の食べ物とも思えない。");
        break;
    default:
        out.println("？？？");
        break;
}
%>
</body>
</html>