package to.msn.wings.selfjsp.chap08;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.jsp.JspContext;
import jakarta.servlet.jsp.JspException;
// import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.DynamicAttributes;
import jakarta.servlet.jsp.tagext.JspFragment;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class ServletInfoTag extends SimpleTagSupport implements DynamicAttributes {
    private JspFragment row;

    public void setRow(JspFragment row) {
        this.row = row;
    }

    private Map<String, String> map;

    public ServletInfoTag() {
        map = new HashMap<>();
    }

    @Override
    public void doTag() throws JspException, IOException {
        JspContext context = getJspContext();

        // 動的属性の場合        
        // JspWriter out = context.getOut(); for (String name : map.keySet()) { if
        // (map.get(name).equals("true")) { out.println("<li>" + name + ":" +
        // System.getProperty(name) + "</li>"); } }
        

        // 単一のフラグメントを使う場合
        // JspFragment frag = getJspBody();

        for (String name : map.keySet()) {
            if (map.get(name).equals("true")) {
                context.setAttribute("name", name);
                context.setAttribute("value", System.getProperty(name));
                // frag.invoke(null);
                row.invoke(null);
            }
        }
    }

    @Override
    public void setDynamicAttribute(String uri, String local, Object value) throws JspException {
        map.put(local, value.toString());
    }
}
