<%@ page contentType="text/html;charset=UTF-8"
    import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<title>結果セット</title>
</head>
<body>
<table class="table">
<thead>
<tr>
  <th>名前</th><th>住所</th><th>電話番号</th><th>メールアドレス</th>
</tr>
</thead>
<tbody>
<%
Context context = new InitialContext();
DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/selfjsp");
try (Connection db = ds.getConnection()) {
    PreparedStatement ps = db.prepareStatement("SELECT * FROM address ORDER BY id");
    ResultSet rs = ps.executeQuery();
    while(rs.next()) {
%>
<tr>
    <td><%=rs.getString("name") %></td>
    <td><%=rs.getString("address") %></td>
    <td><%=rs.getString("tel") %></td>
    <td><%=rs.getString("email") %></td>
</tr>
<%
    }
}
%>
</tbody>
</table>
</body>
</html>