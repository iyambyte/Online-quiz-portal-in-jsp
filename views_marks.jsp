<%-- 
    Document   : views_marks
    Created on : 24 May, 2021, 9:12:25 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Marks:</title>
    </head>
    <body>
        <%
        String dbDriver = "com.mysql.jdbc.Driver"; 
        String dbURL = "jdbc:mysql:// localhost:3306/"; 
        // Database connection
        String dbName="school";
        String disableSSL="?useSSL=false";
       String dbUsername = "root"; 
        String dbPassword = "KamalMySQL25@"; 
        System.out.println("dbnotworking");
        String subject = (String) session.getAttribute("sub");
            System.out.println(subject);
         try{
                Class.forName(dbDriver); 
                Connection con = DriverManager.getConnection(dbURL + dbName + disableSSL, dbUsername, dbPassword);
                 Statement st = con.createStatement();
                  String sql = "select from total where subject = '"+subject+"' " ;
                ResultSet rs = st.executeQuery(sql);
                
                while(rs.next())
                {
                    %>
    <th>Student name:</th>                
<tr>
<td><%=rs.getString(1) %></td>
<br>
 <th>Subject:</th>
 <td><%=rs.getString(2) %></td><br>
 <th>Topic:</th>
 
 <td><%=rs.getString(3) %></td><br>
 <th>Marks:</th>
<td><%=rs.getString(4) %></td>
</tr>
<hr>
                    
<%
                }
           
                    
                con.close();
            } 
         
         catch(Exception e){
                
            }

        %>
        
        
    </body>
</html>
