<%-- 
    Document   : allcourse
    Created on : Jun 13, 2022, 10:54:40 AM
    Author     : HoangMinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head lang="en">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link type="text/css" href="/css/allcourse.css" rel="stylesheet">
        <link rel="icon" href="https://cdn.helpex.vn/upload/2019/12/23/55ee433d8b75f32e34155bc3-011719008_50x50.jpg">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <title>All course</title>
        
        <style>
            body
{
    background-image: url(https://i.pinimg.com/originals/1c/54/f7/1c54f7b06d7723c21afc5035bf88a5ef.png);
    background-size:  1920px 1080px;
    background-position: 60% 10%; 
}

.container_2
{
    padding: 1%;
    width: 100%;
    text-align: center;
    position: relative;
   
}

#frame
{
    margin-right: 10px;
    margin-left: 10px;
    padding: 1%;
    display: flex;

}

.search_container
{
    width: 100%;
    padding: 2%;
    position: relative;
    
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

        <div class="search_container">
            <div class="input-group mb-3" style="width: 40%; margin-left: 10rem;">
                <input type="text" class="form-control" placeholder="Search anything..." aria-label="Recipient's username" aria-describedby="basic-addon2">
                <div class="input-group-append">
                  <button class="btn btn-outline-secondary" type="button" style="background-color: rgb(201, 250, 8); margin-left: 1rem;">Button</button>
                </div>
              </div>
        </div>

        <h2 style="color: aqua; text-align: center;">All courses</h2>

        <div class="container_2">
            <div class="row align-items-center" >
                <div class="col" id="frame">
                    <div class="card" style="width: 18rem; margin: auto;">
                        <div class="card-body">
                          <h5 class="card-title">Course name</h5>
                          <p class="card-text">Description</p>
                          <button class="btn btn-outline-secondary" type="button" style="background-color: rgba(8, 189, 250, 0.092); margin-left: 1rem;">
                            <a href="#" class="card-link" style="text-decoration:none; color:black; ">Go to lesson</a>
                        </button>
                        </div>
                      </div>
                </div>
                <div class="col" id="frame">
                    <div class="card" style="width: 18rem; margin: auto;">
                        <div class="card-body">
                            <h5 class="card-title">Course name</h5>
                            <p class="card-text">Description</p>
                            <button class="btn btn-outline-secondary" type="button" style="background-color: rgba(8, 189, 250, 0.092); margin-left: 1rem;">
                                <a href="#" class="card-link" style="text-decoration:none; color:black; ">Go to lesson</a>
                            </button>
                          </div>
                    </div>
                </div>
                <div class="col" id="frame">
                    <div class="card" style="width: 18rem; margin: auto;">
                        <div class="card-body">
                            <h5 class="card-title">Course name</h5>
                            <p class="card-text">Description</p>
                              <button class="btn btn-outline-secondary" type="button" style="background-color: rgba(8, 189, 250, 0.092); margin-left: 1rem;">
                                  <a href="#" class="card-link" style="text-decoration:none; color:black; ">Go to lesson</a>
                              </button>
                          </div>
                    </div>
                </div>
            </div>

            <div class="container_2">
                <div class="row align-items-center" >
                    <div class="col" id="frame">
                        <div class="card" style="width: 18rem; margin: auto;">
                            <div class="card-body">
                              <h5 class="card-title">Course name</h5>
                              <p class="card-text">Description</p>
                              <button class="btn btn-outline-secondary" type="button" style="background-color: rgba(8, 189, 250, 0.092); margin-left: 1rem;">
                                <a href="#" class="card-link" style="text-decoration:none; color:black; ">Go to lesson</a>
                            </button>
                            </div>
                          </div>
                    </div>
                    <div class="col" id="frame">
                        <div class="card" style="width: 18rem; margin: auto;">
                            <div class="card-body">
                                <h5 class="card-title">Course name</h5>
                                <p class="card-text">Description</p>
                                <button class="btn btn-outline-secondary" type="button" style="background-color: rgba(8, 189, 250, 0.092); margin-left: 1rem;">
                                    <a href="#" class="card-link" style="text-decoration:none; color:black; ">Go to lesson</a>
                                </button>
                              </div>
                        </div>
                    </div>
                    <div class="col" id="frame">
                        <div class="card" style="width: 18rem; margin: auto;">
                            <div class="card-body">
                                <h5 class="card-title">Course name</h5>
                                <p class="card-text">Description</p>
                                  <button class="btn btn-outline-secondary" type="button" style="background-color: rgba(8, 189, 250, 0.092); margin-left: 1rem;">
                                      <a href="#" class="card-link" style="text-decoration:none; color:black; ">Go to lesson</a>
                                  </button>
                              </div>
                        </div>
                    </div>
                </div>

                <div class="container_2">
                    <div class="row align-items-center" >
                        <div class="col" id="frame">
                            <div class="card" style="width: 18rem; margin: auto;">
                                <div class="card-body">
                                  <h5 class="card-title">Course name</h5>
                                  <p class="card-text">Description</p>
                                  <button class="btn btn-outline-secondary" type="button" style="background-color: rgba(8, 189, 250, 0.092); margin-left: 1rem;">
                                    <a href="#" class="card-link" style="text-decoration:none; color:black; ">Go to lesson</a>
                                </button>
                                </div>
                              </div>
                        </div>
                        <div class="col" id="frame">
                            <div class="card" style="width: 18rem; margin: auto;">
                                <div class="card-body">
                                    <h5 class="card-title">Course name</h5>
                                    <p class="card-text">Description</p>
                                    <button class="btn btn-outline-secondary" type="button" style="background-color: rgba(8, 189, 250, 0.092); margin-left: 1rem;">
                                        <a href="#" class="card-link" style="text-decoration:none; color:black; ">Go to lesson</a>
                                    </button>
                                  </div>
                            </div>
                        </div>
                        <div class="col" id="frame">
                            <div class="card" style="width: 18rem; margin: auto;">
                                <div class="card-body">
                                    <h5 class="card-title">Course name</h5>
                                    <p class="card-text">Description</p>
                                      <button class="btn btn-outline-secondary" type="button" style="background-color: rgba(8, 189, 250, 0.092); margin-left: 1rem;">
                                          <a href="#" class="card-link" style="text-decoration:none; color:black; ">Go to lesson</a>
                                      </button>
                                  </div>
                            </div>
                        </div>
                    </div>

                    <div class="container_2">
                        <div class="row align-items-center" >
                            <div class="col" id="frame">
                                <div class="card" style="width: 18rem; margin: auto;">
                                    <div class="card-body">
                                      <h5 class="card-title">Course name</h5>
                                      <p class="card-text">Description</p>
                                      <button class="btn btn-outline-secondary" type="button" style="background-color: rgba(8, 189, 250, 0.092); margin-left: 1rem;">
                                        <a href="#" class="card-link" style="text-decoration:none; color:black; ">Go to lesson</a>
                                    </button>
                                    </div>
                                  </div>
                            </div>
                            <div class="col" id="frame">
                                <div class="card" style="width: 18rem; margin: auto;">
                                    <div class="card-body">
                                        <h5 class="card-title">Course name</h5>
                                        <p class="card-text">Description</p>
                                        <button class="btn btn-outline-secondary" type="button" style="background-color: rgba(8, 189, 250, 0.092); margin-left: 1rem;">
                                            <a href="#" class="card-link" style="text-decoration:none; color:black; ">Go to lesson</a>
                                        </button>
                                      </div>
                                </div>
                            </div>
                            <div class="col" id="frame">
                                <div class="card" style="width: 18rem; margin: auto;">
                                    <div class="card-body">
                                        <h5 class="card-title">Course name</h5>
                                        <p class="card-text">Description</p>
                                          <button class="btn btn-outline-secondary" type="button" style="background-color: rgba(8, 189, 250, 0.092); margin-left: 1rem;">
                                              <a href="#" class="card-link" style="text-decoration:none; color:black; ">Go to lesson</a>
                                          </button>
                                      </div>
                                </div>
                            </div>
                        </div>
                
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
          
    </body>
</html>