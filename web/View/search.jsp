<%-- 
    Document   : searchresult
    Created on : Jun 8, 2022, 11:03:43 AM
    Author     : HoangMinh
--%>

<%@page import="java.util.List"%>
<%@page import="dto.CourseDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" href="/css/searchresult.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <title>Search Result</title>

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
            position: absolute;
            left: 10%;
            margin-top: 5%;
            border: 2px solid black;
            width: 80%;
            height: 80%;
            background-color: white;
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



<body>
    <div class="container">
        <nav class="navbar navbar-expand-lg bg-light" id="background">
            <div class="container-fluid">
                <c:url var="home" value="${requestScope.contextPath}/View/home.jsp"></c:url>
                        <a href="${home}" style="text-decoration: none; color: black;">
                            Home
                        </a>
            </div>
           <div class="container-fluid" >
                        <input type="submit" value="My Courses" name="action" style="border: none; background-color: inherit"/>
                    </div>
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
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Login/SignUp</a>
            </div>
        </nav>
    </div>
    <div class="search_container">
        <div class="input-group mb-3" style="width: 40%; margin-left: 10rem;">
            <form action="MainController">
                <input type="text" class="form-control" placeholder="Search anything..." aria-label="Recipient's username" aria-describedby="basic-addon2" name="searchValue" value="<%= request.getParameter("searchValue")%>">
                <div class="input-group-append">
                    <input class="btn btn-outline-secondary" type="submit" name="action" value="Search" style="background-color: rgb(201, 250, 8); margin-left: 1rem;">
                </div>
            </form>
        </div>
    </div>
    <div class="row" id="column_pos">
        <h3>Search Result</h3>
        <%
            String searchValue = request.getParameter("searchValue");
            String urlRewriting = "MainController"
                    + "?action=Search"
                    + "&searchValue=" + request.getParameter("searchValue");
            if (searchValue != null) {
                List<CourseDTO> result = (List<CourseDTO>) request.getAttribute("SEARCH_RESULT");
                if (result != null) {
        %>

        <table border="1">
            <thead>
                <tr>
                    <th>No.</th>
                    <th></th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Teacher</th>
                    <th>Open Date</th>
                    <th>Close Date</th>
                    <th>Rating</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int count = 0;
                    for (CourseDTO dto : result) {
                %>
                <tr>
                    <td>
                        <%= ++count%>
                        .</td>
                    <td>
                        <a href="MainController?action=coursedetail&courseName=<%= dto.getName()%>">
                            <img src="<%= dto.getImage()%>" width="150px" height="100px">
                        </a>
                    </td>
                    <td>
                        <%= dto.getName()%>
                    </td>
                    <td>
                        <%= dto.getDescription()%>
                    </td>
                    <td>
                        <%= dto.getDate_Open()%>
                    </td>
                    <td>
                        <%= dto.getDate_Close()%>
                    </td>
                    <td>
                        <%= dto.getRating()%>
                    </td>
                </tr>
                <%
                    }//end traverse search result
%>
            </tbody>
        </table>
        <table border="0.5">
            <thead>
                <tr>
                    <% 
                    for(int i=0;i<=(count/3);i++){
                        %>
                    <td>
                        <a href="<%= urlRewriting%>&pagenum=<%= i+1 %>"> <%= i+1 %> </a>
                    </td>
                    <%
                    }
                    %>
                    
                    <td>
                        <a href="<%= urlRewriting%>&pagenum=2">2</a>
                    </td>
                    <td>
                        <a href="<%= urlRewriting%>&pagenum=3">3</a>
                    </td>
                </tr>
            </thead>
        </table>
        <%
        } else {
        %>
        <h2>No result matched!!!</h2>
        <%
                }
            }//end searchValue if existed
%>
    </div>


    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>


</html>
