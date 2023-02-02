package to.msn.wings.selfjsp.chap08;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class InitParamListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent ev) {
        ServletContext app = ev.getServletContext();
        app.setAttribute("book.title", app.getInitParameter("book.title"));
    }

    public void contextDestroyed(ServletContextEvent ev) {
    }
}
