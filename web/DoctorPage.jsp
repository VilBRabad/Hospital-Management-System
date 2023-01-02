<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor</title>
        <link href="css/DoctorPage.css" rel="stylesheet">
    </head>
    <style>
        body{
            background: url("img/doctor1.jpg") no-repeat fixed;
            background-size: cover;
            height: 50%;
        }
        .appointments{
            margin: 20% 10%;
        }
    </style>
<body>
    <header style="background-color: #0057b8; color: white;height: 56px;">
        <nav id = "navbar">
            <ul class="ul">
                <li class="list">Appointments</li>
            </ul>
        </nav>
        <button class="btn loginbtn viewlist" onclick="log_out()" >Logout</button>
    </header>
    
    <main>
        <div  class="appointments">
            <button class="btn" onclick="gopage()">Check Appointment</button>
        </div>
    </main>
    
    <footer>
        <span>Copyrights reserved</span>
    </footer>
    
    <script>
        function gopage(){
            window.location.href = "Appointments.jsp";
        }
        
        function log_out(){
            if(confirm("Do you want to log out")){
                window.location.href = "Home_page.jsp";
            }
        }
    </script>
</body>
</html>





