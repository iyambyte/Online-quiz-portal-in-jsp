<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<p id="countdown"></p>

<script>
                    
                    var timeleft = 80;
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
            <script>
/*window.history.forward(1);
document.attachEvent("onkeydown", my_onkeydown_handler);
function my_onkeydown_handler() {
    switch (event.keyCode) {
        case 116 : // 'F5'
            event.returnValue = false;
            event.keyCode = 0;
            window.status = "We have disabled F5";
            break;
    }
}*/
</script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>  
<script type="text/javascript">  
    $(function () {  
        $(document).keydown(function (e) {  
            return (e.which || e.keyCode) != 116;  
        });  
    });  
</script>  
<script>
/*var time = 80; // This is the time allowed
var saved_countdown = localStorage.getItem('saved_countdown');

if(saved_countdown == null) {
    // Set the time we're counting down to using the time allowed
    var new_countdown = new Date().getTime() + (time + 2) * 1000;

    time = new_countdown;
    localStorage.setItem('saved_countdown', new_countdown);
} else {
    time = saved_countdown;
}

// Update the count down every 1 second
var x = setInterval(() => {

    // Get today's date and time
    var now = new Date().getTime();

    // Find the distance between now and the allowed time
    var distance = time - now;

    // Time counter
    var counter = Math.floor((distance % (1000 * 60)) / 1000);
    var min = Math.floor(counter/60);
    var remsec = counter % 60;
    // Output the result in an element with id="demo"
    if(remsec < 10){
                          remsec = "0"+remsec;
                      }
                      if(min < 10){
                          min = "0"+min;
                      }
    document.getElementById("demo").innerHTML = " Time remaining : "+min+" : "+remsec+ " s";;
    
        
    // If the count down is over, write some text 
    if (counter <= 0) {
        clearInterval(x);
        localStorage.removeItem('saved_countdown');
        document.getElementById("demo").innerHTML = "EXPIRED";
    }
}, 1000);*/
</script>
        </form>
    </body>
</html>
