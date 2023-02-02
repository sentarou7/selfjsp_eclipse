<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="win" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カスタムタグ</title>
</head>
<body>
<win:RepeatString str="こんにちは！" count="5" delimiter="<br>" />
</body>
</html>