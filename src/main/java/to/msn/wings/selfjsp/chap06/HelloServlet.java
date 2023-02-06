package to.msn.wings.selfjsp.chap06;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/chap06/HelloServlet")
// @WebServlet(urlPatterns="/chap06/HelloServlet", loadOnStartup=1)
public class HelloServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();        
        out.println("<!DOCTYPE html><html><head><meta charset='UTF-8'>");
        out.println("<title>スクリプトレット</title>");
        out.println("</head><body>");
        for (int i = 0; i < 5; i++) {
        out.println("こんにちは、世界！<br>");
        }
        out.println("</body></html>");
    }
}
