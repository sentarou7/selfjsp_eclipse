package to.msn.wings.selfjsp.chap09;

import java.io.IOException;

import com.google.gson.Gson;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import to.msn.wings.selfjsp.chap06.BookDAO;

@WebServlet("/chap09/GsonServlet")
public class GsonServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        Gson gson = new Gson();
        BookDAO dao = new BookDAO();
        String json = gson.toJson(dao.selectBook(request.getParameter("keywd")));
        response.setContentType("application/json; charset=UTF-8");
        response.getWriter().print(json);
        
        /*
        Type listType = new TypeToken<List<Book>>(){}.getType();
        List<Book> list = gson.fromJson("[{\"isbn\":\"978-4-7981-6751-0\",\"title\":\"Spring Boot入門 \",\"price\":1600,\"publish\":\"翔泳社\",\"published\":\"2020-05-31\"}]", listType);
        request.setAttribute("list", list);
        this.getServletContext().getRequestDispatcher("/chap06/practice/ex_book_result.jsp").forward(request,response);
        */
    }
}