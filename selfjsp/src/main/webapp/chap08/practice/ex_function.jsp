<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="win" uri="https://wings.msn.to/WingsTagLibs-1.0" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カスタムタグ</title>
</head>
<body>
${win:repeatString("こんにちは！", 5, "<br>")}
</body>
</html>