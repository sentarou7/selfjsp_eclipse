package to.msn.wings.selfjsp.chap06;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class BookDAO {

    public List<Book> selectBook(String title) {
        List<Book> list = new ArrayList<>();
        try {
            Context context = new InitialContext();
            DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/selfjsp");
            try (Connection db = ds.getConnection()) {
                PreparedStatement ps = db.prepareStatement("SELECT * FROM book WHERE title LIKE ?");
                ps.setString(1, "%" + title + "%");
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    Book bok = new Book();
                    bok.setIsbn(rs.getString("isbn"));
                    bok.setTitle(rs.getString("title"));
                    bok.setPrice(rs.getInt("price"));
                    bok.setPublish(rs.getString("publish"));
                    bok.setPublished(rs.getString("published"));
                    list.add(bok);
                }
            }
        } catch (NamingException | SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
