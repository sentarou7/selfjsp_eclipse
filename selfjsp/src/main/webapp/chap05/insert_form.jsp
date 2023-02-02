<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>データの登録</title>
</head>
<body>
<form method="POST" action="insert_process.jsp">
<div>
  <label for="name">名前：</label><br>
  <input id="name" type="text" name="name" size="15" maxlength="50">
</div>
<div>
  <label for="address">住所：</label><br>
  <input id="address" type="text" name="address" size="35" maxlength="170">
</div>
<div>
  <label for="tel">電話番号：</label><br>
  <input id="tel" type="text" name="tel" size="20" maxlength="20">
</div>
<div>
  <label for="email">メールアドレス：</label><br>
  <input id="email" type="text" name="email" size="50" maxlength="100">
</div>
<div>
  <input type="submit" value="登録">
  <input type="reset" value="クリア">
</div>
</form>
</body>
</html>
