<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>データの登録</title>
</head>
<body>
<form method="POST" action="p_insert_process.jsp">
<div>
  <label for="nam">名前：</label><br>
  <input id="nam" type="text" name="nam" size="15" maxlength="50">
</div>
<div>
  <label for="sex">性別：</label><br>
  <input id="sex" type="text" name="sex" size="3" maxlength="3">
</div>
<div>
  <label for="old">年齢：</label><br>
  <input id="old" type="text" name="old" size="3" maxlength="3">
</div>
<div>
  <label for="enter">入会日：</label><br>
  <input id="enter" type="text" name="enter" size="15" maxlength="50">
</div>
<div>
  <label for="memo">備考：</label><br>
  <input type="text" name="memo" size="50" maxlength="100">
</div>
<div>
  <input type="submit" value="登録">
  <input type="reset" value="クリア">
</div>
</form>
</body>
</html>