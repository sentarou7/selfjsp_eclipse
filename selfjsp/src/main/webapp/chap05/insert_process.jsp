<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<fmt:requestEncoding value="UTF-8" />
<sql:setDataSource var="db" dataSource="jdbc/selfjsp" />
<sql:update dataSource="${db}">
  INSERT INTO address(name, address, tel, email) VALUES(? ,? ,? ,?)
  <sql:param value="${param['name']}" />
  <sql:param value="${param['address']}" />
  <sql:param value="${param['tel']}" />
  <sql:param value="${param['email']}" />
</sql:update>
<c:redirect url="insert_form.jsp" />