<%-- 
<<<<<<< Updated upstream
    Document   : lesson
    Created on : Jun 3, 2022, 6:00:35 PM
=======
    Document   : Lesson
    Created on : Jun 6, 2022, 10:42:21 AM
>>>>>>> Stashed changes
    Author     : Hai Trieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="https://png.pngtree.com/png-vector/20190830/ourlarge/pngtree-code-lab-logo-design-inspiration-png-image_1716386.jpg">
        <link href="/CSS/Lesson.css" type="text/css" rel="stylesheet">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <title>Lesson</title>
        <style>
            body
            {
                background-image: url(https://i.pinimg.com/originals/1c/54/f7/1c54f7b06d7723c21afc5035bf88a5ef.png);
                background-size:  1920px 1080px;
                background-position: 60% 10%; 
            }

            .container_2
            {
                width: 100%;
                padding: 1%;
                position: relative;
                top: 10rem;
                text-align: center;
                height: 100%;
            }

            #frame
            {
                margin-right: 10px;
                margin-left: 10px;
                padding: 1%;
                margin-top: 3%;
            }

            .title
            {
                width: 100%;
                text-align: center;
                color: white;
                position: relative;
                top: 10px;
            }

            #video
            {
                background-color: black;
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
                <a class="navbar-brand" href="#">My Profile</a>
              </div>
              <div class="container-fluid">
                <span class="navbar-brand" href="#" style="cursor:pointer;">Welcome User: ...</span>
              </div>
            </nav>
        </div>
        
        <div class="container_2">
          <h1 class="title">NAME ...</h1>
          <div class="row align-items-center" >
              <div class="col" id="frame">
                  <div class="card" style="width: 50%; margin: auto;">
                     <video class="img-fluid" controls>
                        <source src="/CSS/videoplayback.mp4" type="video/mp4">
                     </video>
                  </div>
              </div>
          </div>
              
      </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
          
    </body>
</html>
