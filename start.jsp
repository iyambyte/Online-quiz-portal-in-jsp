<%-- 
    Document   : start
    Created on : 15 May, 2021, 9:00:54 AM
    Author     : karth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <%
        String islogin=(String)session.getAttribute("islogin");
        if(islogin==null){
        request.setAttribute("notlogin_msg","Sorry,Please do Login first");

        %>
        <jsp:forward page="index.jsp"></jsp:forward>
        <%
            }
            %>
    </head>
    <body>
        <form method="post" action="calc.jsp">
					<table><tr><td>
                                                    <%

                                                    %>
					<% 
                                        
                                        String topic = (String) session.getAttribute("n");
					String question = (String)session.getAttribute("question");
					String option1= (String)session.getAttribute("option1");
					String option2= (String)session.getAttribute("option2");
					String option3= (String)session.getAttribute("option3");
					String option4= (String)session.getAttribute("option4");
                                       
                                        
					out.println(question);
					%>

					</td></tr>
					<tr><td><input type="radio" name="radio" value="<%=option1%>" /><%=option1%></td></tr>	
					<tr><td><input type="radio" name="radio" value="<%=option2%>"/><%=option2 %></td></tr>	
					<tr><td><input type="radio" name="radio" value="<%=option3%>"/><%=option3 %></td></tr>	
					<tr><td><input type="radio" name="radio" value="<%=option4%>"/><%=option4 %></td></tr>			
                    				

                    <tr><td></td><td><input type="submit" value="Next"/></td></tr>
                    </table>
                     </form>
    </body>
</html>
