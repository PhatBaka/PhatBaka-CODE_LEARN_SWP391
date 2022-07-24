<%-- 
    Document   : home
    Created on : May 30, 2022, 10:45:59 AM
    Author     : HoangMinh
--%>

<%@page import="dto.ExamDTO"%>
<%@page import="dao.ExamDAO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dto.CourseDTO"%>
<%@page import="java.util.List"%>
<%@page import="dao.CourseDAO"%>
<%@page import="dto.StudentDTO"%>
<%@page import="dto.AdminDTO"%>
<%@page import="dto.TeacherDTO"%>
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
            }

            #frame
            {
                margin-right: 10px;
                margin-left: 10px;
                padding: 1%;
                display: flex;

            }

            .search
            {
                width: 100%;
                padding: 2%;
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
            .dropdown-content input {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            /* Change color of dropdown links on hover */
            .dropdown-content input:hover {background-color: #ddd;}

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
            
            .icon:hover{
                color: white;
            }
            
            <!--search bar-->
            

.webdesigntuts-workshop {
	height: 100%;
	position: relative;
	text-align: center;
	width: 100%;
}

.webdesigntuts-workshop:before,
.webdesigntuts-workshop:after {

	display: block;	
	height: 1px;
	left: 50%;
	margin: 0 0 0 -400px;
	position: relative;
	width: 800px;
        
}

.webdesigntuts-workshop:before {
	background: #444;
	background: linear-gradient(left, #151515, #444, #151515);
	top: 192px;
        
}

.webdesigntuts-workshop:after {
	background: #000;
	background: linear-gradient(left, #151515, #000, #151515);	
	top: 191px;
}

.webdesigntuts-workshop form {
	background: #111;
	background: linear-gradient(#1b1b1b, #111);
	border: 1px solid #000;
	border-radius: 5px;
	box-shadow: inset 0 0 0 1px #272727;
	display: inline-block;
	font-size: 0px;
	margin: 150px auto 0;
	padding: 20px;
	position: relative;
	z-index: 1;
}

.webdesigntuts-workshop input {
	background: #222;	
	background: linear-gradient(#333, #222);	
	border: 1px solid #444;
	border-radius: 5px 0 0 5px;
	box-shadow: 0 2px 0 #000;
	color: #888;
	display: block;
	float: left;
	font-family: 'Cabin', helvetica, arial, sans-serif;
	font-size: 13px;
	font-weight: 400;
	height: 40px;
	margin: 0;
	padding: 0 10px;
	text-shadow: 0 -1px 0 #000;
	width: 200px;
        
}

.ie .webdesigntuts-workshop input {
	line-height: 40px;
        
}

.webdesigntuts-workshop input::-webkit-input-placeholder {
   color: #888;
}

.webdesigntuts-workshop input:-moz-placeholder {
   color: #888;
}

.webdesigntuts-workshop input:focus {
	animation: glow 800ms ease-out infinite alternate;
	background: #222922;
	background: linear-gradient(#333933, #222922);
	border-color: #393;
	box-shadow: 0 0 5px rgba(0,255,0,.2), inset 0 0 5px rgba(0,255,0,.1), 0 2px 0 #000;
	color: #efe;
	outline: none;
}

.webdesigntuts-workshop input:focus::-webkit-input-placeholder { 
	color: #efe;
}

.webdesigntuts-workshop input:focus:-moz-placeholder {
	color: #efe;
}

input[type=button], input[type=submit], input[type=reset]  {
            background-color: #56baed;
            border: none;
            color: white;
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
            margin: 5px 20px 40px 20px;
            -webkit-transition: all 0.3s ease-in-out;
            -moz-transition: all 0.3s ease-in-out;
            -ms-transition: all 0.3s ease-in-out;
            -o-transition: all 0.3s ease-in-out;
            transition: all 0.3s ease-in-out;
        }

        input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
            background-color: #39ace7;

.webdesigntuts-workshop button {
	background: #222;
	background: linear-gradient(#333, #222);
	box-sizing: border-box;
	border: 1px solid #444;
	border-left-color: #000;
	border-radius: 0 5px 5px 0;
	box-shadow: 0 2px 0 #000;
	color: #fff;
	display: block;
	float: left;
	font-family: 'Cabin', helvetica, arial, sans-serif;
	font-size: 13px;
	font-weight: 400;
	height: 40px;
	line-height: 40px;
	margin: 0;
	padding: 0;
	position: relative;
	text-shadow: 0 -1px 0 #000;
	width: 80px;
}	

.webdesigntuts-workshop button:hover,
.webdesigntuts-workshop button:focus {
	background: #292929;
	background: linear-gradient(#393939, #292929);
	color: #5f5;
	outline: none;
}

.webdesigntuts-workshop button:active {
	background: #292929;
	background: linear-gradient(#393939, #292929);
	box-shadow: 0 1px 0 #000, inset 1px 0 1px #222;
	top: 1px;
}

@keyframes glow {
    0% {
		border-color: #393;
		box-shadow: 0 0 5px rgba(0,255,0,.2), inset 0 0 5px rgba(0,255,0,.1), 0 2px 0 #000;
    }	
    100% {
		border-color: #6f6;
		box-shadow: 0 0 20px rgba(0,255,0,.6), inset 0 0 10px rgba(0,255,0,.4), 0 2px 0 #000;
    }
}

            
        </style>


    </head>

    <%
        
        StudentDTO stud = null;
        TeacherDTO teac = null;
        AdminDTO admin = null;
        String username = "";
        String role = "";
        List<ExamDTO> examlist = ExamDAO.getNotiExam();
        List<CourseDTO> courselist = CourseDAO.display();
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

    <body>
        <c:set var="role" value="${sessionScope.role}" />
        <div class="container">
            <nav class="navbar navbar-expand-lg bg-light" id="background">
                <div class="container-fluid">
                    <span class="navbar-brand" style="cursor:pointer;">
                        <div class="dropdown">
                            <c:url var="home" value="${requestScope.contextPath}/View/home.jsp"></c:url>
                            <a href="${home}" style="text-decoration: none; color: black;"> 
                                <button class="icon">
                                    <ion-icon name="home-outline"></ion-icon></br>
                                    <span>Home</span>
                                </button>
                            </a>
                        </div>
                    </span>
                </div>
                <%
                    if (role.equals("student") || role.equals("teacher")) {
                %>
                <div class="container-fluid">
                   
                    <form action="MainController">
                        <input type="submit" class="navbar-brand" value="My Courses" name="action" style="position: relative; left: 7rem; border-radius:40px"/>
                    </form>
                </div>
                <%
                    }
                %>
                <div class="container-fluid">
                    <span class="navbar-brand" style="cursor:pointer;">
                        <div class="dropdown">
                            <button class="icon" style="position: relative; left:3rem;">
                                <ion-icon name="notifications-outline"></ion-icon></br>
                                <span syle="padding: 5px">Noti</span>
                            </button>
                            <div class="dropdown-content" id="drop-info">
                                
                                <%
                                    if (role.equals("student") && examlist != null) {
                                        for (ExamDTO exam : examlist) {
                                %>
                                <form action="MainController">
                                    <input type="hidden" name="profileName" value="<%= username%>" />
                                    <input type="text" name="examName" value="<%= exam.getName()%>" /> 
                                    <input type="text" name="examDate" value="<%= String.valueOf(exam.getDate()) %>" />
                                    <input type="submit" name="action" value="View Exam"> </br>
                                </form>
                                <%
                                        }
                                    }
                                %>
                            </div>
                        </div>

                    </span>
                </div>


                <%
                    if (session.getAttribute("ACCOUNT") != null) {
                %>
<!--                <div class="container-fluid">
                    <span class="navbar-brand" style="cursor:pointer;">
                        <div class="dropdown">
                            <button class="dropbtn" style="border-radius: 25px;">Welcome, <%= username%></button>
                            <div class="dropdown-content">
                                <form action="MainController" >
                                    <input type="hidden" name="profileName" value="<%= username%>" style="text-align:center;"/>
                                    <input type="submit" name="action" value="View Profile" style="text-align:center;">
                                    <input type="submit" name="action" value="Edit Profile" style="text-align:center;">
                                    <input type="submit" name="action" value="Logout">
                                </form>
                                    
                            </div>
                        </div>

                    </span>
                </div>-->
                <div class="container-fluid">
                        <span class="navbar-brand" style="cursor:pointer;">
                            <div class="dropdown">
                                <button class="dropbtn">Welcome, <%= username%></button>
                                <div class="dropdown-content">
                                    <input type="submit" name="action" value="View Profile"></br>
                                    <input type="submit" name="action" value="Edit Profile"></br>
                                    <input type="submit" name="action" value="Logout"></br>
                                </div>
                            </div>

                        </span>
                    </div>                    
                <%
                } else {
                %>
                <div class="container-fluid" >
                    <span class="navbar-brand" style="cursor:pointer;">
                        <div class="dropdown">
                            <c:url var="login" value="${requestScope.contextPath}/Access/login.jsp"></c:url>
                            <a href="${login}" style="text-decoration: none; color: black;">
                                <button class="icon">
                                    <ion-icon name="log-in-outline"></ion-icon></br>
                                    <span syle="padding: 5px">Login</span>
                                </button>
                            </a>
                        </div>
                    </span>
                </div>
                <%
                    }
                %>
            </nav>
            
        </div>      

            <div class="container_2">
            <div class="row align-items-center" >
                <div class="search">
                    <div class="webdesigntuts-workshop">
                    <form action="" method="" style="position: relative; top: -1rem; right: 1rem;">		    
                            <input type="search" placeholder="What are you looking for?">		    	
                            <button><ion-icon name="search"></ion-icon></button>
                    </form>
                </div>
                </div>
                <%
                    int count = 0;
                    for (count = 0; count < 3; count++) {
                %>
                <form action="MainController" >
                    <div class="col-sm" id="frame">
                        <div class="card" style="width: 18rem; margin: auto;">
                            <div class="card-body">
                                <img src="<%= courselist.get(count).getImage()%>" style="width:40%;    "/>
                                <input type="hidden" name="courseName" value="<%= courselist.get(count).getName()%>" />
                                <h5 class="card-title"><%= courselist.get(count).getName()%></h5>
                                <p class="card-text"><%= courselist.get(count).getDescription()%></p>
                                <input style="background-color: rgba(8, 189, 250, 0.092); margin-left: 1rem;" class="btn btn-outline-secondary"
                                       type="submit" value="Course Details" name="action" />
                            </div>
                        </div>
                    </div>
                </form>
                <%
                    }
                %>
            </div>

        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    </body>
</html>