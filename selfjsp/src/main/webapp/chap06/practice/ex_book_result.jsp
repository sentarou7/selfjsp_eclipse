<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<title>書籍の検索</title>
</head>
<body>
<table class="table">
<thead>
<tr>
    <th>ISBNコード</th><th>書名</th><th>価格</th>
    <th>出版社</th><th>刊行年月日</th>
</tr>
</thead>
<tbody>
<c:forEach var="item" items="${requestScope['list']}">
    <tr>
        <td>${fn:escapeXml(item.isbn)}</td>
        <td>${fn:escapeXml(item.title)}</td>
        <td>${fn:escapeXml(item.price)}円</td>
        <td>${fn:escapeXml(item.publish)}</td>
        <td>${fn:escapeXml(item.published)}</td>
    </tr>
</c:forEach>
</tbody>
</table>
</body>
</html>