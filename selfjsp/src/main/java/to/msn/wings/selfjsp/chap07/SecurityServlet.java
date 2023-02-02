package to.msn.wings.selfjsp.chap07;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.HttpConstraint;
import jakarta.servlet.annotation.ServletSecurity;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@ServletSecurity(@HttpConstraint(rolesAllowed = { "admin-gui", "manager-gui" }))
@WebServlet(name = "SecurityServlet", urlPatterns = "/chap07/SecurityServlet")
public class SecurityServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html><html><head><meta charset='UTF-8'>");
        out.println("<title>セキュリティ</title>");
        out.println("</head><body>");
        out.println("<p>アクセス規則をアノテーションで記述</p>");
        out.println("</body></html>");
    }
}
