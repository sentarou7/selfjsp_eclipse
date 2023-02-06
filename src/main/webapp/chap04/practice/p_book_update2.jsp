<%@ page contentType="text/html;charset=UTF-8"
    import="java.sql.*, javax.naming.*, javax.sql.*, java.text.*" %>
<%
request.setCharacterEncoding("UTF-8");
int cnt = Integer.parseInt(request.getParameter("cnt"));
    Context context = new InitialContext();
    DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/selfjsp");
    try (Connection db = ds.getConnection()) {
    db.setAutoCommit(false);
    try(PreparedStatement ps = db.prepareStatement("UPDATE book SET title=?, price=?, publish=?, published=? WHERE isbn=?")) {
      for(int i=1; i <= cnt; i++) {
        ps.setString(1, request.getParameter("title" + i));
        ps.setString(2, request.getParameter("price" + i));
        ps.setString(3, request.getParameter("publish" + i));
        ps.setString(4, request.getParameter("published" + i));
        ps.setString(5, request.getParameter("isbn" + i));
        ps.executeUpdate();
    }
    db.commit();
    response.sendRedirect("p_book_update1.jsp");
    } catch(SQLException e) {
        out.println("エラーメッセージ：" + e.getMessage());
        db.rollback();
    }
}
%>