package to.msn.wings.selfjsp.chap06;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/chap06/BmiServlet")
public class BmiServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		double h = Double.parseDouble(request.getParameter("height"));
		double w = Double.parseDouble(request.getParameter("weight"));
		double bmi = w / (h * h);
		request.setAttribute("bmi", bmi);
		if (bmi < 18.5) {
			request.setAttribute("rank", "やせ気味");
		} else if (bmi < 25) {
			request.setAttribute("rank", "標準");
		} else {
			request.setAttribute("rank", "肥満気味");
		}
		this.getServletContext().getRequestDispatcher("/chap06/bmi_result.jsp").forward(request, response);
	}
}
