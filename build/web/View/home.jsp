<%@page import="dao.CourseDAO"%>
<%@page import="java.util.List"%>
<%@page import="dto.CourseDTO"%>
<%@page import="dto.AdminDTO"%>
<%@page import="dto.TeacherDTO"%>
<%@page import="dto.StudentDTO"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="https://png.pngtree.com/png-vector/20190830/ourlarge/pngtree-code-lab-logo-design-inspiration-png-image_1716386.jpg">
        <link href="/CSS/Home.css" type="text/css" rel="stylesheet">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <title>Course</title>
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

    <%!
        StudentDTO stud = null;
        TeacherDTO teach = null;
        AdminDTO admin = null;
        String role = "";
        String name = "";
    %>

    <body>
        <div class="container">
            <nav class="navbar navbar-expand-lg bg-light" id="background">
                <div class="container-fluid">
                    <a class="navbar-brand" href="View/home.jsp">Home</a>
                </div>
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Catalog</a>
                </div>
              
                
                <%
                    if (session.getAttribute("role") != null) {
                        role = String.valueOf(session.getAttribute("role"));
                    }
                    if (role.equals("student")) {
                        stud = (StudentDTO) session.getAttribute("ACCOUNT");
                        name = stud.getUsername();
                    } else if (role.equals("teacher")) {
                        teach = (TeacherDTO) session.getAttribute("ACCOUNT");
                        name = teach.getUserName();
                        out.print("<div class='container-fluid'>"
                                + "<a class='navbar-brand' href='#'>Add Course</a>"
                                + "</div>");
                    } else if (role.equals("admin")) {
                        admin = (AdminDTO) session.getAttribute("ACCOUNT");
                        name = admin.getAdminName();
                        out.print("<div class='container-fluid'>"
                                + "<a class='navbar-brand' href='#'>Add Course</a>"
                                + "</div>");
                    }

                    if (stud == null && teach == null && admin == null) {
                        %>
                        <div class='container-fluid'>
                            <a class='navbar-brand' href='Access/login.jsp' >Login</a>
                        </div>
                <%
                    } else {
                        out.print("<div class='container-fluid'>"
                                + "<a class='navbar-brand' href='/editProfile' style='cursor:pointer;'>Welcome User: " + name + " </a>"
                                + "</div>");
                    }
                %>
            </nav>
        </div>

        <div class="search_container">
            <div class="input-group mb-3" style="width: 40%; margin-left: 10rem;">
                <form action="MainController">
                    <input type="text" class="form-control" placeholder="Search anything..." aria-label="Recipient's username" aria-describedby="basic-addon2" name="search">
                    <div class="input-group-append">
                        <input class="btn btn-outline-secondary" type="submit" name="action" value="Search" style="background-color: rgb(201, 250, 8); margin-left: 1rem;">
                    </div>
                </form>
            </div>
        </div>
        <%!
            List<CourseDTO> courselist = null;
        %>


        <%
            int pagenum = 1;
            if(request.getParameter("pagenum")!=null){
                pagenum = Integer.valueOf(request.getParameter("pagenum"));
            }
            courselist = CourseDAO.display(pagenum);
            
        %>
        <div class="container_2">
            <div class="row align-items-center" >
                <div class="col" id="frame">
                    <div class="card" style="width: 18rem; margin: auto;">
                        <div class="card-body">
                            <h5 class="card-title">
                                Course name
                            </h5>
                            <p class="card-text">Description</p>
                            <button class="btn btn-outline-secondary" type="button" style="background-color: rgba(8, 189, 250, 0.092); margin-left: 1rem;">
                                <a href="#" class="card-link" style="text-decoration:none; color:black; ">Go to Course</a>
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
                                <a href="#" class="card-link" style="text-decoration:none; color:black; ">Go to Course</a>
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
                                <a href="#" class="card-link" style="text-decoration:none; color:black; ">Go to Course</a>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <table border="0.5">
                <thead>
                    <tr>
                        Prev
                    </tr>
                    <tr>
                        <a href="View/home.jsp?pagenum=1">1</a>
                    </tr>
                    <tr>
                        <a href="View/home.jsp?pagenum=2">2</a>
                    </tr>
                    <tr>
                        <a href="View/home.jsp?pagenum=3">3</a>
                    </tr>
                    <tr>
                        Next
                    </tr>
                </thead>
            </table>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    </body>
</html>