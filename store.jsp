<%-- 
    Document   : store
    Created on : 10 May, 2021, 12:13:59 PM
    Author     : karth
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
            String subject = (String) session.getAttribute("s");
            //out.println(subject);
            session.setAttribute("sub",subject);
            String topic = (String) request.getParameter("topic");
            //out.println(topic);
            session.setAttribute("top",topic);
            }
            catch(Exception e)
            {
                out.print(e);
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
            String subject = (String) session.getAttribute("subject");
             String to = (String) request.getParameter("topic");
                String d = (String) request.getParameter("date");
                String qt = (String) request.getParameter("qtime");
             try{
               System.out.println(to);
                Statement s=null;
                Class.forName(dbDriver); 
                Connection con = DriverManager.getConnection(dbURL + dbName + disableSSL, dbUsername, dbPassword);
                 PreparedStatement ps1=con.prepareStatement("select max(id) from quiztopic");
                ResultSet rs=ps1.executeQuery();
                int i=0;
                
                if(rs.next()){
                    i=rs.getInt(1);
                }
                i=i+1;
                 PreparedStatement ps2=con.prepareStatement("select max(id) from copytopic");
                out.println(s);
                
                ResultSet rs1=ps2.executeQuery();
                int j=0;
                if(rs.next())
                {
                    j=rs1.getInt(1);
                }
                j=j+1;                
                System.out.println("trial1");
                String sq = "Insert into quiztopic values ('"+to+"','"+subject+"',"+i+",'"+d+"','"+qt+"')";
                System.out.println("trial2");
                String sq1 = "Insert into copytopic values ('"+to+"','"+subject+"',"+j+",'"+d+"','"+qt+"')";
                
                s = con.createStatement();
                System.out.println("trial3");
                s.executeUpdate(sq);
                System.out.println("trials5");
             
                Statement s1 = con.createStatement();
                s1.executeUpdate(sq1);
             }
             catch(Exception e){
                 System.out.println("error"+e);
             }
        %>
        <jsp:forward page="quiz.jsp"></jsp:forward>
    </body>
</html>
