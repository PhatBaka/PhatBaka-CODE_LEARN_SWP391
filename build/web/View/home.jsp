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
                <a class="navbar-brand" href="#">Home</a>
              </div>
              <div class="container-fluid">
                <a class="navbar-brand" href="#">Categories</a>
              </div>
              <div class="container-fluid">
                <span class="navbar-brand" href="#" style="cursor:pointer;">
                    <div class="dropdown">
                          
                    <button class="icon"><ion-icon name="notifications-outline"></ion-icon></button>
                    <div class="dropdown-content" id="drop-info">
                      <a href="#">Profile</a>
                      <a href="#">Edit Profile</a>
                      <a href="#">Logout</a>
                    </div>
                </div>               
                </span>
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
               
                </span>
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
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
          
    </body>
</html>