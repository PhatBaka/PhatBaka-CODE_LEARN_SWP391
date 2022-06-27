<<<<<<< HEAD
<%-- 
    Document   : home
    Created on : May 30, 2022, 10:45:59 AM
    Author     : HoangMinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dto.CourseDTO"%>
<%@page import="java.util.List"%>
=======
>>>>>>> parent of e7be258 (...)
<%@page import="dao.CourseDAO"%>
<%@page import="java.util.List"%>
<%@page import="dto.CourseDTO"%>
<%@page import="dto.AdminDTO"%>
<%@page import="dto.TeacherDTO"%>
<%@page import="dto.StudentDTO"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="https://png.pngtree.com/png-vector/20190830/ourlarge/pngtree-code-lab-logo-design-inspiration-png-image_1716386.jpg">
        <link href="/CSS/Home.css" type="text/css" rel="stylesheet">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <title>Course</title>
        <style>
            body
            {
                background-image: url(https://i.pinimg.com/originals/1c/54/f7/1c54f7b06d7723c21afc5035bf88a5ef.png);
                background-attachment: fixed;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
            }

            .container_2
            {
                padding: 1%;
                width: 100%;
                text-align: center;
                position: absolute;
                top: 25rem;
            }

            #frame
            {
                margin-right: 10px;
                margin-left: 10px;
                padding: 1%;
                display: flex;

            }

            .search_container
            {
                width: 100%;
                padding: 2%;
                position: relative;
                top: 3rem;
            }
<<<<<<< HEAD

            /* Dropdown Button */
            .dropbtn {
                background-color: #04AA6D;
                color: white;
                padding: 16px;
                font-size: 16px;
                border: none;
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
            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            /* Change color of dropdown links on hover */
            .dropdown-content a:hover {background-color: #ddd;}

            /* Show the dropdown menu on hover */
            .dropdown:hover .dropdown-content {display: block;}

            /* Change the background color of the dropdown button when the dropdown content is shown */
            .dropdown:hover .dropbtn {background-color: #3e8e41;}
            
                        .dropbicon {
                background-color: #04AA6D;
                color: white;
                padding: 16px;
                font-size: 16px;
              
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
            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            /* Change color of dropdown links on hover */
            .dropdown-content a:hover {background-color: #ddd;}

            /* Show the dropdown menu on hover */
            .dropdown:hover .dropdown-content {display: block;}

            /* Change the background color of the dropdown button when the dropdown content is shown */
            .dropdown:hover .dropicon {background-color: #3e8e41;}
        </style>


=======
        </style>    
>>>>>>> parent of e7be258 (...)
    </head>

    <%!
        StudentDTO stud = null;
        TeacherDTO teach = null;
        AdminDTO admin = null;
        String role = "";
<<<<<<< HEAD
        List<CourseDTO> courselist = CourseDAO.display();
        if (session.getAttribute("role") != null&&session.getAttribute("ACCOUNT")!=null) {
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

    <body>
        <form action="MainController">
            <div class="container">
                <nav class="navbar navbar-expand-lg bg-light" id="background">
                    <div class="container-fluid">
                        <c:url var="home" value="${requestScope.contextPath}/View/home.jsp"></c:url>
                        <a href="${home}" style="text-decoration: none; color: black;">
                            Home
                        </a>
                    </div>
                    <%
                        if(role.equals("student")||role.equals("teacher")){
                    %>
                    <div class="container-fluid" >
                       <c:url var="mycourse" value="${requestScope.contextPath}/View/mycourse.jsp"></c:url>
                        <a href="${mycourse}">
                            My course
                        </a>
                    </div>
                    <%
                        }
                    %>
                    <div class="container-fluid">
                        <span class="navbar-brand" style="cursor:pointer;">
                            <div class="dropdown">
                                <button class="dropicon" style="border-radius: 25px; width: 5rem;">
                                    <ion-icon name="notifications-outline""></ion-icon>
                                </button>
                                <div class="dropdown-content" >
                                    <input type="hidden" name="profileName" value="<%= username %>" />
                                    <input type="submit" name="action" value="View Profile">
                                    <input type="submit" name="action" value="Edit Profile">
                                    <input type="submit" name="action" value="Logout">
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
                                    <input type="hidden" name="profileName" value="<%= username %>" />
                                    <input type="submit" name="action" value="View Profile">
                                    <input type="submit" name="action" value="Edit Profile">
                                    <input type="submit" name="action" value="Logout">
                                </div>
                            </div>

                        </span>
                    </div>
                    <%
                        }else{
                    %>
                    <div class="container-fluid" >
                       <c:url var="login" value="${requestScope.contextPath}/Access/login.jsp"></c:url>
                        <a href="${login}">
                            Login
                        </a>
                    </div>
                    <%
                        }
                    %>
                </nav>
            </div>
        </form>
=======
        String name = "";
    %>

    <body>
        <div class="container">
            <nav class="navbar navbar-expand-lg bg-light" id="background">
                <div class="container-fluid">
                    <a class="navbar-brand" href="">Home</a>
                </div>
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Catalog</a>
                </div>


                <%
                    if (session.getAttribute("role") != null) {
                        role = String.valueOf(session.getAttribute("role"));
                    }
                    if (role.equals("student")) {
                        stud = (StudentDTO) session.getAttribute("ACCOUNT");
                        name = stud.getUsername();
                    } else if (role.equals("teacher")) {
                        teach = (TeacherDTO) session.getAttribute("ACCOUNT");
                        name = teach.getUserName();
                        out.print("<div class='container-fluid'>"
                                + "<a class='navbar-brand' href='#'>Add Course</a>"
                                + "</div>");
                    } else if (role.equals("admin")) {
                        admin = (AdminDTO) session.getAttribute("ACCOUNT");
                        name = admin.getAdminName();
                        out.print("<div class='container-fluid'>"
                                + "<a class='navbar-brand' href='#'>Add Course</a>"
                                + "</div>");
                    }

                    if (stud == null && teach == null && admin == null) {
                %>
                <div class='container-fluid'>
                    <a class='navbar-brand' href="Access/login.jsp" >Login</a>
                </div>
                <%
                } else {
                %><div class='container-fluid'>
                    <a class='navbar-brand' href='editProfile' style='cursor:pointer;'>Welcome User:  <%= name%> </a>
                </div><%
                    }
                %>
            </nav>
        </div>
>>>>>>> parent of e7be258 (...)

        <div class="search_container">
            <div class="input-group mb-3" style="width: 40%; margin-left: 10rem;">
                <form action="MainController">
                    <input type="text" class="form-control" placeholder="Search anything..." aria-label="Recipient's username" aria-describedby="basic-addon2" name="searchValue">
                    <div class="input-group-append">
                        <input class="btn btn-outline-secondary" type="submit" name="action" value="Search" style="background-color: rgb(201, 250, 8); margin-left: 1rem;">
                    </div>
                </form>
            </div>
        </div>
        <%!
            List<CourseDTO> courselist = null;
        %>


        <%
            courselist = CourseDAO.display();

        %>
        <div class="container_2">
            <div class="row align-items-center" >
<<<<<<< HEAD
                <% 
                    int count = 0;
                    for(count=0;count<3;count++){ 
                %>
                <form action="MainController" >
                <div class="col-sm" id="frame">
                    <div class="card" style="width: 18rem; margin: auto;">
                        <div class="card-body">
                            <img src="<%= courselist.get(count).getImage() %>" style="width:40%;    "/>
                            <input type="hidden" name="courseName" value="<%= courselist.get(count).getName()%>" />
                            <h5 class="card-title"><%= courselist.get(count).getName() %></h5>
                            <p class="card-text"><%= courselist.get(count).getDescription() %></p>
                            <input style="background-color: rgba(8, 189, 250, 0.092); margin-left: 1rem;" class="btn btn-outline-secondary"
                                   type="submit" value="Course Details" name="action" />
=======
                <div class="col" id="frame">
                    <div class="card" style="width: 18rem; margin: auto;">
                        <div class="card-body">
                            <img src="<%= courselist.get(0).getImage()%>" width="150vh" height="150vh">
                            <h5 class="card-title">
                                <%= courselist.get(0).getName()%>
                            </h5>
                            <p class="card-text">
                                <%= courselist.get(0).getDescription()%>
                            </p>
                            <p class="card-text">
                                Rating : <%= courselist.get(0).getRating()%>
                            </p>
                            <button class="btn btn-outline-secondary" type="button" style="background-color: rgba(8, 189, 250, 0.092); margin-left: 1rem;">
                                <a href="MainController?action=coursedetail&courseName=<%= courselist.get(0).getName() %>" class="card-link" style="text-decoration:none; color:black; ">Go to Course</a>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="col" id="frame">
                    <div class="card" style="width: 18rem; margin: auto;">
                        <div class="card-body">
                            <img src="<%= courselist.get(1).getImage()%>" width="150vh" height="150vh">
                            <h5 class="card-title">
                                <%= courselist.get(1).getName()%>
                            </h5>
                            <p class="card-text">
                                <%= courselist.get(1).getDescription()%>
                            </p>
                            <p class="card-text">
                                Rating : <%= courselist.get(1).getRating()%>
                            </p>
                            <button class="btn btn-outline-secondary" type="button" style="background-color: rgba(8, 189, 250, 0.092); margin-left: 1rem;">
                                <a href="MainController?action=coursedetail&courseName=<%= courselist.get(1).getName() %>" class="card-link" style="text-decoration:none; color:black; ">Go to Course</a>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="col" id="frame">
                    <div class="card" style="width: 18rem; margin: auto;">
                        <div class="card-body">
                            <img src="<%= courselist.get(2).getImage()%>" width="150vh" height="150vh">
                            <h5 class="card-title">
                                <%= courselist.get(2).getName()%>
                            </h5>
                            <p class="card-text">
                                <%= courselist.get(2).getDescription()%>
                            </p>
                            <p class="card-text">
                                Rating : <%= courselist.get(2).getRating()%>
                            </p>
                            <button class="btn btn-outline-secondary" type="button" style="background-color: rgba(8, 189, 250, 0.092); margin-left: 1rem;">
                                <a href="MainController?action=coursedetail&courseName=<%= courselist.get(2).getName() %>" class="card-link" style="text-decoration:none; color:black; ">Go to Course</a>
                            </button>
>>>>>>> parent of e7be258 (...)
                        </div>
                    </div>
                </div>
            </div>
            
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    </body>
</html>