<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

    <head>
        <script>
            function click()
            {
               if(time==0)
               {
                   document.disquall.submit();
               }
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%
        String islogin=(String)session.getAttribute("islogin");
        if(islogin==null){
        request.setAttribute("notlogin_msg","Sorry,Please do Login first");

        %>
        <jsp:forward page="s_index.jsp"></jsp:forward>
        <%
            }
            %>
            <style>
               
     

body{
   
     background-image:url(cq1.jpg);
}
            </style> 
            <div class="menu-bar">
        <ul>
            <li class="active"><i class="fa fa-home"></i><a href="#">
            <%
                String t = (String)session.getAttribute("timey");
                int m = Integer.parseInt(t);
                System.out.println("Time: "+m);
            %></a></li>
        </ul>
            </div>
                    <script>
                    
                    var timeleft = "<%=m%>";
                    //window.location.replace("dispqall.jsp?time="+timeleft);
                    <% 
                       // String time = request.getParameter("timeleft");
                       // System.out.println("Te time: "+time);
                       // session.setAttribute("timey",time);
                    %>
                    var min = Math.floor(timeleft/60);
                    var remsec = timeleft % 60;
                    var saved_countdown = localStorage.getItem('saved_countdown');
                    if(saved_countdown === null) {
                        time = timeleft;
                        //localStorage.setItem('saved_countdown', timeleft);
                    } 
                    else {
                        time = saved_countdown;
                    }
                    
                    var downloadTimer = setInterval(function(){
                      if(timeleft <= 0){
                                             
                        clearInterval(downloadTimer);
                        localStorage.removeItem('saved_countdown');
                        //document.getElementById("demo").innerHTML = remsec;
                        alert("Your Test Ended! You may leave");
                        <% out.println("location='homepage.jsp';"); %>
                        //window.sessionStorage.removeItem(timeleft);
                      } else {
                        //window.sessionStorage.setItem(timeleft);
                        //document.getElementById("demo").innerHTML = min;
                        document.getElementById("countdown").innerHTML = " Time remaining : "+min+" : "+remsec+ " s";
                      }
                      timeleft -= 1;
                      localStorage.setItem('saved_countdown', timeleft);
                      //var tim = (String) timeleft;
                      min = Math.floor((timeleft/60)%(60));
                      remsec = Math.floor((timeleft)% (60));
                     // window.location.replace("dispqall.jsp?timeleft="+timeleft);
                      
                      <% 
                           // String timeleft = request.getParameter("timeleft");
                            //if(timeleft != null){
                            //session.setAttribute("timey",timeleft); 
                            //System.out.println("Updated Time: "+timeleft);
                           // }
                      %>
                      if(remsec < 10){
                          remsec = "0"+remsec;
                      }
                      if(timeleft < 10){
                          timeleft = "0"+timeleft;
                      }
                      if(min < 10){
                          min = "0"+min;
                      }
                      
                    }, 1000);
            </script>
            <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>  
            <script type="text/javascript">  
    $(function () {  
        $(document).keydown(function (e) {  
            return (e.which || e.keyCode) != 116;  
        });  
    });  
</script>
    </head>
    <body>
        <div style="padding-left: 700px;position: fixed;"><span id="countdown" style="background-color: rgba(240,0,0,0.4);"></span></div>
        <div style="padding-top: 40px;">
                <%
        String dbDriver = "com.mysql.jdbc.Driver"; 
        String dbURL = "jdbc:mysql:// localhost:3306/"; 
        // Database connection
        String dbName="school";
        String disableSSL="?useSSL=false";
        String dbUsername = "root"; 
        String dbPassword = "KamalMySQL25@"; 
        %>
        <form method="post" action="getres.jsp">
        <%
            String db = (String) session.getAttribute("db");
            String n = (String) session.getAttribute("topic");
            //int tim = 0;
            try{
                Class.forName(dbDriver); 
                Connection con = DriverManager.getConnection(dbURL + dbName + disableSSL, dbUsername, dbPassword);
                /*PreparedStatement psp=con.prepareStatement("select max(quiztopic) from "+db+" ");
                ResultSet rsp = psp.executeQuery();
                String n = "";

                if(rsp.next()){
                n = rsp.getString(1);
                session.setAttribute("n",n);
                }*/
                //String sq = "select qtime from "+db+" where quiztopic = '"+n+"'";
                //Statement st1 = con.createStatement();
                //ResultSet rs1 = st1.executeQuery(sq);
                
                //if(rs1.next()){
                //    tim = rs1.getInt(1);
                 //   session.setAttribute("timey", tim);
                //}
                
                
                int i = 1;
                Statement st = con.createStatement();
                String sql = "select * from "+db+" where quiztopic = '"+n+"' ";
                ResultSet rs = st.executeQuery(sql);
                while(rs.next()){
                    String ques = rs.getString(1);
                    String opt1 = rs.getString(2);
                    String opt2 = rs.getString(3);
                    String opt3 = rs.getString(4);
                    String opt4 = rs.getString(5);
                    String ans = rs.getString(6);
                    
                    %>
                <%=i%>. <%=ques%><br/>
                <input type="radio" name="ans<%=i%>" value="<%=opt1%>"/><%=opt1%><br/>
                <input type="radio" name="ans<%=i%>" value="<%=opt2%>"/><%=opt2%><br/>
                <input type="radio" name="ans<%=i%>" value="<%=opt3%>"/><%=opt3%><br/>
                <input type="radio" name="ans<%=i%>" value="<%=opt4%>"/><%=opt4%><br/>
    <br/><br/>
                <%
                    i++;
                }
                session.setAttribute("i",i);

            }
            catch(Exception e){
                
            }

        %>
        <input type="submit" value="finish">
        </form> 
        </div>

        
    </body>

