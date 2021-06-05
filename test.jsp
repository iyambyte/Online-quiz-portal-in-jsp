<%-- 
    Document   : test
    Created on : 16 May, 2021, 9:47:25 AM
    Author     : karth
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <%
        String dbDriver = "com.mysql.jdbc.Driver"; 
        String dbURL = "jdbc:mysql:// localhost:3306/"; 
        // Database connection
        String dbName="school";
        String disableSSL="?useSSL=false";
        String dbUsername = "root"; 
        String dbPassword = "KamalMySQL25@"; 
        %><%
        String db = "quizquem";
        try{
            Class.forName(dbDriver); 
            Connection con = DriverManager.getConnection(dbURL + dbName + disableSSL, dbUsername, dbPassword);
            
            PreparedStatement psp=con.prepareStatement("select max(quiztopic) from "+db+" ");
            
            ResultSet rsp = psp.executeQuery();
            String n = "";
            if(rsp.next()){
            n = rsp.getString(1);
            session.setAttribute("s",n);
            }
            
            session.setAttribute("p", "value");
            out.println(n);
            }
        
        catch(Exception e){
            e.printStackTrace();
        }
        //out.println(n);
        %>
        <jsp:forward page="pri.jsp"></jsp:forward>>