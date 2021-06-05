<%-- 
    Document   : e
    Created on : 14 May, 2021, 5:45:38 PM
    Author     : karth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    session.setAttribute("sub","english");
    out.println("lol");
%>
<jsp:forward page="dbname.jsp"></jsp:forward>
