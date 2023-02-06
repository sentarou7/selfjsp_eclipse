package to.msn.wings.selfjsp.chap06;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/chap06/PostServlet")
public class PostServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html><html><head><meta charset='UTF-8'>");
        out.println("<title>ポストデータ</title>");
        out.println("</head><body>");
        String animal = request.getParameter("animal");
        switch (animal) {
            case "ham":
                out.println("つぶらな瞳がとっても可愛いですよね。");
                break;
            case "dog":
                out.println("古来からの人間の友です。");
                break;
            case "goki":
                out.println("そんな趣味があってもいいと思います。");
                break;
            default:
                out.println("？？？");
                break;
        }
        out.println("</body></html>");
    }
}
