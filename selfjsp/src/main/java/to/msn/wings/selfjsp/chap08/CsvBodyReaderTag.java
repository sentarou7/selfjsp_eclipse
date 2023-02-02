package to.msn.wings.selfjsp.chap08;

import java.io.BufferedReader;
import java.io.IOException;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.BodyTagSupport;

public class CsvBodyReaderTag extends BodyTagSupport {
	public String delimiter = ",";

	public void setDelimiter(String delimiter) {
		this.delimiter = delimiter;
	}

	@Override
	public int doEndTag() throws JspException {
		JspWriter out = pageContext.getOut();
		BufferedReader body = new BufferedReader(bodyContent.getReader());
		boolean title_line = true;
		try {
			out.println("<table class='table'>");
			String line = "";
			while ((line = body.readLine()) != null) {
				out.println("<tr>");
				String[] cells = line.strip().split(this.delimiter);
				for (String cell : cells) {
					if (title_line) {
						out.println("<th>" + cell + "</th>");
					} else {
						out.println("<td>" + cell + "</td>");
					}
				}
				out.println("</tr>");
				title_line = false;
			}
			out.println("</table>");
		} catch (IOException e) {
			throw new JspException(e);
		}
		return EVAL_PAGE;
	}
}
