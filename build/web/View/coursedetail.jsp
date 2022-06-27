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
                    <input class="navbar-brand" type="submit" name="action" value="Home">
                </div>
                <%
                    if (role.equals("student") || role.equals("teacher")) {
                %>
                <div class="container-fluid">
                    <input class="navbar-brand" type="submit" name="action" value="My Courses" >
                </div>
                <%
                    }
                %>

                <%
                    if (session.getAttribute("ACCOUNT") != null) {
                %>
                <div class="container-fluid">
                    <span class="navbar-brand" style="cursor:pointer;">
                        <div class="dropdown">
                            <button class="dropbtn">Welcome, <%= username%></button>
                            <div class="dropdown-content">
                                <input type="submit" name="action" value="View Profile">
                                <input type="submit" name="action" value="Edit Profile">
                                <input type="submit" name="action" value="Logout">
                            </div>
                        </div>

                    </span>
                </div>
                <%
                } else {
                %>
                <div class="container-fluid">
                    <a href="Access/login.jsp">Login/Signup</a>
                </div>
                <%
                    }
                %>
            </nav>
        </div>
    </form>

    <%! CourseDTO dto = null;%>

    <%
        dto = (CourseDTO) request.getAttribute("course");
    %>

    <div class="container px-4" id="detail_frame">
        <div class="row g-2">
            <div class="col-6" >
                <div class="p-3 border bg-light" ><img src="<%= dto.getImage()%>" width="150px" height="150px">Course Name : <%= dto.getName()%></div>
            </div>
            <div class="col-6" >
                <div class="p-3 border bg-light" ><p id="column_inf">Teacher Name :<%= dao.getTeacherName(dto.getName()) %> </p></div>
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
            <input type="submit" class="fadeIn fourth" value="Enroll course"  style="width: 20%; position: relative; margin-left: 55rem;">
    </div>

    <div class="container px-4" id="lesson">
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
    </div>
    <%
        if (role.equals("teacher")) {
    %>
    <div class="container px-4" id="detail_frame">
        <div class="row g-2">
            <form action="MainController">
                <input type="submit" value="Create Exam" name="action" />
            </form>
        </div>
    </div>
    <%
        }
    %>

    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
