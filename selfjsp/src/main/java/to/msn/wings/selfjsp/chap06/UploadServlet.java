package to.msn.wings.selfjsp.chap06;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@MultipartConfig(location = "C:/tmp/")
@WebServlet("/chap06/UploadServlet")
public class UploadServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Part part = request.getPart("file");
        String name = part.getSubmittedFileName();
        if (this.isValidFile(name)) {
        	System.out.println("★:"+ getServletContext().getRealPath("/WEB-INF/data") );
            part.write(getServletContext().getRealPath("/WEB-INF/data") + "/" + name);
            response.sendRedirect("upload.jsp");
        } else {
            response.getWriter().println("Invalid file is uploaded.");
        }
    }

    private boolean isValidFile(String name) {
        if (name != null) {
            List<String> perms = List.of("gif", "jpg", "jpeg", "png");
            String[] names = name.split("\\.");
            return perms.contains(names[names.length - 1]);
        }
        return false;
    }
}
