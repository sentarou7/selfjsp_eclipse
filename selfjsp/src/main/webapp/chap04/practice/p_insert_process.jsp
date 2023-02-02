<%@ page contentType="text/html;charset=UTF-8"
    import="java.sql.*, javax.naming.*, javax.sql.*" %>
<%
request.setCharacterEncoding("UTF-8");
Context context = new InitialContext();
DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/selfjsp");
try (Connection db = ds.getConnection()) {
    PreparedStatement ps = db.prepareStatement("INSERT INTO member(nam, sex, old, enter, memo) VALUES(? ,? ,? ,? ,?)");
    ps.setString(1, request.getParameter("nam"));
    ps.setString(2, request.getParameter("sex"));
    ps.setString(3, request.getParameter("old"));
    ps.setString(4, request.getParameter("enter"));
    ps.setString(5, request.getParameter("memo"));
    ps.executeUpdate();
}
response.sendRedirect("p_insert_form.jsp");
%>
