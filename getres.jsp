<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        %>
        <form method="post" action="homepage.jsp">
        <%
            String db = (String) session.getAttribute("db");
            String topic = (String) session.getAttribute("topic");
            String user = (String ) session.getAttribute("username");
            //out.println("Name: "+user);
            String sub = (String) session.getAttribute("sub");
            //out.println("Subject: "+sub);
            //out.println("Topic: "+topic);
            int n = (Integer) session.getAttribute("i");
            System.out.println(n);
            int total = 0;
            try{
                Class.forName(dbDriver); 
                Connection con = DriverManager.getConnection(dbURL + dbName + disableSSL, dbUsername, dbPassword);
                String sql = "select ans from "+db+" where quiztopic = '"+topic+"' ";
                Statement st = con.createStatement();
               
          
            
           
  
           
            
                ResultSet rs = st.executeQuery(sql);
                int i = 1;
                //int total = 0;
                
                while(rs.next()){
                    String an = request.getParameter("ans"+i);
                    System.out.println("selected: "+an);
                    String ans = rs.getString(1);
                    System.out.println("tru ans: "+ans);
                    if(an.equals(ans)){
                        total = total + 1;
                        System.out.println("Total: "+total);
                    }
                    PreparedStatement st1 = con.prepareStatement("insert into ans values('"+ans+"' , '"+i+"' , '"+an+"', '"+user+"', '"+sub+"', '"+topic+"')");
                    st1.executeUpdate();
                    i++;
                }
                    if(n == i){
                    session.setAttribute("total",total);
                    PreparedStatement st2 = con.prepareStatement("insert into total values('"+user+"' , '"+sub+"' , '"+topic+"', '"+total+"')");
                    st2.executeUpdate();
                    }
                    //out.println("You got "+total+" marks!");
            }
            catch(Exception e){
                e.printStackTrace();
            }
            
        %>
        <table>
            <tr>
                <th>UserName: </th><td> <%=user%></td>
            </tr>
            <tr>
                <th>Topic: </th><td> <%=topic%></td>
            </tr>
            <tr>
                <th>Subject: </th><td> <%=sub%></td>
            </tr>
            <tr>
                <th>Scored Mark: </th><td> <%=total%></td>
            </tr>
        </table>
        <input type="submit" value="Home">
        </form>
    </body>
</html>
