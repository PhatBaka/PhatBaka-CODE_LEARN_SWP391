<%-- 
    Document   : contactview
    Created on : Jun 1, 2022, 11:19:32 AM
    Author     : HoangMinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head lang="en">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link type="text/css" href="/SWP/CSS/ContactView.css" rel="stylesheet">
        <link rel="icon" href="https://cdn.helpex.vn/upload/2019/12/23/55ee433d8b75f32e34155bc3-011719008_50x50.jpg">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <title>Contact View</title>
        <style>
            body
{
    background-image: url(https://i.pinimg.com/originals/1c/54/f7/1c54f7b06d7723c21afc5035bf88a5ef.png);
    background-size:  1920px 980px;
    background-position: 60% 100%; 
}


.container_2
{
    padding: 3%;
    background-color: rgb(202, 203, 202);
    opacity: 0.9;
    border-radius: 30px;
    position: relative;
    top: 200px;
    left: 25%;
    width: 50%;
}

#list_group
{
    position: relative;

}

.View_font
{
    text-align: center; 
    color:rgb(48, 47, 47); 
    font-style:italic;
    margin-bottom: 3%; 
    font-weight: bolder;
    text-shadow: 10px 10px 10px 10px red;
}
        </style>
    
    </head>

    <body>
        <div class="container">
          <nav class="navbar navbar-expand-lg bg-light" id="background">
            <div class="container-fluid">
              <a class="navbar-brand" href="home.jsp">Home</a>
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
            <h1 class="View_font">CONTACT</h1>
            <div class="list-group" id="list_group" style="text-align:center;">
                <p class="list-group-item list-group-item-action">Id Student...</p>
                <p class="list-group-item list-group-item-action">Email... </p>
                <p class="list-group-item list-group-item-action">Parent information...</p>
                <p class="list-group-item list-group-item-action">Phone number....</p>
                <p class="list-group-item list-group-item-action">School....</p>
                <form action="">
                    <input type="submit" value="Edit" class="btn btn-primary btn-lg"  />
                </form>
            </div>
        </div>
        

    <!-- ID Student, Email, Parent information, Phone Num, School-->

          <!-- JavaScript Bundle with Popper -->
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
          <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
          <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </body>
</html>
