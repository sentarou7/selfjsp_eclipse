package to.msn.wings.selfjsp.chap08;

import java.io.IOException;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;

public class RepeatStringTag extends TagSupport {

    private String str = null;
    private int count = 2;
    private String delimiter = "";

    @Override
    public int doStartTag() throws JspException {
        JspWriter out = pageContext.getOut();
        try {
            for (int i = 0; i < this.count; i++) {
                out.print(this.str);
                out.print(this.delimiter);
            }
        } catch (IOException e) {
            throw new JspException(e);
        }
        return SKIP_BODY;
    }

    public void setStr(String str) {
        this.str = str;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public void setDelimiter(String delimiter) {
        this.delimiter = delimiter;
    }
}