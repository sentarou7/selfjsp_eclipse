<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ヘッダー情報</title>
</head>
<body>
<% if(request.getHeader("user-agent").indexOf("Trident") != -1){ %>
    Internet Explorerは、未対応です。
<% } else { %>
    お使いのブラウザーは、対応可能です。
<% } %>
</body>
</html>