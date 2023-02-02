<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>リクエストパス</title>
</head>
<body>
<pre>
<%
out.println(request.getScheme());
out.println(request.getServerName());
out.println(request.getServerPort());
out.println(request.getRequestURL());
out.println(request.getRequestURI());
out.println(request.getContextPath());
out.println(request.getServletPath());
out.println(request.getQueryString());
out.println(request.getPathInfo());
// out.println(application.getRealPath(request.getRequestURI()));
%>
</pre>
</body>
</html>