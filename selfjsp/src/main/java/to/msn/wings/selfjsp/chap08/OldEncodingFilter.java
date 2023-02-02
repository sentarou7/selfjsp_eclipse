package to.msn.wings.selfjsp.chap08;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;

/*
@WebFilter(
    urlPatterns = { "/*" },
    // servletNames = { "Quest5Servlet" },
    initParams ={
        @WebInitParam(name = "encoding", value = "UTF-8")
    },
    dispatcherTypes = {
        DispatcherType.FORWARD,
        DispatcherType.REQUEST,
        DispatcherType.INCLUDE
    }
)
*/

public class OldEncodingFilter implements Filter {

    private String encoding = null;

    @Override
    public void init(FilterConfig config) throws ServletException {
        this.encoding = config.getInitParameter("encoding");
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp,
        FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)req;
        request.setCharacterEncoding(this.encoding);
        chain.doFilter(req, resp);
    }

    @Override
    public void destroy() { }
}
