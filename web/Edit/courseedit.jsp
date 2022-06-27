<%-- 
    Document   : courseedit
    Created on : Jun 6, 2022, 11:14:46 AM
    Author     : HoangMinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
    <head lang="en">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link type="text/css" href="/css/courseedit.css" rel="stylesheet">
        <link rel="icon" href="https://cdn.helpex.vn/upload/2019/12/23/55ee433d8b75f32e34155bc3-011719008_50x50.jpg">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <title>Add course</title>
        
        <style>
            body
{
    background-image: url(https://i.pinimg.com/originals/1c/54/f7/1c54f7b06d7723c21afc5035bf88a5ef.png);
    background-size:  1340px 960px;
    background-position: 50% 50%; 
    font-family: "Poppins", sans-serif;
    height: 100vh;
}

#column_pos{
    position: relative;
    left: 10%;
    margin-top: 2%;
    border: 2px solid black;
    width: 80%;
    height: 45%;
    padding: 2%;
    background-color: white;
}

#button{
    position: relative;
    bottom: -45%;
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
  }
  
  input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
    -moz-transform: scale(0.95);
    -webkit-transform: scale(0.95);
    -o-transform: scale(0.95);
    -ms-transform: scale(0.95);
    transform: scale(0.95);
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
              <a class="navbar-brand" href="#">About Us</a>
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
        
        <h3 style="color: white; text-align: center; padding: 2%;">Edit course</h3>
        <div class="row" id="column_pos">
              
          <form action="#" class="course" name="course">
            <div class="row g-2">
              <div class="col-6" >               
                  <label>Teacher Name: <input class="p-3 border bg-light" id="column_inf" placeholder="Teacher name"></label>
              </div>
              <div class="col-6" >
                <div class="p-3 border bg-light" >
                  <label>Date Open: <input class="p-3 border bg-light" id="column_inf" placeholder="Date Open"></label>
                    
                  
                  <label>Date Close: <input class="p-3 border bg-light" id="column_inf" placeholder="Date Close:"></label>
                    
              
                </div>
              </div>
              <div class="col-6" >
                <div class="p-3 border bg-light" >
                  <label>Rating: <input class="p-3 border bg-light" id="column_inf" placeholder="Rating"></label>
                    
                  
                </div>
              </div>
              <div class="col-6" >
                <div class="p-3 border bg-light" >
                  <label>Description: <input class="p-3 border bg-light" id="column_inf" placeholder="Description"></label>
                   
                  
                </div>
              </div>
            </div>   
        </div>

        <div class="container px-4" id="lesson">
          <div class="row g-2">
              <div class="col-6" >
                <div class="p-3 border bg-light" >
                  <label>Name: <input class="p-3 border bg-light" id="column_inf" placeholder="Name"></label>
                     
                    
                    <div id="column_inf_2">
                      <label>Lesson 1: <input class="p-3 border bg-light" id="column_inf" placeholder=" Lesson 1"></label>
                       
                    </div> 
                </div>
              </div>
              <div class="col-6" >
                <div class="p-3 border bg-light" >
                  
                    <div id="column_inf_2" >
                      <label>Name: <input class="p-3 border bg-light" id="column_inf" placeholder="Name"></label>                     
                    </div>                  
                  
                    <div id="column_inf_2">                      
                        <label>Lesson 2: <input class="p-3 border bg-light" id="column_inf" placeholder="Lesson 2"></label>                        
                    </div>
                                  
                </div>
              </div>
            </div>                              
        </form> 
        <input type="submit" id="button" class="fadeIn fourth" value="Add course" style="width: 95%; height: 10%;"> 
        </div>
          
        </div>




     

          <!-- JavaScript Bundle with Popper -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
      <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
      <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  </body>
</html>
