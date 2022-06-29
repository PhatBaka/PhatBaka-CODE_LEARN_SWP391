<%-- 
    Document   : viewteacherprofile
    Created on : Jun 17, 2022, 10:59:16 AM
    Author     : HoangMinh
--%>

<%@page import="dto.AdminDTO"%>
<%@page import="dto.TeacherDTO"%>
<%@page import="dto.StudentDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" href="/css/teacherprofile.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <title>Teacher profile</title>

    <style>
            body
            {
                background-image: url(https://i.pinimg.com/originals/1c/54/f7/1c54f7b06d7723c21afc5035bf88a5ef.png);
                background-size:  1920px 1080px;
                background-position: 60% 10%; 
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
        </style>
</head>

<body>
    <%
        StudentDTO stud = null;
        TeacherDTO teac = null;
        AdminDTO admin = null;
        String username = "";
        String role = "";

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
                    if (role.equals("student") || role.equals("teacher")) {
                %>
                <div class="container-fluid" >
                        <input type="submit" value="My Courses" name="action" style="border: none; background-color: inherit"/>
                    </div>
                <%
                    }
                %>
                 <div class="container-fluid">
                <span class="navbar-brand" href="#" style="cursor:pointer;">
                    <div class="dropdown">
                          
                    <button class="icon"><ion-icon name="notifications-outline"></ion-icon></button>
                    <div class="dropdown-content" id="drop-info">
                      <a href="#">Exam</a>
                      <a href="#">Exam</a>
                      <a href="#">Exam</a>
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
                            <button class="dropbtn">Welcome, <%= username%></button>
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
                    }
                %>
            </nav>
        </div>
    </form>

    <div class="wrapper fadeInDown">
        <%
            if (role.equals("teacher")) {
        %>
        <div id="formContent" style="padding:2%;">
            <h3 style="color: white; text-align: center">My Profile</h3>

            <img height="250vh" width="250vh" style="border-radius: 50%; display: block; margin-left: auto; margin-right: auto" src="<%= teac.getAvatar() %>">
            
            <ul class="list-group" style="padding: 3%; text-align: center; width: 50%; margin-left: 23rem;">
                <li class="list-group-item" >Teacher name: <%= teac.getName() %></li>
                <li class="list-group-item">Phonenumber: <%= teac.getPhone_Num() %> </li>
                <li class="list-group-item">Email: <%= teac.getEmail() %> </li>
                <li class="list-group-item">Information: <%= teac.getInformation() %></li>
                 <li class="list-group-item">Degree: Các em muốn bằng nào tui cũng có</li>
            </ul>
        </div>
        <%
        } else if (role.equals("student")) {
        %>
        <div id="formContent" style="padding:2%;">
            <h3>My Profile</h3>

            <ul class="list-group">
                <li class="list-group-item">Id: <%= stud.getId_Student() %></li>
                <li class="list-group-item">Username: <%= stud.getUsername() %></li>
                <li class="list-group-item">Phonenumber: </li>
                <li class="list-group-item">Email:</li>
               


            </ul>
        </div>
        <%
        } else if (role.equals("admin")) {
        %>
        <div id="formContent" style="padding:2%;">
            <h3>My Profile</h3>

            <ul class="list-group">
                <li class="list-group-item">Username: <%= username%></li>
                <li class="list-group-item">Phonenumber: </li>
                <li class="list-group-item">Email:</li>
                <li class="list-group-item">Degree:</li>


            </ul>
        </div>
        <%
            }
        %>
    </div>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

<footer>

</footer>
</html>
