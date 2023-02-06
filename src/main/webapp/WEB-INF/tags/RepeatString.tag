<%@ tag body-content="empty" pageEncoding="UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="str" required="true" rtexprvalue="true" %>
<%@ attribute name="count" required="false" rtexprvalue="true"%>
<%@ attribute name="delimiter" required="false" rtexprvalue="true"%>
<c:if test="${empty count}"><c:set var="count" value="2" /></c:if>
<c:if test="${empty delimiter}"><c:set var="delimiter" value="" /></c:if>
<c:forEach begin="1" end="${count}">
  ${str}${delimiter}
</c:forEach>