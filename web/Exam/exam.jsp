<%-- 
    Document   : exam
    Created on : May 31, 2022, 8:46:54 PM
    Author     : HoangMinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head lang="en">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link type="text/css" href="/CSS/Exam.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <title>Exam</title>
        
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

.question
{
    border: 1px solid black;
    width: 100%    ;
    height: 50%;
    margin: 3px 0px 3px 0px;
}

.answer
{
    border: 1px solid black;
    width: 100%    ;
    height: 48%;
    margin: 3px 0px 3px 0px;
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
          <div class="row" id="column_pos">
            <div class="col-sm-8" style="border: 1px solid black; margin: 3px 0px 3px 0px;" >
                
                <div action="#" class="question" >QUESTION HERE</div>                   
                
                <form action="#" class="answer">
                    <div>Answer</div>
                </form>
            </div>
            
            <div class="col-sm-4">col-sm-4</div>
          </div>




       

            <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </body>
    
      
    </html>
