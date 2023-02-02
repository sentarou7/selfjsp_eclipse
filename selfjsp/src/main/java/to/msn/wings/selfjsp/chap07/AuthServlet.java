package to.msn.wings.selfjsp.chap07;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AuthServlet")
public class AuthServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        String user = request.getParameter("j_username");
        String passwd = request.getParameter("j_password");

        try {
            request.login(user, passwd);
            out.println("こんにちは、" + request.getRemoteUser() + "さん！");
        } catch (ServletException e) {
            e.printStackTrace();
            out.println("認証済みであるか、ユーザー名／パスワードが間違っています...");
        }
    }
}
