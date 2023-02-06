package to.msn.wings.selfjsp.chap06;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/chap06/BmiModelServlet")
public class BmiModelServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Bmi bmi = new Bmi();
        bmi.setHeight(Double.parseDouble(request.getParameter("height")));
        bmi.setWeight(Double.parseDouble(request.getParameter("weight")));
        request.setAttribute("bmi", bmi);
        this.getServletContext().getRequestDispatcher("/chap06/bmi_model_result.jsp").forward(request, response);
    }
}
