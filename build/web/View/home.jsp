<%-- 
    Document   : home
    Created on : May 30, 2022, 10:45:59 AM
    Author     : HoangMinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dto.CourseDTO"%>
<%@page import="java.util.List"%>
<%@page import="dao.CourseDAO"%>
<%@page import="dto.StudentDTO"%>
<%@page import="dto.AdminDTO"%>
<%@page import="dto.TeacherDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="https://png.pngtree.com/png-vector/20190830/ourlarge/pngtree-code-lab-logo-design-inspiration-png-image_1716386.jpg">
        <link href="/css/home.css" type="text/css" rel="stylesheet">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <title>Home</title>

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

.dropdown:hover .icon {background-color: #3e8e41;}

.icon{
    border: none;
    width: 200%;
    border-radius: 20px;
    height: 3em;
    margin-left: 200%;
}
              
           
        </style>


    </head>

    <%
        StudentDTO stud = null;
        TeacherDTO teac = null;
        AdminDTO admin = null;
        String username = "";
        String role = "";
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
                      <a href="#">Profile</a>
                      <a href="#">Edit Profile</a>
                      <a href="#">Logout</a>
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
                                        <input type="hidden" name="profileName" value="<%= username %>" />
                                        <input type="submit" name="action" value="View Profile">
                                        <input type="submit" name="action" value="Edit Profile">
                                        <input type="submit" name="action" value="logout">
                                    </form>
                                </div>
                            </div>

                        </span>
                    </div>
                    <%
                        }else{
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
        </form>

        <div class="search_container">
            <div class="input-group mb-3" style="width: 40%; margin-left: 10rem;">
                <input type="text" class="form-control" placeholder="Search anything..." aria-label="Recipient's username" aria-describedby="basic-addon2">
                <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="button" style="background-color: rgb(201, 250, 8); margin-left: 1rem;">Button</button>
                </div>
            </div>
        </div>
                
        <div class="container_2">
            <div class="row align-items-center" >
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
                        </div>
                    </div>
                </div>
                </form>
               <%
                   }
               %>
            </div>
            
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    </body>
</html>