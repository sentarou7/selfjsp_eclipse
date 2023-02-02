<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<title>ヘッダー情報</title>
</head>
<body>
<table class="table">
<%
Enumeration<String> headers = request.getHeaderNames();
while(headers.hasMoreElements()){
    String name = headers.nextElement();
%>
    <tr>
    <th><%=name %></th>
    <td><%=request.getHeader(name) %></td>
    </tr>
<% } %>
</table>
</body>
</html>