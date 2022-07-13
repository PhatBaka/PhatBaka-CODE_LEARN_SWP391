<%-- 
    Document   : login
    Created on : May 30, 2022, 10:48:42 AM
    Author     : HoangMinh
--%>

<%@page import="dao.CourseDAO"%>
<%@page import="dto.CourseDTO"%>
<%@page import="dao.ExamDAO"%>
<%@page import="dto.ExamDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="dto.AdminDTO"%>
<%@page import="dto.TeacherDTO"%>
<%@page import="dto.StudentDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" href="/css/login.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <title>Login</title>
</head>

<body>
    <style>
        body
        {
            background-image: url(https://i.pinimg.com/originals/1c/54/f7/1c54f7b06d7723c21afc5035bf88a5ef.png);
            background-size:  1340px 960px;
            background-position: 90% 50%; 
        }


        /* BASIC */

        html {
            background-color: #56baed;
        }

        body {
            font-family: "Poppins", sans-serif;
            height: 100vh;
        }

        a {
            color: #92badd;
            display:inline-block;
            text-decoration: none;
            font-weight: 400;
        }

        h2 {
            text-align: center;
            font-size: 16px;
            font-weight: 600;
            text-transform: uppercase;
            display:inline-block;
            margin: 40px 8px 10px 8px; 
            color: #cccccc;
        }



        /* STRUCTURE */

        .wrapper {
            display: flex;
            align-items: center;
            flex-direction: column; 
            justify-content: center;
            width: 100%;
            min-height: 100%;
            padding: 20px;
        }

        #formContent {
            border-radius: 10px;
            background: #fff;

            max-width: 60%;
            position: relative;

            -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
            box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
            text-align: center;

            text-align: center;
            opacity: 0.9;
        }





        /* TABS */

        h2.inactive {
            color: #cccccc;
        }

        h2.active {
            color: #0d0d0d;
            border-bottom: 2px solid #5fbae9;
        }



        /* FORM TYPOGRAPHY*/

        input[type=button], input[type=submit], input[type=reset]  {
            background-color: #56baed;
            border: none;
            color: white;
            padding: 15px 80px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            text-transform: uppercase;
            font-size: 13px;
            -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
            box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
            -webkit-border-radius: 5px 5px 5px 5px;
            border-radius: 5px 5px 5px 5px;
            margin: 5px 20px 40px 20px;
            -webkit-transition: all 0.3s ease-in-out;
            -moz-transition: all 0.3s ease-in-out;
            -ms-transition: all 0.3s ease-in-out;
            -o-transition: all 0.3s ease-in-out;
            transition: all 0.3s ease-in-out;
        }

        input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
            background-color: #39ace7;
        }

        input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
            -moz-transform: scale(0.95);
            -webkit-transform: scale(0.95);
            -o-transform: scale(0.95);
            -ms-transform: scale(0.95);
            transform: scale(0.95);
        }

        input[type=text], input[type=password] {
            background-color: #f6f6f6;
            border: none;
            color: #0d0d0d;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 5px;
            width: 85%;
            border: 2px solid #f6f6f6;
            -webkit-transition: all 0.5s ease-in-out;
            -moz-transition: all 0.5s ease-in-out;
            -ms-transition: all 0.5s ease-in-out;
            -o-transition: all 0.5s ease-in-out;
            transition: all 0.5s ease-in-out;
            -webkit-border-radius: 5px 5px 5px 5px;
            border-radius: 5px 5px 5px 5px;
        }

        input[type=text]:focus, input[type=password]:focus {
            background-color: #fff;
            border-bottom: 2px solid #5fbae9;
        }

        input[type=text]:placeholder, input[type=password]:placeholder {
            color: #cccccc;
        }
                   /* Dropdown Button */
            .dropbtn {
                background-color: #04AA6D;
                color: white;
                padding: 16px;
                font-size: 16px;
                border: none;
                border-radius: 20px;
            }

            /* The container <div> - needed to position the dropdown content */
            .dropdown {
                position: relative;
                display: inline-block;
            }

            /* Dropdown Content (Hidden by Default) */
            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f1f1f1;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            /* Links inside the dropdown */
            .dropdown-content input {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            /* Change color of dropdown links on hover */
            .dropdown-content input:hover {background-color: #ddd;}

            /* Show the dropdown menu on hover */
            .dropdown:hover .dropdown-content {display: block;}

            /* Change the background color of the dropdown button when the dropdown content is shown */
            .dropdown:hover .dropbtn {background-color: #3e8e41;}

            .dropdown:hover .icon {background-color: #3e8e41;}

            .icon{
                border: none;
                width: 200%;
                border-radius: 20px;
                height: 3em;
                margin-left: 200%;
            }
    </style>
    <%
        StudentDTO stud = null;
        TeacherDTO teac = null;
        AdminDTO admin = null;
        String username = "";
        String role = "";
        List<ExamDTO> examlist = ExamDAO.getNotiExam();
        List<CourseDTO> courselist = CourseDAO.display();
        if (session.getAttribute("role") != null && session.getAttribute("ACCOUNT") != null) {
            role = (String) session.getAttribute("role");
            if (role.equals("admin")) {
                admin = (AdminDTO) session.getAttribute("ACCOUNT");
                username = admin.getAdminName();
            } else if (role.equals("teacher")) {
                teac = (TeacherDTO) session.getAttribute("ACCOUNT");
                username = teac.getName();
            } else if (role.equals("student")) {
                stud = (StudentDTO) session.getAttribute("ACCOUNT");
                username = stud.getUsername();
            }
        }
    %>
    <div class="container">
            <nav class="navbar navbar-expand-lg bg-light" id="background">
                <div class="container-fluid">
                    <c:url var="home" value="${requestScope.contextPath}/View/home.jsp"></c:url>
                    <a href="${home}" style="text-decoration: none; color: black;">
                        Home
                    </a>
                </div>
                <%
                    if (role.equals("student") || role.equals("teacher")) {
                %>
                <div class="container-fluid" >
                    <form action="MainController">
                        <input type="submit" value="My Courses" name="action" />
                    </form>
                </div>
                <%
                    }
                %>
                <div class="container-fluid">
                    <span class="navbar-brand" style="cursor:pointer;">
                        <div class="dropdown">
                            <button class="icon">
                                <ion-icon name="notifications-outline""></ion-icon>
                            </button>
                            <div class="dropdown-content" id="drop-info">
                                
                                <%
                                    if (role.equals("student") && examlist != null) {
                                        for (ExamDTO exam : examlist) {
                                %>
                                <form action="MainController">
                                    <input type="hidden" name="profileName" value="<%= username%>" />
                                    <input type="text" name="examName" value="<%= exam.getName()%>" /> 
                                    <input type="text" name="examDate" value="<%= String.valueOf(exam.getDate()) %>" />
                                    <input type="submit" name="action" value="View Exam"> </br>
                                </form>
                                <%
                                        }
                                    }
                                %>
                            </div>
                        </div>

                    </span>
                </div>


                <%
                    if (session.getAttribute("ACCOUNT") != null) {
                %>
                <div class="container-fluid">
                    <span class="navbar-brand" style="cursor:pointer;">
                        <div class="dropdown">
                            <button class="dropbtn" style="border-radius: 25px;">Welcome, <%= username%></button>
                            <div class="dropdown-content">
                                <form action="MainController">
                                    <input type="hidden" name="profileName" value="<%= username%>" />
                                    <input type="submit" name="action" value="View Profile">
                                    <input type="submit" name="action" value="Edit Profile">
                                    <input type="submit" name="action" value="Logout">
                                </form>
                            </div>
                        </div>

                    </span>
                </div>
                <%
                } else {
                %>
                <div class="container-fluid" >
                    <c:url var="login" value="${requestScope.contextPath}/Access/login.jsp"></c:url>
                    <a href="${login}" style="text-decoration: none; color: black;">
                        Login
                    </a>
                </div>
                <%
                    }
                %>
            </nav>
        </div>
    <div class="wrapper fadeInDown" id="loginForm" >
        <div id="formContent" style="padding: 2%;">
            <h1>LOGIN</h1>
            <!-- Tabs Titles -->
            <%
                if (request.getAttribute("ERROR") != null) {
            %>
            <h1 text-color="red"> <%= String.valueOf(request.getAttribute("ERROR"))%> </h1>
            <%
                }
            %>

            <!-- Login Form -->
            <form action="MainController" method="POST">
                <label>Username</label><input type="text" id="login" class="fadeIn second" name="username" placeholder="username">
                <label>Password</label><input type="password" id="password" class="fadeIn third" name="password" placeholder="password">
                <label id="option">Select:</label>
                <div id="select" name="role">
                    <input type="radio" id="html" name="role" value="Teacher">
                    <label for="html">Teacher</label><br>
                    <input type="radio" id="css" name="role" value="Student">
                    <label for="css">Student</label><br>
                    <input type="radio" id="javascript" name="role" value="Admin">
                    <label for="javascript">Admin</label>
                </div>
                <input type="submit" class="fadeIn fourth" name="action" value="Login" style="width: 40%;"></br>
            </form>       
            <a type="button" class="fadeIn fourth" href="forgotpassword.jsp" style="width: 40%; margin-top: -5%;">Forgot Password</a>
            <br>
            
            <a type="button" class="fadeIn fourth" href="register.jsp" style="width: 40%; margin-top: -5%;" >Register</a>
        </div>
    </div>
    <footer>
    </footer>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>


</html>