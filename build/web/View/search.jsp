<%-- 
    Document   : searchresult
    Created on : Jun 8, 2022, 11:03:43 AM
    Author     : HoangMinh
--%>

<%@page import="java.util.List"%>
<%@page import="dto.CourseDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
              <div class="container-fluid">
                <a class="navbar-brand" href="#">Login/SignUp</a>
              </div>
            </nav>
          </div>
        <div class="search_container">
            <div class="input-group mb-3" style="width: 40%; margin-left: 10rem;">
                <form action="MainController">
                    <input type="text" class="form-control" placeholder="Search anything..." aria-label="Recipient's username" aria-describedby="basic-addon2" name="search" value="<%= request.getParameter("search") %>">
                    <div class="input-group-append">
                        <input class="btn btn-outline-secondary" type="submit" name="action" value="Search" style="background-color: rgb(201, 250, 8); margin-left: 1rem;">
                    </div>
                </form>
            </div>
        </div>
          <div class="row" id="column_pos">
            <h3>Search Result</h3>
            <%
            String searchValue = request.getParameter("search");
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
                        <%= ++count %>
                    .</td>
                    <td>
                        <a href="MainController?action=coursedetail&courseName=<%= dto.getName()%>">
                            <img src="<%= dto.getImage() %>" width="150px" height="100px">
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
                        <%= dto.getDate_Close() %>
                    </td>
                    <td>
                        <%= dto.getRating() %>
                    </td>
                </tr>
                <%
                    }//end traverse search result
                %>
            </tbody>
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
    </body>
    
      
    </html>
