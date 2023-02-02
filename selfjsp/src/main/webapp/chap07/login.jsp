<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>フォーム認証</title>
</head>
<body>
<form method="POST" action="j_security_check">
<!-- <form method="POST" action="/selfjsp/AuthServlet"> -->
<div>
    <label for="name">ユーザー名：</label><br>
    <input id="name" type="text" name="j_username" size="15">
</div>
<div>
    <label for="password">パスワード：</label><br>
    <input id="password" type="password" name="j_password" size="15">
</div>
<div>
    <input type="submit" value="ログイン">
    <input type="reset" value="取消">
</div>
</form>
</body>
</html>
