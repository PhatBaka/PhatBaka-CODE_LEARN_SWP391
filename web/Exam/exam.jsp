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
    width: 100%;
    padding: 1%;
    height: 50%;
    margin: 3px 0px 3px 0px;
}

.answer
{
    border: 1px solid black;
    padding: 1%;
    width: 100%    ;
    height: 48%;
    margin: 3px 0px 3px 0px;
}

.frame_exam
{
    border: 1px solid black; 
    margin: 3px 0px 3px 0px;
    padding: 2px;
}

#paging
{
    border: 1px solid black;
    margin-top: 2px;
    margin-bottom: 2px;
}

.title
{
    color: white;
    padding: 4px;
    position: relative;
    top: 2rem;  
    text-align: center;
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
        <h1 class="title">EXAM PAGE</h1>
          <div class="row" id="column_pos">
            <div class="col-sm-8" class="frame_exam" >
                
                <div action="#" class="question" >QUESTION HERE</div>                   
                
                <form action="#" class="answer">
                    <div>Answer</div>
                </form>
            </div>
            
              <div class="col-sm-4 rounded-left" class="check " id="paging">
                  <style>
                      .datetime{
                          width:250px;
                          padding: 15px;
                          border: 3px solid #222922 ;
                          border-radius: 15px;
                          margin-top: 50%;
                          margin-left:  70px;
                          font-family: "Segoe UI",sans-serif;
                          border-color: blue;
                      }
                      .date{
                          text-align: center;
                          letter-spacing: 2px;
                          font-size: 20px;
                          font-weight:20px;  
                      }
                        .time{
                          text-align: center;
                          font-size: 23px;
                          font-weight:20px; 
                         letter-spacing:3px;
                      }
                      .time span:not(last-child){
                          letter-spacing:3px;
                          font-size: 25px;
                      }
                      .time span:last-child{
                          background: #39ace7;
                          font-size: 15px;
                          margin-bottom: 25px;
                      }
                  </style>
                  <div class="datetime" >
                      <div class="date">
                          <span id="dayName">day</span>
                           <span id="Month">Month</span>
                            <span id="dayNum">00</span>
                             <span id="year">year</span>
                             
                      </div>
                      <div class="time">
                           <span id="hour">00 :</span>
                           <span id="minutes">00 :</span>
                            <span id="second"> 00</span>
                             <span id="period">AM</span>
                      </div>
                  </div>  
                  
                 
              </div>
          </div>




       

            <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </body>
    
      
    </html>
