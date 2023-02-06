<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP＆サーブレット連携</title>
</head>
<body>
<form method="POST" action="BmiServlet">
    <label for="height">身長：</label>
    <input id="height" type="text" name="height" size="4">（m）<br>
    <label for="weight">体重：</label>
    <input id="weight" type="text" name="weight" size="4">（kg）
    <input type="submit" value="計算">
</form>
</body>
</html>
