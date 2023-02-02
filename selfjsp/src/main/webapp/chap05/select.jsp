<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:setDataSource var="db" dataSource="jdbc/selfjsp" />
<sql:query var="rs" dataSource="${db}">
  SELECT * FROM address ORDER BY id</sql:query>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<title>Databaseタグライブラリ</title>
</head>
<body>
<table class="table">
<thead>
<tr>
  <th>名前</th><th>住所</th><th>電話番号</th><th>メールアドレス</th>
</tr>
</thead>
<tbody>
<c:forEach var="row" items="${rs.rows}">
  <tr>
    <td>${row.name}</td>
    <td>${row.address}</td>
    <td>${row.tel}</td>
    <td>${row.email}</td>
  </tr>
</c:forEach>
</tbody>
</table>
</body>
</html>