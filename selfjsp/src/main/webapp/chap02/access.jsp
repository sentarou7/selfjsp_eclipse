<%@ page contentType="text/html;charset=UTF-8" %>
<%! int i = 0; %>
<%
int tmp = i + 1;
Thread.sleep(3000);
i = tmp;
out.println(i + "回目のアクセスです");
%>