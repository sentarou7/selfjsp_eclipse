<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="win" uri="https://wings.msn.to/WingsTagLibs-1.0" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<title>カスタムタグ</title>
</head>
<body>
<%-- 
<ul>
<win:ServletInfo os.name="true" os.version="true"
    java.home="true" file.separator="true" path.separator="true"
    java.class.path="false" user.home="false" />
</ul>
 --%>
<table class="table">
<win:ServletInfo os.name="true" os.version="true"
    java.home="true" file.separator="true" path.separator="true"
    java.class.path="false" user.home="false">
    <jsp:attribute name="row">
    <tr>
        <th>${name}</th>
        <td>${value}</td>
    </tr>
    </jsp:attribute>
</win:ServletInfo>
</table>
</body>
</html>