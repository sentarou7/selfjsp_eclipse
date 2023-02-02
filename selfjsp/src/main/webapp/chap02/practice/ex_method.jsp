<%@ page contentType="text/html;charset=UTF-8" %>
<%!
public double triangle(double width, double height) {
    return width * height / 2;
}
%>
三角形の面積（底辺5、高さ2の場合）：
<%=triangle(5, 2) %>