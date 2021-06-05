<%-- 
    Document   : dbname
    Created on : 14 May, 2021, 6:03:43 PM
    Author     : karth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
String name = (String) session.getAttribute("sub");
out.println(name);


if(name.equals("social")){
    session.setAttribute("db","quizqueso");
}
else if(name.equals("science")){
    session.setAttribute("db","quizques");
}
else if(name.equals("maths")){
    session.setAttribute("db","quizquem");
}
else if(name.equals("english")){
    session.setAttribute("db","quizquee");
}
else if(name.equals("cse")){
    session.setAttribute("db","quizquec");
}
else if(name.equals("biology")){
    session.setAttribute("db","quizqueb");
}
else{
    
    out.println("Error: wrong subject!!");
}
}
catch(Exception e){
    e.printStackTrace();
}
%>
<jsp:forward page="distopic.jsp"></jsp:forward>
<%

%>