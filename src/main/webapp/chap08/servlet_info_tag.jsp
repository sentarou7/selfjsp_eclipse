<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="win" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カスタムタグ</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
    crossorigin="anonymous">
</head>
<body>
<%-- 
<ul>
<win:ServletInfo os.name="true" os.version="true"
    java.home="true" file.separator="true" path.separator="true"
    java.class.path="false" user.home="false" >
        <li>${name}（${value})</li>
</win:ServletInfo>
</ul>
 --%>
 
<table class="table">
<win:ServletInfo os.name="true" os.version="true"
    java.home="true" file.separator="true" path.separator="true"
    java.class.path="false" user.home="false">
    <tr>
        <th>${name}</th>
        <td>${value}</td>
    </tr>
</win:ServletInfo>
</table>
</body>
</html>