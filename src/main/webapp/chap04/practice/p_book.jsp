<%@ page contentType="text/html;charset=UTF-8"
    import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
    crossorigin="anonymous">
<title>結果セット</title>
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
Context context = new InitialContext();
DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/selfjsp");
try (Connection db = ds.getConnection()) {
    PreparedStatement ps = db.prepareStatement("SELECT * FROM book ORDER BY published DESC");
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
