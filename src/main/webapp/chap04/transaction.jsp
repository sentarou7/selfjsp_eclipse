<%@ page contentType="text/html;charset=UTF-8"
    import="java.sql.*, javax.naming.*, javax.sql.*" %>
<%
Context context = new InitialContext();
DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/selfjsp");
try (Connection db = ds.getConnection()) {
	db.setAutoCommit(false);
	try(
		PreparedStatement ps1 = db.prepareStatement("INSERT INTO book(isbn, title, price, publish, published) VALUES('978-4-7981-5382-7', '独習C# 新版', 3600, '翔泳社', '2018-10-15')");
		PreparedStatement ps2 = db.prepareStatement("INSERT INTO book(isbn, title, price, publish, published) VALUES('978-4-7981-5382-7', '独習C# 新版', 3600, '翔泳社', '2018-10-15')")
	) {
		ps1.executeUpdate();
		ps2.executeUpdate();
		db.commit();
	} catch(SQLException e) {
		db.rollback();
		out.println("エラーメッセージ：" + e.getMessage());
	}
}
%>
