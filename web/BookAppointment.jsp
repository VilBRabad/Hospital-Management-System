<!-- <%@page contentType="text/html" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Book Appointment</title>
    <link href="css/BookAppointment.css" rel="stylesheet">
</head>
<body>  
    <div id="full">
        <!--header Navbar-->
        <header style="background-color: #0057b8; color: white;">
            <nav id="navbar">
                <ul class="ul">
                    <li class="list"><a style="color: white;" href="Home_page.jsp">Home</a></li>
                    <li class="list"><a style="color: white;" href="BookAppointment.jsp">Book Appointment</a></li>
                    <li class="list">Contact</li>
                    <li class="list">About</li>
                </ul>
            </nav>
        </header>
        
        <!--Resistration form--> 
        <main>
            <div class="bookform">
                <span style="margin-bottom: 10px;">Book Appointment</span>
                <h5 id="msg2"></h5>
                <form onsubmit="return validateForm()" action="BookingServlet" method="post" name="bookForm" id="bookform">
                    <label for="fname">First Name :</label>
                    <input type="text" name="fname" id="fname" required>

                    <label for="fname">Last Name :</label>
                    <input type="text" name="lname" id="lname" required>

                    <label for="mobile">Mobile No.:</label>
                    <input type="text" name="mobile" id="mobile" required pattern="[0-9]{10}">

                    <label for="aadhar">Aadhar No.:</label>
                    <input type="text" name="aadhar" id="aadhar" required pattern="[0-9]{12}">
                    
                    <label for="gender">Gender</label>
                    <select name="gender" id="gender" required>
                        <option value=""></option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                    <button class="fbutton" type="submit">Submit</button>
                    <button class="fbutton" type="reset">Reset</button>
                </form>
            </div>   
        </main>
        
        <!--Footer-->
        <footer style="background-color: black; color: white;">
            <span>Copyrights reserved</span>
        </footer>
    </div>
    
    <script
        src="https://code.jquery.com/jquery-3.6.1.min.js"
        integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
        crossorigin="anonymous">
    </script>
    <script>
//        $(document).ready(function(){
            $("#bookform").on("submit", function(event){
                event.preventDefault();
                
                var f = $(this).serialize();
                $.ajax({
                    url: "BookingServlet",
                    data: f,
                    type: 'POST',
                    
                    success: function(data, textStatus, jqXHR){
                        if(data.trim() === "Done"){
                            $('#msg2').html("Successfully Booked !!");
                            $("#msg2").css("color", "green");
                        }
                        else{
                            $('#msg2').html("Something went wrong !!");
                            $("#msg2").css("color", "red");
                        }
                    },
                    error: function(jqXHR, textStatus, errorThrown){
                        $('#msg2').html("Something went wrong !!");
                        $("#msg2").css("color", "red");
                    }
                });
            });
//        }); 
       
    </script>
</body>
</html>
