<%-- 
    Document   : markview
    Created on : Jun 1, 2022, 10:52:07 AM
    Author     : HoangMinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="/css/markview.css" type="text/css" rel="stylesheet">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <style>
            body
{
    background-image: url(https://i.pinimg.com/originals/1c/54/f7/1c54f7b06d7723c21afc5035bf88a5ef.png);
    background-size:  1920px 1080px;
    background-position: 60% 100%; 
}


.container_2
{
    padding: 1%;
    margin: 20px;
    position: relative;
    background-color: rgb(237, 217, 217);
    top: 300px;
    left: 23%;
    text-align: center;
    width: 50%;
    cursor: pointer;
    opacity: 0.9;
    border-radius: 10px;
}

.title
{
    color: rgb(0, 0, 0);
}

li
{
    margin-bottom: 1%;
}



        </style>
    
    </head>
    <body>
        <div class="container">
            <nav class="navbar navbar-expand-lg bg-light" id="background">
              <div class="container-fluid">
                <c:url var="home" value="${requestScope.contextPath}/View/home.jsp"></c:url>
                        <a href="${home}" style="text-decoration: none; color: black;">
                            Home
                        </a>
              </div>
              <div class="container-fluid">
                <a class="navbar-brand" href="#">Categories</a>
              </div>
              <div class="container-fluid">
                <a class="navbar-brand" href="#">My Profile</a>
              </div>
              <div class="container-fluid">
                <span class="navbar-brand" href="#" style="cursor:pointer;">Welcome User: ...</span>
              </div>
            </nav>
        </div>

        <div class="container_2">
            <h1 class="title">
                Mark Report
            </h1>
            <ul class="list-group">
                <li class="list-group-item">ID_Exam...</li>
                <li class="list-group-item">ID_Student ...</li>
                <li class="list-group-item">Mark</li>
                
                <!-- STATUS Á ĐƯỢC CODE TRONG BACKEND KHI NHẬP ĐIỂM >=5 HOẶC BAO NHIÊU TÙY MNG THÌ 
                    STATUS ĐƯỢC SET THÀNH "PASSED" CMT LẠI CHO MNG NHỚ, KHI NÀO LÀM XONG THÌ XÓA DÒNG NÀY ĐI NHA
                    :)))) -->
              </ul>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
          
    </body>
</html>
