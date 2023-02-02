package to.msn.wings.selfjsp.chap06;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/chap06/practice/BookServlet")
public class BookServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        BookDAO dao = new BookDAO();
        List<Book> list = dao.selectBook(request.getParameter("title"));
        request.setAttribute("list", list);
        this.getServletContext().getRequestDispatcher("/chap06/practice/ex_book_result.jsp").forward(request, response);
    }
}
