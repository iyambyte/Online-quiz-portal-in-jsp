<%-- 
    Document   : view
    Created on : 18 May, 2021, 7:58:05 PM
    Author     : karth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");

%>
    </head>
    <body>
        <% 
					if(request.getAttribute("notlogin_msg")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("notlogin_msg"));
					out.print("</font>");
					}
					%>
				<% 
					if(request.getAttribute("Error")!=null){
					out.print("<font size='2' color='red' >");
					out.print(request.getAttribute("Error"));
					out.print("</font>");
					}
					%>
					<%
					if(request.getAttribute("finished")!=null){
					   out.print("<font size='2' color='navy'>");
                   out.print("<B>");
					out.print(request.getAttribute("finished"));
					  out.print("<B>");
   						out.print("</font>");
					}
				
					%>
                                                <%
        String dbDriver = "com.mysql.jdbc.Driver"; 
        String dbURL = "jdbc:mysql:// localhost:3306/"; 
        // Database connection
        String dbName="school";
        String disableSSL="?useSSL=false";
       String dbUsername = "root"; 
        String dbPassword = "KamalMySQL25@"; 
        %>
                                        <%
				String name=(String)session.getAttribute("quizname");
				try{
					Class.forName(dbDriver); 
                                        Connection con = DriverManager.getConnection(dbURL + dbName + disableSSL, dbUsername, dbPassword);
					PreparedStatement ps= con.prepareStatement("select * from quizques where quizname='"+name+"'");
					ResultSet rs=ps.executeQuery();
					out.print("<table>");
					while(rs.next()){
					out.print("<tr><td>Question:</td><td>"+rs.getString(1)+"</td></tr>");
					out.print("<tr><td>Answer:</td><td>"+rs.getString(6)+"</td></tr>");
					out.print("<tr><td>Description:</td><td>"+rs.getString(9)+"</td></tr>");
					
					}
					out.print("</table>");
					
				}catch(Exception e){e.printStackTrace();}
				 %>					
    </body>
</html>
