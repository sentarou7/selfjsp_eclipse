<%@ tag language="java" pageEncoding="UTF-8" dynamic-attributes="map" %>
<%@ attribute name="row" fragment="true" %>
<%@ variable name-given="name" %>
<%@ variable name-given="value" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="item" items="${map}">
    <c:if test="${item.value == 'true'}">
        <c:set var="name" value="${item.key}" />
        <c:set var="value" value="${System.getProperty(item.key)}" />
        <jsp:invoke fragment="row" />
    </c:if>
</c:forEach>