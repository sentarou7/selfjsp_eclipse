<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>書籍情報の登録</title>
</head>
<body>
<form method="POST" action="ex_book_process.jsp">
<div>
    <label for="isbn">ISBNコード：</label><br>
    <input id="isbn" type="text" name="isbn" size="25" maxlength="30">
</div>
<div>
    <label for="title">書名：</label><br>
    <input id="title" type="text" name="title" size="35" maxlength="170">
</div>
<div>
    <label for="price">価格：</label><br>
    <input id="price" type="text" name="price" size="5" maxlength="5">円
</div>
<div>
    <label for="publish">出版社：</label><br>
    <input id="publish" type="text" name="publish" size="15" maxlength="20">
</div>
<div>
    <label for="published">配本日：</label><br>
    <input id="published" type="text" name="published" size="15" maxlength="15">
</div>
<div>
    <input type="submit" value="登録">
    <input type="reset" value="クリア">
</div>
</form>
</body>
</html>
