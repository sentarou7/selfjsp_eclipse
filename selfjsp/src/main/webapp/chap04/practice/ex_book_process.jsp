<%@ page contentType="text/html;charset=UTF-8"
    import="java.sql.*, javax.naming.*, javax.sql.*" %>
<%
request.setCharacterEncoding("UTF-8");
Context context = new InitialContext();
DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/selfjsp");
try (Connection db = ds.getConnection()) {
    PreparedStatement ps = db.prepareStatement("INSERT INTO book(isbn, title, price, publish, published) VALUES(? ,? ,? ,?, ?)");
    ps.setString(1, request.getParameter("isbn"));
    ps.setString(2, request.getParameter("title"));
    ps.setString(3, request.getParameter("price"));
    ps.setString(4, request.getParameter("publish"));
    ps.setString(5, request.getParameter("published"));
    ps.executeUpdate();
}
response.sendRedirect("ex_book_form.jsp");
%>
