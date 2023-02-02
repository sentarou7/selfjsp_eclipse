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

public class AddressDAO {
    public List<Address> selectAll() {
        List<Address> list = new ArrayList<>();
        try {
            Context context = new InitialContext();
            DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/selfjsp");
            try (Connection db = ds.getConnection()) {
                PreparedStatement ps = db.prepareStatement("SELECT * FROM address ORDER BY id");
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    Address addr = new Address();
                    addr.setId(rs.getInt("id"));
                    addr.setName(rs.getString("name"));
                    addr.setAddress(rs.getString("address"));
                    addr.setTel(rs.getString("tel"));
                    addr.setEmail(rs.getString("email"));
                    list.add(addr);
                }
            }
        } catch (NamingException | SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
