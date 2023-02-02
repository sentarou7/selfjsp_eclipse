package to.msn.wings.selfjsp.chap08;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletRequestEvent;
import jakarta.servlet.ServletRequestListener;
import jakarta.servlet.http.HttpServletRequest;

// @WebListener
public class RequestListener implements ServletRequestListener {
    @Override
    public void requestDestroyed(ServletRequestEvent ev) {
        ServletContext app = ev.getServletContext();
        HttpServletRequest req = (HttpServletRequest) ev.getServletRequest();
        app.log(req.getServletPath() + "にアクセスされました。");
    }

    public void requestInitialized(ServletRequestEvent ev) {
    }
}