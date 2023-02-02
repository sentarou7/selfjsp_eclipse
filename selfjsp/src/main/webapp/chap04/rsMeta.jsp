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
