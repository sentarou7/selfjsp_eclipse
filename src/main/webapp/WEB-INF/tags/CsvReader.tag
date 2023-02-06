<%@ tag language="java" pageEncoding="UTF-8" body-content="empty" import="java.io.*, java.nio.charset.*, java.nio.file.*" %>
<%@ attribute name="path" required="true" rtexprvalue="true" %>
<%@ attribute name="delimiter" required="false" rtexprvalue="true"%>
<table class="table">
<%
String path = (String)jspContext.getAttribute("path");
String delimiter = (String)jspContext.getAttribute("delimiter");
String encoding = (String)jspContext.getAttribute("encoding");
delimiter = (delimiter == null) ? "," : delimiter;
encoding = (encoding == null) ? "UTF-8" : encoding;

try(BufferedReader buf = Files.newBufferedReader(
    Paths.get(application.getRealPath(path)), Charset.forName(encoding))) {
    boolean title_line = true;
    while(buf.ready()){
        String line = buf.readLine();
        String[] data = line.split(delimiter);
        out.println("<tr>");
        for(int i = 0; i < data.length; i++) {
        if(title_line){
            out.println("<th>" + data[i] + "</th>");
        } else {
            out.println("<td>" + data[i] + "</td>");
        }
        }
        out.println("</tr>");
        title_line = false;
    }
}
%>
</table>