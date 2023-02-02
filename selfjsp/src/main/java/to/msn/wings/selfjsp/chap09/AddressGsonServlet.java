package to.msn.wings.selfjsp.chap09;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.google.gson.Gson;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import to.msn.wings.selfjsp.chap06.Address;

@WebServlet("/chap09/AddressGsonServlet")
public class AddressGsonServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Address addr = new Address();
        try {
        Context context = new InitialContext();
        DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/selfjsp");
        try(Connection db = ds.getConnection()) {
            PreparedStatement ps = db.prepareStatement(
            "SELECT * FROM address WHERE id = ?");
            ps.setString(1, request.getParameter("id"));
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
            addr.setId(rs.getInt("id"));
            addr.setName(rs.getString("name"));
            addr.setAddress(rs.getString("address"));
            addr.setTel(rs.getString("tel"));
            addr.setEmail(rs.getString("email"));
            }
        }
        } catch (NamingException | SQLException e) {
        e.printStackTrace();
        }
        Gson gson = new Gson();
        response.setContentType("application/json; charset=UTF-8");
        response.getWriter().print(gson.toJson(addr));
    }
}