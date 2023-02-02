<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ポストデータ</title>
</head>
<body>
<form method="POST" action="PostServlet">
あなたの好きな動物は？
<select name="animal">
    <option value="ham">ハムスター</option>
    <option value="dog">イヌ</option>
    <option value="goki">ゴキブリ</option>
</select>
<input type="submit" value="送信" />
</form>
</body>
</html>
