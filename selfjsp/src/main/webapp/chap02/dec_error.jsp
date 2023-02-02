<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
public void repeat(String msg, int cnt) {
    for(int i = 0; i < cnt; i++) {
        out.println(msg);
    }
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>宣言部</title>
</head>
<body>
<% out.println(repeat("5回繰り返します<br />", 5)); %>
</body>
</html>