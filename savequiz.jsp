<%-- 
    Document   : savequiz
    Created on : 26 Apr, 2021, 7:27:31 PM
    Author     : karth
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
        <%! static int counter=0; %>
        <%
        counter++;
        String dbDriver = "com.mysql.jdbc.Driver"; 
        String dbURL = "jdbc:mysql:// localhost:3306/"; 
        // Database connection
        String dbName="school";
        String disableSSL="?useSSL=false";
       String dbUsername = "root"; 
        String dbPassword = "KamalMySQL25@"; 
        %>
        <%
          try{
                Class.forName(dbDriver); 
                Connection con = DriverManager.getConnection(dbURL + dbName + disableSSL, dbUsername, dbPassword);
                String s = (String) session.getAttribute("sub");
                
                String question= request.getParameter("question");
                String option1= request.getParameter("option1");
                String option2= request.getParameter("option2");
                String option3= request.getParameter("option3");
                String option4= request.getParameter("option4");
                String answer=request.getParameter("answer");
                String description=request.getParameter("description");
                
                
                PreparedStatement ps1=con.prepareStatement("select max(topic) from quiztopic");
                out.println(s);
                
                ResultSet rs=ps1.executeQuery();
                while(rs.next()){
                String quizname= rs.getString(1);
                PreparedStatement ps= con.prepareStatement("insert into "+s+" values(?,?,?,?,?,?,?,?,?)");

                ps.setString(1,question);
                ps.setString(2,option1);
                ps.setString(3,option2);
                ps.setString(4,option3);
                ps.setString(5,option4);
                ps.setString(6,answer);
                ps.setString(7,description);
                ps.setString(8, quizname);
                ps.setInt(9,counter);
               
                int l = ps.executeUpdate();
                
                
                }
                /*String sq = "select quest, count(*) FROM quizquem GROUP BY quest";
                PreparedStatement p = con.prepareStatement(sq);
                
                int c = p.executeUpdate();
                
                System.out.println(c);*/
          } 
          catch(Exception e){
              e.printStackTrace();
          }
        %>
        <% 
        request.setAttribute("counter",counter);
        out.print(counter);
        
        if(counter>9){%>
        <% session.setAttribute("finished","U have entered 10 quiz questions!! Thank you!!."); %>
            <jsp:forward page="Createquiz.jsp"></jsp:forward>
            <%
                
        }
        %>
                <% /*
            String sq = "select quest, count(*) as c FROM quizquem GROUP BY quest" ;
            try{
                Class.forName(dbDriver); 
                Connection con = DriverManager.getConnection(dbURL + dbName + disableSSL, dbUsername, dbPassword);
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(sq);
                int c = 0;
                while(rs.next()){
                    c = c +1;
                }
                out.println(c);
            }
            catch(Exception e){
                e.printStackTrace();
            }
*/
        %>
        <jsp:forward page="quiz.jsp"></jsp:forward>

    </body>
</html>
