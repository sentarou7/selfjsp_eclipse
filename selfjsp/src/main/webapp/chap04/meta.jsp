<%@ page contentType="text/html;charset=UTF-8"
    import="java.sql.*,javax.naming.*,javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<title>メタデータ</title>
</head>
<body>
<dl>
<%
Context ctx=new InitialContext();
DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/selfjsp");
try (Connection db=ds.getConnection()) {
    DatabaseMetaData meta = db.getMetaData();
    ResultSet rs1 = meta.getTables("selfjsp", "%", "%", null);
    while(rs1.next()){
        String table = rs1.getString("TABLE_NAME");
        %>
        <dt><%=table %>テーブル</dt>
        <table class="table">
        <thead>
            <tr>
                <th>フィールド名</th><th>データ型</th><th>桁数</th>
            </tr>
        </thead>
        <tbody>
<%
        ResultSet rs2 = meta.getColumns("selfjsp", null, table, "%");
        while(rs2.next()){
 %>
            <tr>
                <td><%=rs2.getString("COLUMN_NAME") %></td>
                <td><%=rs2.getString("TYPE_NAME") %></td>
                <td class="text-end"><%=rs2.getString("COLUMN_SIZE") %></td>
            </tr>
<%
    }
%>
        </tbody>
        </table>
<%
    }
}
%>
</dl>
</body>
</html>
