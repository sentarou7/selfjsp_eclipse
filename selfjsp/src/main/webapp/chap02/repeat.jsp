<%@ page contentType="text/html;charset=UTF-8" %>
<%!
public String repeat(String msg, int cnt) {
    String result = "";
    for(int i = 0; i < cnt; i++) {
        result += msg;
    }
    return result;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>宣言部</title>
</head>
<body>
<% out.println(repeat("5回繰り返します<br>", 5)); %>
</body>
</html>