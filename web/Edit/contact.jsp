<%-- 
    Document   : contact
    Created on : Jun 1, 2022, 11:13:48 AM
    Author     : HoangMinh
--%>

<%@page import="dto.ContactDTO"%>
<%@page import="dto.StudentDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
    <head lang="en">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link type="text/css" href="/css/contact.css" rel="stylesheet">
        <link rel="icon" href="https://cdn.helpex.vn/upload/2019/12/23/55ee433d8b75f32e34155bc3-011719008_50x50.jpg">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <title>Contact</title>

        <script type="text/javascript">
            function validateform()
            {
              var email = document.myform.email.value;
              var parentinf = document.myform.parentinf.value;
              var phone = document.myform.phone.value;
              var school = document.myform.school.value;
  
              if(email == null || email == "")
              {
                alert("email can not be null");
                return false;
              }

              if( email == null || email == "" )
              {
                  alert("email can not be null");
                  return false;
              }

              if( parentinf == null || parentinf == "" )
              {
                  alert("parent information cannot be null");
                  return false;
              }

              if( phone == null || phone == "" )
              {
                  alert("phone number can not be null");
                  return false;
              }

              if( school == null || school == "" )
              {
                  alert("your school information can not be null");
                  return false;
              }
            }
          </script>
          
          <style>
              body
{
    background-image: url(https://i.pinimg.com/originals/1c/54/f7/1c54f7b06d7723c21afc5035bf88a5ef.png);
    background-size:  1920px 980px;
    background-position: 60% 100%; 
}


.container_2
{
    padding: 1%;
    border-radius: 30px;
    position: absolute;
    top: 20%;
    background-color: rgb(211, 204, 205);
    width: 50%;
    left: 25%;
    text-align: center;
    opacity: 0.9;
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
                <span class="navbar-brand" href="#" style="cursor:pointer;">
                    <div class="dropdown">
                    <button class="dropbtn">Welcome User</button>
                    <div class="dropdown-content">
                      <a href="#">Profile</a>
                      <a href="#">Edit Profile</a>
                      <a href="#">Logout</a>
                    </div>
                </div>
          </nav>
        </div>
                        <%
                            StudentDTO student = (StudentDTO) session.getAttribute("ACCOUNT");
                        %>
        <div class="container_2">
            <h1 style="text-align:center;">CONTACT FORM</h1>
            <form action="MainController" name="myform" method="post" onsubmit="return validateform()">
                <div class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputGroup-sizing-sm">ID Student: <%= student.getId_Student() %></span>
                </div>
                <div class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputGroup-sizing-sm">Email User: </span>
                    <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="email" placeholder="input your email">
                </div>
                <div class="input-group input-group-sm mb-3">
                  <span class="input-group-text" id="inputGroup-sizing-sm">Phone Number (Parent):  </span>
                  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="phone" placeholder=" input your phone number">
              </div>
                <div class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputGroup-sizing-sm">Parent name(Mother/Father):   </span>
                    <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="parentinf" placeholder=" input father or mother name">
                </div>
                <div class="input-group input-group-sm mb-3">
                    <span class="input-group-text" id="inputGroup-sizing-sm">School:  </span> 
                    <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="school" placeholder="Where is your school?">
                </div>
                <button type="submit" name="action" class="btn btn-primary btn-lg" value="Edit Profile">
                    Edit profile
                </button>
                
            </form>
        </div>

          <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    </body>
</html>
