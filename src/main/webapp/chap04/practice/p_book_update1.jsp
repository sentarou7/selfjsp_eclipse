<%@ page contentType="text/html;charset=UTF-8"
    import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<title>トランザクション</title>
</head>
<body>
<form method="POST" action="p_book_update2.jsp">
<input type="submit" value="更新">
<table class="table">
<thead>
<tr>
    <th>書名</th><th>価格</th><th>出版社</th><th>刊行年月日</th>
</tr>
</thead>
<tbody>
<%
int cnt = 0;
Context context = new InitialContext();
DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/selfjsp");
try (Connection db = ds.getConnection()) {
    PreparedStatement ps = db.prepareStatement("SELECT * FROM book ORDER BY published DESC");
    ResultSet rs = ps.executeQuery();
    while(rs.next()) {
        cnt++;
%>
    <tr>
        <td>
        <input type="hidden" name="isbn<%=cnt %>"
            value="<%=rs.getString("isbn")%>">
        <input type="text" name="title<%=cnt %>" size="50"
            value="<%=rs.getString("title")%>">
        </td>
        <td>
        <input type="text" name="price<%=cnt %>" size="5"
            value="<%=rs.getString("price")%>">
        </td>
        <td>
        <input type="text" name="publish<%=cnt %>"
            value="<%=rs.getString("publish")%>">
        </td>
        <td>
        <input type="text" name="published<%=cnt %>"
            value="<%=rs.getString("published")%>">
        </td>
    </tr>
<%
    }
}
%>
</tbody>
</table>
<input type="hidden" name="cnt" value="<%=cnt %>">
</form>
</body>
</html>