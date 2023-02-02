package to.msn.wings.selfjsp.chap06;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(
    urlPatterns = "/chap06/InitParamServlet",
    initParams = {
        @WebInitParam(name = "path", value = "/WEB-INF/data/my.log")
    }
)
public class InitParamServlet extends HttpServlet {
    private String path = null;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        this.path = config.getInitParameter("path");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.log(request);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html><html><head><meta charset='UTF-8'>");
        out.println("<title>ログの記録</title>");
        out.println("</head><body>");
        out.println("ログを記録しました。");
        out.println("</body></html>");
    }

    private void log(HttpServletRequest request) throws IOException {
        ServletContext application = this.getServletContext();
        StringBuffer builder = new StringBuffer();
        SimpleDateFormat fmt = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        builder.append(fmt.format(new Date()));
        builder.append("\t");
        builder.append(request.getServletPath());
        builder.append("\t");
        builder.append(request.getHeader("referer"));
        builder.append("\t");
        builder.append(request.getHeader("user-agent"));
        builder.append("\t");
        try (BufferedWriter buf = Files.newBufferedWriter(Paths.get(application.getRealPath(this.path)),
            StandardCharsets.UTF_8)) {
            buf.write(builder.toString());
            buf.newLine();
        }
    }
}
