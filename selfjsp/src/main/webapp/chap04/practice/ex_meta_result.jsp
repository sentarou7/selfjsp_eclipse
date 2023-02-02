<%@ page contentType="application/octet-stream;charset=UTF-8"
    import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*" %><%
response.setHeader("Content-Disposition", "attachment; filename=dl.txt");
String table = request.getParameter("table").replace("'", "''");
Context context = new InitialContext();
DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/selfjsp");
try (Connection db = ds.getConnection()) {
    PreparedStatement ps = db.prepareStatement("SELECT * FROM " + table);
    ResultSet rs = ps.executeQuery();
    ResultSetMetaData meta = rs.getMetaData();
    for(int i = 1;i <= meta.getColumnCount(); i++) {
        out.print(meta.getColumnName(i) + "\t");
    }
    out.print("\r\n");
    while(rs.next()) {
        for(int i = 1;i <= meta.getColumnCount(); i++) {
        out.print(rs.getString(i) + "\t");
        }
        out.print("\r\n");
    }
}
%>