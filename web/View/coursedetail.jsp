<%-- 
    Document   : coursedetail
    Created on : May 31, 2022, 10:12:24 PM
    Author     : HoangMinh
--%>

<%@page import="dto.CourseDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head lang="en">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link type="text/css" href="/css/coursedetail.css" rel="stylesheet">
        <link rel="icon" href="https://cdn.helpex.vn/upload/2019/12/23/55ee433d8b75f32e34155bc3-011719008_50x50.jpg">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <title>Course Detail</title>
        
        <style>
            body
{
    background-image: url(https://i.pinimg.com/originals/1c/54/f7/1c54f7b06d7723c21afc5035bf88a5ef.png);
    background-size:  1920px 1080px;
    background-position: 60% 100%; 
}



#detail_frame
{
    position: absolute;
    top: 30%;
    left: 16%;
    background-color: white;
    padding: 1%;

}

#col_1
{
    border-radius: 10px;
    height: 100%;
    
}

#column_inf
{
   text-align: center;
   padding: 1%;
}

#column_inf_2
{
   text-align: center;
   padding: 1%;
   border-bottom: 1px solid black;
}

#lesson
{
    position: absolute;
    top: 70%;
    left: 16%;
}


  


        </style>
    </head>

    <body>
        
        <%! CourseDTO course;%>
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
              <span class="navbar-brand" href="#" style="cursor:pointer;">Welcome Guest</span>
            </div>
          </nav>
        </div>

        <div class="container px-4" id="detail_frame">
          <div class="row g-2">
              <div class="col-6" >
                <div class="p-3 border bg-light" ><p id="column_inf">Teacher Name...</p></div>
              </div>
              <div class="col-6" >
                <div class="p-3 border bg-light" >
                  <p id="column_inf">
                    Date Open: 
                    
                  </p>
                  <p id="column_inf">
                    Date Close: ...
                  </p>
                </div>
              </div>
              <div class="col-6" >
                <div class="p-3 border bg-light" >
                  <p id="column_inf">
                    Rating....
                  </p>
                </div>
              </div>
              <div class="col-6" >
                <div class="p-3 border bg-light" >
                  <p id="column_inf">
                    Description...
                  </p>
                </div>
              </div>
            </div>   
        </div>

        <div class="container px-4" id="lesson">
          <div class="row g-2">
              <div class="col-6" >
                <div class="p-3 border bg-light" >
                    <p id="column_inf_2" style="background-color: rgb(228, 217, 217);">
                      Name ... (database query)
                    </p>
                    <p id="column_inf_2">
                      <a href="#" style="text-decoration: none; color:black;">
                        Lesson 1...
                      </a>
                    </p>
                </div>
              </div>
              <div class="col-6" >
                <div class="p-3 border bg-light" >
                  <span>
                    <p id="column_inf_2" style="background-color: rgb(228, 217, 217);">
                      Name ... (database query)
                    </p>
                  </span>
                  <span >
                    <p id="column_inf_2">
                      <a href="#" style="text-decoration: none; color:black;">
                        Lesson 2...
                      </a>
                    </p>
                  </span>
                </div>
              </div>
            </div>   
        </div>


          <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    </body>
</html>
