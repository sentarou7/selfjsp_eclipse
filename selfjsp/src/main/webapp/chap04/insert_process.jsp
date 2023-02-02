<%@ page contentType="text/html;charset=UTF-8"
    import="java.sql.*, javax.naming.*, javax.sql.*" %>
<%
request.setCharacterEncoding("UTF-8");
Context context = new InitialContext();
DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/selfjsp");
try (Connection db = ds.getConnection()) {
    PreparedStatement ps = db.prepareStatement("INSERT INTO address(name, address, tel, email) VALUES(? ,? ,? ,?)");
    ps.setString(1, request.getParameter("name"));
    ps.setString(2, request.getParameter("address"));
    ps.setString(3, request.getParameter("tel"));
    ps.setString(4, request.getParameter("email"));
    ps.executeUpdate();
}
response.sendRedirect("insert_form.jsp");
%>