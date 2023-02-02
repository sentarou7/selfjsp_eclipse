<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<title>JavaBeans連携</title>
</head>
<body>
<table class="table">
<thead>
<tr>
  <th>名前</th><th>住所</th><th>電話番号</th><th>メールアドレス</th>
</tr>
</thead>
<tbody>
<c:forEach var="item" items="${requestScope['list']}">
        <tr>
            <td>${fn:escapeXml(item.name)}</td>
            <td>${fn:escapeXml(item.address)}</td>
            <td>${fn:escapeXml(item.tel)}</td>
            <td>${fn:escapeXml(item.email)}</td>
        </tr>
</c:forEach>
</tbody>
</table>
</body>
</html>
