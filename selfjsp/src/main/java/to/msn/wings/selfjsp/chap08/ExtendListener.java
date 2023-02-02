package to.msn.wings.selfjsp.chap08;

import jakarta.servlet.Servlet;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRegistration;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class ExtendListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent ev) {
        ServletContext app = ev.getServletContext();
        Servlet servlet = null;
        try {
            servlet = app.createServlet(to.msn.wings.selfjsp.chap08.MyServlet.class);
        } catch (ServletException e) {
            e.printStackTrace();
        }
        ServletRegistration reg = app.addServlet("MyServlet", servlet);
        reg.addMapping("/chap08/MyServlet");
    }

    @Override
    public void contextDestroyed(ServletContextEvent ev) {
    }
}
