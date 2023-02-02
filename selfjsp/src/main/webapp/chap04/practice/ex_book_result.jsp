<%@ page contentType="text/html;charset=UTF-8"
    import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<title>書籍の検索</title>
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
<%
request.setCharacterEncoding("UTF-8");
Context context = new InitialContext();
DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/selfjsp");
try (Connection db = ds.getConnection()) {
    PreparedStatement ps = db.prepareStatement("SELECT * FROM book WHERE title LIKE ?");
    ps.setString(1, "%" + request.getParameter("title") + "%");
    ResultSet rs = ps.executeQuery();
    while(rs.next()) {
%>
    <tr>
        <td><%=rs.getString("isbn") %></td>
        <td><%=rs.getString("title") %></td>
        <td><%=rs.getString("price") %>円</td>
        <td><%=rs.getString("publish") %></td>
        <td><%=rs.getString("published") %></td>
    </tr>
<%
    }
}
%>
</tbody>
</table>
</body>
</html>