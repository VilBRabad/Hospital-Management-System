<%@page import="java.io.PrintWriter"%>
<%@page import="com.practice.JDBC_Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.io.IOException" %>
<%@page import ="java.sql.*" %>
<%@page import ="javax.servlet.ServletException" %>
<%@page import ="javax.servlet.http.HttpServlet" %>
<%@page import ="javax.servlet.http.HttpServletRequest" %>
<%@page import ="javax.servlet.http.HttpServletResponse" %>
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
        table{
            width: 92%;
        }
        table tr th{
            padding: 6px 10px;
        }
        .appointments{
            background-color: white;
            padding: 30px 0px 25px 57px;
            margin: 14% 10%;
            border-radius: 10px;
            box-shadow: 5px 5px 8px #617f7f;
        }
        .appointments h3{
            padding: 10px;
            text-align: center;
        }
    </style>
<body>
    <header style="background-color: #0057b8; color: white;height: 56px;">
        <nav id = "navbar">
            <ul class="ul">
                <li class="list" onclick="Back()">Back</li>
            </ul>
        </nav>
        <button class="btn loginbtn viewlist" onclick="log_out()" >Logout</button>
    </header>
    
    <main>
        <div  class="appointments">
            <h3>Appointments</h3>
            <table border=1 width=50% height=50%>
                <tr><th>First Name</th><th>Last Name</th><th>Phone No.</th><th>Aadhar No.</th><th>Gender</th><tr>
            <%  
                Connection con = JDBC_Connection.CreateC();
            
                Statement stmt = con.createStatement();
                ResultSet res = stmt.executeQuery("Select * from patient_info;");
            
                while(res.next()){
                    String fname = res.getString(1);
                    String lname = res.getString(2);
                    String phone = res.getString(3);
                    String aadhar = res.getString(4);
                    String gender = res.getString(5);
                    out.println("<tr style=\"text-align: center; padding: 6px;\"><td style=\"padding: 6px;\">"+fname+"</td><td >"+lname+"</td><td>"+phone+"</td><td>"+aadhar+"</td><td>"+gender+"</td></tr>");
                }
            %>
            </table>
        </div>
    </main>
    
    <footer>
        <span>Copyrights reserved</span>
    </footer>
    
    <script>
        function Back(){
            window.location.href = "DoctorPage.jsp";
        }
        function log_out(){
            if(confirm("Do you want to log out")){
                window.location.href = "Home_page.jsp";
            }
        }
    </script>
</body>
</html>





