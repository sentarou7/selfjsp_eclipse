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
<%
Context context = new InitialContext();
DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/selfjsp");
try (Connection db = ds.getConnection()) {
    PreparedStatement ps = db.prepareStatement("SELECT * FROM address ORDER BY id");
    ResultSet rs = ps.executeQuery();
    ResultSetMetaData meta = rs.getMetaData();
    out.println("<tr>");
    for(int i = 1;i <= meta.getColumnCount(); i++) {
        out.println("<th>" + meta.getColumnName(i) + "</th>");
    }
    out.println("</tr>");
    out.println("</thead>");
    out.println("<tbody>");
    while(rs.next()) {
        out.println("<tr>");
        for(int i = 1;i <= meta.getColumnCount(); i++) {
        out.println("<td>" + rs.getString(i) + "</td>");
        }
        out.println("</tr>");
    }
}
%>
</tbody>
</table>
</body>
</html>
