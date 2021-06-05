<%-- 
    Document   : logout
    Created on : 1 Jun, 2021, 8:09:01 PM
    Author     : karth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head>
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="-1">
</head>
----//body tags
<%

session.invalidate();
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Pragma","no-cache"); 
response.setDateHeader ("Expires", 0);




%>
<jsp:forward page="testportal.html"></jsp:forward>