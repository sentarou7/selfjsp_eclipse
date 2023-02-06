<%@ page contentType="text/html;charset=UTF-8"
    import="java.sql.*,javax.naming.*,javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メタデータ</title>
</head>
<body>
<form method="POST" action="ex_meta_result.jsp">
<select name="table">
<%
Context ctx=new InitialContext();
DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/selfjsp");
try (Connection db=ds.getConnection()) {
    DatabaseMetaData meta = db.getMetaData();
    ResultSet rs = meta.getTables("selfjsp", "%", "%", null);
    while(rs.next()){
        String table = rs.getString("TABLE_NAME");
        out.println("<option value='" + table + "'>" + table + "</option>");
    }
}
%>
</select>
<input type="submit" value="ダウンロード">
</form>
</body>
</html>
