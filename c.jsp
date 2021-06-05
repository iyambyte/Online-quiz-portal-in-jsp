<%-- 
    Document   : c
    Created on : 14 May, 2021, 5:45:45 PM
    Author     : karth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    session.setAttribute("sub","cse");
    out.println("lol");
%>
<jsp:forward page="dbname.jsp"></jsp:forward>
