<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ファイルのアップロード</title>
</head>
<body>
<form method="POST" enctype="multipart/form-data" action="UploadServlet">
<input type="file" name="file" size="75" />
<input type="submit" value="アップロード">
</form>
</body>
</html>