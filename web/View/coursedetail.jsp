<%-- 
    Document   : coursedetail
    Created on : May 31, 2022, 10:12:24 PM
    Author     : HoangMinh
--%>

<%@page import="dao.CourseDAO"%>
<%@page import="dto.AdminDTO"%>
<%@page import="dto.TeacherDTO"%>
<%@page import="dto.StudentDTO"%>
<%@page import="dto.CourseDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" href="/css/coursedetail.css" rel="stylesheet">
    <link rel="icon" href="https://cdn.helpex.vn/upload/2019/12/23/55ee433d8b75f32e34155bc3-011719008_50x50.jpg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title>Course Detail</title>

    <style>
        body
        {
            background-image: url(https://i.pinimg.com/originals/1c/54/f7/1c54f7b06d7723c21afc5035bf88a5ef.png);
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }



        #detail_frame
        {
            position: relative;
            top: 10rem;
            background-color: white;
            padding: 1%;
            z-index: 1;
        }

        #col_1
        {
            border-radius: 10px;
            height: 100%;

        }

        #column_inf
        {
            text-align: center;
            padding: 1%;
            font-weight: bolder;
        }

        #column_inf_2
        {
            text-align: center;
            padding: 1%;
            border-bottom: 1px solid black;
        }

        #lesson
        {
            position: relative;
            top : 20rem;
            z-index: 2;
        }
        
        .icon{
                border: none;
                width: 200%;
                border-radius: 20px;
                height: 3em;
                margin-left: 200%;
                text-align: center;
                background-color: #DDDDDD;
            }
            
        .icon:hover{

            background-color: #009900;
            color: white;
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


                

        </style>
    </head>

    <body>
        <%
            StudentDTO stud = null;
            TeacherDTO teac = null;
            AdminDTO admin = null;
            String username = "";
            String role = "";
            CourseDAO dao = new CourseDAO();

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

        <%! CourseDTO course;%>
        <form action="MainController">
            <div class="container">
                <nav class="navbar navbar-expand-lg bg-light" id="background">
                    <div class="container-fluid">
                        <a href="http://localhost:8084/CODE_LEARN/View/home.jsp" style="text-decoration: none; color: black;">
                            <div class="icon">
                                <ion-icon name="home-outline"></ion-icon></br>
                                <span>Home</span>
                            </div>
                        </a>
                    </div>
                    <%
                        if (role.equals("student") || role.equals("teacher")) {
                    %>
                    <div class="container-fluid">
                        <input class="navbar-brand" type="submit" name="action" value="My Courses" style="position: relative; top: 1rem;">
                    </div>
                    <%
                        }
                    %>

                    <%
                        if (session.getAttribute("ACCOUNT") != null) {
                    %>
                    <div class="container-fluid" style="">
                        <span class="navbar-brand" >
                            <div class="dropdown">
                                <div class="dropbtn" style="cursor:pointer; position: relatiive; right: 2rem; border: 1px solid black; padding: 3%;"><span style="">Welcome, <%= username%></span> </button>
                                <div class="dropdown-content">
                                    <input type="submit" name="action" value="View Profile"></br>
                                    <input type="submit" name="action" value="Edit Profile"></br>
                                    <input type="submit" name="action" value="Logout"></br>
                                </div>
                            </div>

                        </span>
                    </div>
                    <%
                    } else {
                    %>
                    <div class="container-fluid">
                        <a href="http://localhost:8084/CODE_LEARN/Access/login.jsp" style="text-decoration: none; color: black;">
                            <div class="icon">
                                    <ion-icon name="log-in-outline"></ion-icon></br>
                                    <span syle="padding: 5px">Login</span>
                            </div>
                        </a>

                    </div>
                    <%
                        }
                    %>
                </nav>
            </div>
        </form>
                </br>
                </br>
                </br>
                </br>
        <%! CourseDTO dto = null;%>

        <%
            dto = (CourseDTO) request.getAttribute("course");
        %>

        <div class="container px-4" id="detail_frame">
            <div class="row g-2">
                <div class="col-6" >
                    <div class="p-3 border bg-light" >
                        <img src="<%= dto.getImage()%>" width="150px" height="150px" style="margin-right: 2px; border: 1px solid black; border-radius: 30px;">
                        <span id="column_inf">Course Name : <%= dto.getName()%> </span>
                    </div>
                </div>
                <div class="col-6" >
                    <div class="p-3 border bg-light" ><p id="column_inf">Teacher Name :<%= dao.getTeacherName(dto.getName())%> </p></div>
                </div>
                <div class="col-6" >
                    <div class="p-3 border bg-light" >
                        <p id="column_inf">
                            Date Open: <%= dto.getDate_Open()%>
                        </p>
                        <p id="column_inf">
                            Date Close: <%= dto.getDate_Close()%>
                        </p>
                    </div>
                </div>
                <div class="col-6" >
                    <div class="p-3 border bg-light" >
                        <p id="column_inf">
                            Rating : <%= dto.getRating()%>
                        </p>
                    </div>
                </div>
                <div class="col-6" >
                    <div class="p-3 border bg-light" >
                        <p id="column_inf">
                            Description : <%= dto.getDescription()%> </br>
                            Exam date: 
                        </p>
                    </div>
                </div>
            </div>
            <%
                if (stud != null) {
                    String enrollStatus = (String) session.getAttribute("ENROLL");
            %>
            <form action="MainController">
                <input type="hidden" name="courseName" value="<%= dto.getName()%>" />
                <input type="submit" name="action" class="fadeIn fourth" value="Enroll Course"  style="width: 20%; position: relative; margin-left: 55rem;">
            </form>
            <%
            } else if (stud == null && role.equals("")) {
            %>
            <form action="MainController">
                <input type="hidden" name="courseName" value="<%= dto.getName()%>" />
                <input type="hidden" name="action" value="Login" />
                <input type="submit" style="position: relative; left: 12em;" name="submit" class="fadeIn fourth" value="Enroll Course" style="width: 20%; position: relative; margin-left: 55rem;">
            </form>
            <%
                }
            %>
        </div>

<!--        <div class="container px-4" id="lesson">
            <div class="row g-2">
                <div class="col-6" >
                    <div class="p-3 border bg-light" >
                        <p id="column_inf_2" style="background-color: rgb(228, 217, 217);">
                            Name ... (database query)
                        </p>
                        <p id="column_inf_2">
                            <a href="#" style="text-decoration: none; color:black;">
                                Lesson 1...
                            </a>
                        </p>
                    </div>
                </div>
                <div class="col-6" >
                    <div class="p-3 border bg-light" >
                        <span>
                            <p id="column_inf_2" style="background-color: rgb(228, 217, 217);">
                                Name ... (database query)
                            </p>
                        </span>
                        <span >
                            <p id="column_inf_2">
                                <a href="#" style="text-decoration: none; color:black;">
                                    Lesson 2...
                                </a>
                            </p>
                        </span>
                    </div>
                </div>
            </div>   
        </div>-->
        <%
            if (role.equals("teacher")) {
        %>
        <div class="container px-4" id="detail_frame">
            <div class="row g-2">
                <form action="MainController">
                    <input type="submit" value="Create Exam" name="action" style="position: relative; left: 5rem;"/>
                </form>
            </div>
        </div>
        <%
            }
        %>

        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </body>
</html>
