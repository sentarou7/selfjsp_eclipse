<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="str1" value="    WINGSプロジェクト    " />
<c:set var="str2" value="http://www.web-deli.com/bbs.aspx" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Functionタグライブラリ</title>
</head>
<body>
fn:length ->
  ${fn:length(str1)} <br>
fn:toLowerCase(str1) ->
  ${fn:toLowerCase(str1)} <br>
fn:toUpperCase(str2) ->
  ${fn:toUpperCase(str2)} <br>
fn:trim(str1) ->
  ${fn:trim(str1)} <br>
fn:startsWith(str2,"http://") ->
  ${fn:startsWith(str2,"http://")} <br>
fn:endsWith(str,"/") ->
  ${fn:endsWith(str2,"/")} <br>
fn:indexOf(str,"msn") ->
  ${fn:indexOf(str2,"msn")} <br>
fn:substring(str,5,10) ->
  ${fn:substring(str2,9,25)} <br>
fn:substringAfter(str2,"://") ->
  ${fn:substringAfter(str2,"://")} <br>
fn:substringBefore(str2,"://") ->
  ${fn:substringBefore(str2,"://")} <br>
fn:contains(str2,"DELI") ->
  ${fn:contains(str2, "DELI")} <br>
fn:containsIgnoreCase(str2,"DELI") ->
  ${fn:containsIgnoreCase(str2,"DELI")} <br>
fn:replace(str2,"/","_") ->
  ${fn:replace(str2,"/","_")} <br>
fn:join(fn:split(str2,"/"),",") ->
  ${fn:join(fn:split(str2,"/"),",")}
</body>
</html>