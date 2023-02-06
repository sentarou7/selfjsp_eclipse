<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" %>
<ul>
<%
Enumeration<String> keys = request.getParameterNames();
while(keys.hasMoreElements()){
    String name = keys.nextElement();
    out.println("<li>"  + name + ":" + request.getParameter(name) + "</li>");
}
%>
</ul>