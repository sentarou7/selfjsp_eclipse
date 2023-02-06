package to.msn.wings.selfjsp.chap06;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/chap06/SelectServlet")
public class SelectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AddressDAO dao = new AddressDAO();
        request.setAttribute("list", dao.selectAll());
        this.getServletContext().getRequestDispatcher("/chap06/select.jsp").forward(request, response);
    }
}
