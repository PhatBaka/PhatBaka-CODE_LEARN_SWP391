<%-- 
    Document   : viewteacherprofile
    Created on : Jun 17, 2022, 10:59:16 AM
    Author     : HoangMinh
--%>

<%@page import="dto.AdminDTO"%>
<%@page import="dto.TeacherDTO"%>
<%@page import="dto.StudentDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" href="/css/teacherprofile.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <title>Profile</title>

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
            
            /*
                Card
            */
            
            * {
    margin: 0;
    padding: 0
}

body {
    background-color: #000
}

.card {
    width: 350px;
    background-color: #efefef;
    border: none;
    cursor: pointer;
    transition: all 0.5s;
}

.image img {
    transition: all 0.5s
}

.card:hover .image img {
    transform: scale(1.5)
}

.btn {
    height: 140px;
    width: 140px;
    border-radius: 50%
}

.name {
    font-size: 22px;
    font-weight: bold
}

.idd {
    font-size: 14px;
    font-weight: 600
}

.idd1 {
    font-size: 12px
}

.number {
    font-size: 22px;
    font-weight: bold
}

.follow {
    font-size: 12px;
    font-weight: 500;
    color: #444444
}

.btn1 {
    height: 40px;
    width: 150px;
    border: none;
    background-color: #000;
    color: #aeaeae;
    font-size: 15px
}

.text span {
    font-size: 13px;
    color: #545454;
    font-weight: 500
}

.icons i {
    font-size: 19px
}

hr .new1 {
    border: 1px solid
}

.join {
    font-size: 14px;
    color: #a0a0a0;
    font-weight: bold
}

.date {
    background-color: #ccc
}

input[type=button], input[type=submit], input[type=reset]  {
            background-color: #CCCCCC	;
            border: none;
            color: black;
            padding: 15px 80px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            text-transform: uppercase;
            font-size: 13px;
            -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
            box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
            -webkit-border-radius: 5px 5px 5px 5px;
            border-radius: 5px 5px 5px 5px;
            -webkit-transition: all 0.3s ease-in-out;
            -moz-transition: all 0.3s ease-in-out;
            -ms-transition: all 0.3s ease-in-out;
            -o-transition: all 0.3s ease-in-out;
            transition: all 0.3s ease-in-out;
            
            
        }
        input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
             background-color: #009933;
            color: white;
        }
        
        .icon{
                background-color: #CCCCCC	;
                border: none;
                color: black;
                padding: 15px 80px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                text-transform: uppercase;
                font-size: 13px;
                -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
                box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
                -webkit-border-radius: 5px 5px 5px 5px;
                border-radius: 5px 5px 5px 5px;
                -webkit-transition: all 0.3s ease-in-out;
                -moz-transition: all 0.3s ease-in-out;
                -ms-transition: all 0.3s ease-in-out;
                -o-transition: all 0.3s ease-in-out;
                transition: all 0.3s ease-in-out;
            }
            
            .icon:hover{
                color: white;
                background-color:#009933; 
            }
        </style>
</head>

<body>
    <%
        StudentDTO stud = null;
        TeacherDTO teac = null;
        AdminDTO admin = null;
        String username = "";
        String role = "";

        if (session.getAttribute("role") != null && session.getAttribute("ACCOUNT") != null) {
            role = (String) session.getAttribute("role");
            if (role.equals("admin")) {
                admin = (AdminDTO) session.getAttribute("ACCOUNT");
                username = admin.getAdminName();
            } else if (role.equals("teacher")) {
                teac = (TeacherDTO) session.getAttribute("ACCOUNT");
                username = teac.getName();
            } else if (role.equals("student")) {
                stud = (StudentDTO) session.getAttribute("ACCOUNT");
                username = stud.getUsername();
            }
        }
    %>
    <form action="MainController">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container-fluid">
					<c:url var="home" value="${requestScope.contextPath}/View/home.jsp"></c:url>
					<a href="${home}" style="text-decoration: none; color: black;">
						<span class="icon">Home</ion-icon></span>
					</a>
				  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				  </button>

				  <div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<%
						if (role.equals("student") || role.equals("teacher")) {
						%>
                                                
					  <li class="nav-item" style="position: relative; left: 1rem; top: 0.3rem;">
						<input class="navbar-brand" type="submit" name="action" value="My Courses" >
					  </li>
					  <%
							}
					  %>
                                          
					  <li class="nav-item" style="position: relative; left: 1rem; top: 0.1rem;">
						<span class="navbar-brand" href="#" style="cursor:pointer;">
							<div class="dropdown">
								<button class="icon">Notification</ion-icon></button>
								<div class="dropdown-content" id="drop-info">
									<a href="#">Exam</a>
									<a href="#">Exam</a>
									<a href="#">Exam</a>
								</div>
							</div>               
						</span>
					  </li>
					  <%
							if (session.getAttribute("ACCOUNT") != null) {
						%>
					  <li class="nav-item" style="position: relative; left: 1rem;">
						<span class="navbar-brand" style="cursor:pointer;">
							<div class="dropdown">
								<button class="icon">Welcome, <%= username%></button>
								<div class="dropdown-content">
									<input type="hidden" name="profileName" value="<%= username %>" />
									<input type="submit" name="action" value="View Profile">
									<input type="submit" name="action" value="Edit Profile">
									<input type="submit" name="action" value="Logout">
								</div>
							</div>
	
						</span>
					  </li>
					  <%
                                                    }
                                            %>
					  
					</ul>
				  </div>
				</div>
			</nav>
        </div>
    </form>

    <div class="wrapper fadeInDown">
        <%
            if (role.equals("teacher")) {
        %>
        <div id="formContent" style="padding:2%;">
            <h3 style="color: white; text-align: center">My Profile</h3>


            <div class="container mt-4 mb-4 p-3 d-flex justify-content-center"> 
            <div class="card p-4"> 
                <div class=" image d-flex flex-column justify-content-center align-items-center"> 
                    <button class="btn btn-secondary"> 
                        <img src="<%= teac.getAvatar() %>" height="100" width="100" style="border-radius: 50%;"/>
                    </button> 
                    <span class="name mt-3">Teacher Information</span> 
                    <span class="idd"><%= teac.getName() %></span> 
                    <div class="d-flex flex-row justify-content-center align-items-center gap-2"> 
                        <span class="idd1">Phone Number: <%= teac.getPhone_Num() %></span> 
                        <span><i class="fa fa-copy"></i></span> 
                    </div> 
                    <div class="d-flex flex-row justify-content-center align-items-center mt-3"> 
                        <span class="number" style="text-align: center;">
                            <div class="text mt-3"> 
                        <span> <%= teac.getInformation() %>
                            <br>
                            Degree: Các em muốn bằng nào tui cũng có
                        </span> 
                    </div> 
                        </span> 
                    </div> 
                    <div class=" d-flex mt-2">
                        <button class="btn1 btn-dark">Edit Profile</button> 
                    </div> 
                     
                        <span class="join">Joined May,2021</span> 
                    </div> 
                </div> 
            </div>
        </div>
    </div>
        <%
        } else if (role.equals("student")) {
        %>
        <div id="formContent" style="padding:2%;">
            <h3>My Profile</h3>

            <ul class="list-group">
                <li class="list-group-item">Id: <%= stud.getId_Student() %></li>
                <li class="list-group-item">Username: <%= stud.getUsername() %></li>
                <li class="list-group-item">Phonenumber: </li>
                <li class="list-group-item">Email:</li>
               


            </ul>
        </div>
        <%
        } else if (role.equals("admin")) {
        %>
        <div id="formContent" style="padding:2%;">
            <h3>My Profile</h3>

            <ul class="list-group">
                <li class="list-group-item">Username: <%= username%></li>
                <li class="list-group-item">Phonenumber: </li>
                <li class="list-group-item">Email:</li>
                <li class="list-group-item">Degree:</li>


            </ul>
        </div>
        <%
            }
        %>
    </div>
    
    
    
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

<footer>

</footer>
</html>
