<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>書籍の検索</title>
</head>
<body>
<form method="POST" action="/selfjsp/chap06/practice/BookServlet">
<label for="title">書名：</label>
<input id="title" type="text" name="title" size="20">
<input type="submit" value="検索">
</form>
</body>
</html>