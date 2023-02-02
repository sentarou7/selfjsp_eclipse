package to.msn.wings.selfjsp.chap08;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;
// import jakarta.servlet.annotation.WebListener;

// @WebListener
public class SessListener implements HttpSessionListener {

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        ServletContext app = se.getSession().getServletContext();
        app.log("セッションを開始しました。");
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        ServletContext app = se.getSession().getServletContext();
        app.log("セッションを終了しました。");
    }
}
