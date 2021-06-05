<%-- 
    Document   : selectsub
    Created on : 8 May, 2021, 5:34:10 PM
    Author     : karth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String s = null;
            String subject = (String) request.getAttribute("subject");
            if(subject.equals("science")){
                s = "quizques";
            }
            else if(subject.equals("maths")){
                s = "quizquem";
            }
            
        %>
    </body>
</html>
