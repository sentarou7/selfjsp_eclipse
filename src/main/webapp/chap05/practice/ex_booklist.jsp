<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<sql:setDataSource var="db" dataSource="jdbc/selfjsp" />
<sql:query var="rs" dataSource="${db}">
  SELECT * FROM book ORDER BY published DESC</sql:query>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<title>書籍情報の一覧表示</title>
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
<c:forEach var="row" items="${rs.rows}" varStatus="stt">
    <tr
        <c:if test="${stt.count % 2 == 0}">style="background-color:#FFff99;"</c:if>
    >
        <td>${fn:escapeXml(row.isbn)}</td>
        <td>${fn:escapeXml(row.title)}</td>
        <td>
        <fmt:formatNumber type="CURRENCY" currencySymbol="￥"
            groupingUsed="true" maxFractionDigits="0" value="${row.price}" />
        </td>
        <td>${fn:escapeXml(row.publish)}</td>
        <td>
        <fmt:formatDate pattern="yyyy年MM月dd日"
            value="${row.published}" />
        </td>
    </tr>
</c:forEach>
</tbody>
</table>
</body>
</html>