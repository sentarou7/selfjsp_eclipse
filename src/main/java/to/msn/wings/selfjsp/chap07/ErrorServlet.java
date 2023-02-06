package to.msn.wings.selfjsp.chap07;

import java.io.IOException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ErrorServlet")
public class ErrorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServletContext application = this.getServletContext();
        StringBuffer buf = new StringBuffer();
        buf.append(new java.util.Date());
        buf.append(System.getProperty("line.separator"));
        buf.append(request.getAttribute("jakarta.servlet.error.request_uri"));
        buf.append(System.getProperty("line.separator"));
        buf.append(request.getAttribute("jakarta.servlet.error.message"));
        application.log(buf.toString());
        response.sendRedirect(request.getContextPath() + "/error.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
