package to.msn.wings.selfjsp.chap08;

import java.io.IOException;

// import jakarta.servlet.DispatcherType;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
// import jakarta.servlet.annotation.WebFilter;
// import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;

/*
@WebFilter(dispatcherTypes = { 
    DispatcherType.REQUEST,
    DispatcherType.FORWARD
    },
    initParams = {
        @WebInitParam(name = "encoding", value = "UTF-8")
    },
    urlPatterns = "/*"
)
*/

public class EncodingFilter extends HttpFilter {
    private String encoding = null;

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
        throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        req.setCharacterEncoding(this.encoding);
        chain.doFilter(request, response);
    }

    @Override
    public void init(FilterConfig fConfig) throws ServletException {
        this.encoding = fConfig.getInitParameter("encoding");
    }

    @Override
    public void destroy() {
    }
}
