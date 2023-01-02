<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
    </head>
    <link href="css/BookAppointment.css" rel="stylesheet">
    <style>
        main{
            display: flex;
            margin: 100px 5px;
        }
        .doctors{
            height: 67px;
            text-align: center;
        }
        .doctors span{
            margin: 14px 10px;
            display: block;
        }
        .doctors img{
            height: 140px;
            transition: all 0.5s ease-in-out 0s;
        }
        .doctors img:hover{
            transform: scale(2, 2);
        }
    </style>
    <body>
        <div id="full">
        <!--header Navbar-->
        <header style="background-color: #0057b8; color: white;">
            <nav id="navbar">
                <ul class="ul">
                    <li class="list"><a style="color: white;" href="Home_page.jsp">Home</a></li>
                    <li class="list"><a style="color: white;" href="BookAppointment.jsp">Book Appointment</a></li>
                    <li class="list"><a style="color: white;" href="contact.jsp">Contact</a></li>
                    <li class="list">About</li>
                </ul>
            </nav>
        </header>
            
        <main>
            <div class="doctors">
                <img src="img/d4.png"alt="alt"/>
                <span>Sairaj Rajput</span>
                <span>Email: sairaj.22111025@viit.ac.in</span>
            </div>
            <div class="doctors">
                <img src="img/d1.png" alt="alt"/>
                <span>Utkarsh Kadam</span>
                <span>Email: utkarsh.22111251@viit.ac.in</span>
            </div>
            <div class="doctors">
                <!--<img src="img/d4.png" width="width" height="height" alt="alt"/>-->
                <span>Vilas Rabad</span>
                <span>Email: vilas.22110883@viit.ac.in</span>
            </div>
            <div class="doctors">
                <img src="img/d2.png" alt="alt"/>
                <span>Tushar Kalaskar</span>
                <span>Email: tushar.22110965@viit.ac.in</span>
            </div>
            <div class="doctors">
                <img src="img/d3.png" alt="alt"/>
                <span>Manas Paratane</span>
                <span>Email: manas.22111290@viit.ac.in</span>
            </div>
        </main>
        
        <!--Footer-->
        <footer style="background-color: black; color: white; margin-top: 330px;">
            <span>Copyrights reserved</span>
        </footer>
    </div>
    </body>
</html>
