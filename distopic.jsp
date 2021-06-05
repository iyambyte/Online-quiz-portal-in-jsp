
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
               <%
        String islogin=(String)session.getAttribute("islogin");
        if(islogin==null){
        request.setAttribute("notlogin_msg","Sorry,Please do Login first");

        %>
        <jsp:forward page="index.jsp"></jsp:forward>
        <%
            }
            %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <style>
            table {
              font-family: arial, sans-serif;
              border-collapse: collapse;
              width: 100%;
            }

            td, th {
              border: 1px solid #dddddd;
              text-align: left;
              padding: 8px;
            }

            tr:nth-child(even) {
              background-color: #dddddd;
            }
        </style>
                        <%
        String dbDriver = "com.mysql.jdbc.Driver"; 
        String dbURL = "jdbc:mysql:// localhost:3306/"; 
        // Database connection
        String dbName="school";
        String disableSSL="?useSSL=false";
        String dbUsername = "root"; 
        String dbPassword = "KamalMySQL25@";
        %>
        <script>
            
            
            
            
            
            
            function myFunction(id) {
               
               //document.getElementById("demo").innerHTML = id;
               window.location.replace("distopic.jsp?id="+id);
            <%
                   String id = request.getParameter("id");
                   if(id!=null){
                       System.out.println(id);
                       session.setAttribute("topic",id);
                       try{
                           Class.forName(dbDriver); 
                           Connection con = DriverManager.getConnection(dbURL + dbName + disableSSL, dbUsername, dbPassword);
                           PreparedStatement ps = con.prepareStatement("Select qtime from quiztopic where topic = '"+id+"'");
                           ResultSet rs = ps.executeQuery();
                           if(rs.next()){
                               String tim = rs.getString(1);
                               session.setAttribute("timey",tim);
                           }
                           
                       }
                       catch(Exception e){
                           e.printStackTrace();
                       }
                       %>
                       <jsp:forward page="dispqall.jsp"></jsp:forward>
                       <%
                        //out.println(id);
                   }
                   
               %> 
            }
            

        </script>
        <style>
            .button{
                display: inline-block;
            }
        </style>
    </head>
    <body>
        
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#">OnlineQuiz</a>
          
            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
              <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item active">
                  <a class="nav-link" href="homepage.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#"><%= session.getAttribute("username") %></a>
                </li>
              </ul>
              <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
              </form>
            </div>
          </nav>
        <br><br><br><br>
        
        
                      <table>
                        <tr>
                            <th>Topics</th>
                            <th>Attend Quiz</th>
                            <th>End Date and Time</th>
                            <th>Validity</th>
                        </tr>
        <%
            String subject = (String) session.getAttribute("sub");
            System.out.println(subject);
            try{
                Class.forName(dbDriver); 
                Connection con = DriverManager.getConnection(dbURL + dbName + disableSSL, dbUsername, dbPassword);
                String sql = "Select topic,Time from quiztopic where subject = '"+subject+"' ";
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(sql);
                while(rs.next()){
                    String top = rs.getString(1);
                    String time = rs.getString(2);
                    System.out.println(top);
                    %>

                            <script>
                            //document.getElementById("demo").innerHTML = topi;
                            /*var x = setInterval(function(){
                                var now = new Date.getTime();
                                var distance = countDownDate - now;
                                
                                  if(distance < 0){
                                        //session.setAttribute("exp","Sorry! This Quiz has been Expired!!");
                                        clearInterval(x);
                                        <%
                                        //session.setAttribute("exp","Sorry! This Quiz has been Expired!!");
                                        //System.out.println("shit"); 

                                            /*try{
                                            Class.fout.println("inside try");
                                            ConnectorName(dbDriver); 
                                            System.out.println("inside try");
                                            Connection con1 = DriverManager.getConnection(dbURL + dbName + disableSSL, dbUsername, dbPassword);
                                            PreparedStatement ps1 = con1.prepareStatement("Delete * from quiztopic where topic = '"+top+"'");
                                            ps1.executeQuery();

                                           }
                                             catch(Exception e){
                                                 e.printStackTrace();
                                              }*/
                                        %>
                                        //document.getElementById("demo").innerHTML = "EXPIRED";
                                        document.querySelector("<//%=top%>").style.display = 'none';
                                    }
                                  else{
                                      //ocument.getElementById(topi).removeAttribute("disabled");
                                      <%//System.out.println("shitelse"); %>
                                  }
                            },1000);*/
                            
                            
                        </script>
                        
                        <tr>
                        <td><%=top%></td>
                        <td><input type="button" class="button" onclick="myFunction(this.id)" id="<%=top%>" name="bt<%=top%>" value="Attend"></td>
                        <td><%=time%></td>
                        <td><p id="b<%=top%>"></p></td>
                        </tr>
                            <script>                            
                            var date = "<%=time%>";
                            var date1 = date.replace("T"," ");
                            var topi = "<%=top%>";
                            var countDownDate = new Date(date1).getTime();
                            var now = new Date().getTime();
                            var distance = countDownDate - now;
                            //document.getElementByID("demo").innerHTML = distance;
                            if(distance < 0 ){
                                document.getElementById("<%=top%>").style.display = 'none';
                                document.getElementById("b<%=top%>").innerHTML = "Expired";
                                <% System.out.println("works but sucks"); %>
                            }
                            else{
                                document.getElementById("b<%=top%>").innerHTML = "Not Expired";
                            }
                            </script>

                        
        <%
                }
            }
            catch(Exception e){
                e.printStackTrace();
            }
        %>
        </table>
    </body>
</html>
