<%-- 
    Document   : home
    Created on : May 30, 2022, 10:45:59 AM
    Author     : HoangMinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="https://png.pngtree.com/png-vector/20190830/ourlarge/pngtree-code-lab-logo-design-inspiration-png-image_1716386.jpg">
        <link href="/css/home.css" type="text/css" rel="stylesheet">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <title>Home</title>
        
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
    position: absolute;
    top: 25rem;
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
    top: 3rem;
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