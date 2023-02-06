<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<title>ヘッダー情報</title>
</head>
<body>
<table class="table">
<c:forEach var="name" items="${pageContext.request.headerNames}">
    <tr valign="top">
        <th>${name}</th>
        <td>${header[name]}</td>
    </tr>
</c:forEach>
</table>
</body>
</html>
