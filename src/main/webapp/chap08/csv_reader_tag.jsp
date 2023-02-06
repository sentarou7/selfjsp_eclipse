<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="win" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<title>カスタムタグ</title>
</head>
<body>
<win:CsvReader path="/WEB-INF/data/data.txt" delimiter="\t" />
</body>
</html>