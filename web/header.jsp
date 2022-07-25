<%-- 
    Document   : header
    Created on : Jun 20, 2022, 6:57:49 PM
    Author     : Nea
--%>

<%@page import="dto.AdminDTO"%>
<%@page import="dto.TeacherDTO"%>
<%@page import="dto.StudentDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link type="text/css" href="/CSS/Exam.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <title>Exam</title>
        <title>Code_Learn Page</title>
        <style>
            body
            {
                background-image: url(https://i.pinimg.com/originals/1c/54/f7/1c54f7b06d7723c21afc5035bf88a5ef.png);
                background-size:  1340px 960px;
                background-position: 50% 50%; 
                font-family: "Poppins", sans-serif;
                height: 100vh;
            }


        </style>
    </head>
    <body>
        <div class="container">
            <nav class="navbar navbar-expand-lg bg-light" id="background">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Home</a>
                </div>
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Categories</a>
                </div>
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">About Us</a>
                </div>
                <%!
                    int flag = 0;
                %>
                <%
                    String role = (String) session.getAttribute("role");
                    String username = null;
                    StudentDTO stud = null;
                    TeacherDTO teacher = null;
                    AdminDTO admin = null;

                    if (role.equals("student")) {
                        flag = 1;
                        stud = (StudentDTO) session.getAttribute("ACCOUNT");
                        username = stud.getUsername();
                    } else if (role.equals("teacher")) {
                        flag = 2;
                        teacher = (TeacherDTO) session.getAttribute("ACCOUNT");
                        username = teacher.getName();
                    } else if (role.equals("admin")) {
                        flag = 3;
                        admin = (AdminDTO) session.getAttribute("ACCOUNT");
                        username = admin.getAdminName();
                    } else {
                %>
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Login/SignUp</a>
                </div>

                <%
                    }
                    if (username != null) {
                %>
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Welcome <%= username %></a>
                </div>
                <%
                    }
                %>        

            </nav>
        </div>

    </body>
</html>
