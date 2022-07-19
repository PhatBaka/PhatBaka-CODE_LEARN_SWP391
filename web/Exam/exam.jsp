<%-- 
    Document   : exam
    Created on : May 31, 2022, 8:46:54 PM
    Author     : HoangMinh
--%>

<%@page import="dto.AnswerDTO"%>
<%@page import="dto.QuestionDTO"%>
<%@page import="java.util.List"%>
<%@page import="dto.ExamDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
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
    <h1 class="title">EXAM PAGE</h1>
    <%        String mark_report = (String) session.getAttribute("MARK_REPORT");
        if (mark_report == null) {
            ExamDTO exam = (ExamDTO) session.getAttribute("EXAM");
            if (exam == null) {
                response.sendRedirect("error.jsp");
            }
    %>
    <div class="row" id="column_pos">
        <div class="col-sm-8" class="frame_exam" >
            <%
                List<QuestionDTO> questions = (List<QuestionDTO>) session.getAttribute("QUESTION");
                List<AnswerDTO> answers = (List<AnswerDTO>) session.getAttribute("ANSWERS");
                List<AnswerDTO> answer_of_person = (List<AnswerDTO>) session.getAttribute("LST_ANSWER"); //moi chinhn+
                float markOfAMark = 0;
                String flag = (String) session.getAttribute("flag");
                if (questions != null && flag == null) {
                    markOfAMark = 10 / questions.size();
                    if (questions.size() > 0) {
                        int index = 0;
                        for (QuestionDTO ques : questions) {
            %>
            <div class="question" ><%= ques.getQuestion_url()%></div>                   
            <%

                if (answers != null) {
                    if (answers.size() > 0) {
            %>

            <form action="MainController" method="POST" class="answer">
                <div>

                    <input name="id_student" type="hidden" value="<%= stud.getId_Student()%>"/>
                    <input name="markOfAQuestion" type="hidden" value="<%= markOfAMark%>"/>
                    <input name="id_exam" type="hidden" value="<%= exam.getId_exam()%>"/>
                    <input name="id_question" type="hidden" value="<%= ques.getId_question()%>"/>
                    <%

                        for (int i = index; i < answers.size(); i++) {
                    %>  


                    <label><%= answers.get(i).getAnswer()%></label>
                    <input name="answer" type="checkbox" value="<%= answers.get(i).getAnswer()%>"
                           <%
                               if (answer_of_person != null) {
                                   if (answer_of_person.size() > 0) {
                                       for (AnswerDTO ans : answer_of_person) {
                                           if (ans.getAnswer() == answers.get(i).getAnswer()) {
                           %>checked<%
                                                               }
                                                           }
                                                       }
                                                   }
                           %>
                           >
                    <input name="status" type="hidden" value="<%= answers.get(i).getStatus()%>"/>

                    <%                    }
                            index += 4;
                        }
                    %>              

                </div>
                <input name="action" type="submit" value="Submit"/>
            </form>
            <%
                            }
                        }
                    }
                }
                if (answer_of_person != null) {
                    markOfAMark = (float) session.getAttribute("RESULT");
%>
            <h2>Mark: <%= markOfAMark%></h2>
            <%
                if (markOfAMark >= 5) {
            %>
            <h2 style="color: red;">YOU HAD PASSED EXAM. CONGRATULATION! <3</h2>
            <%
                }else{
%>                    <h2 style="color: red;">YOU HAD NOT PASSED EXAM</h2>
<%
                }
            %>
            <%
                }
            } else {
            %>
            <h2>Mark: <%= mark_report%></h2>
            <%
                if (new Float(mark_report) >= 5) {
            %>
            <h2 style="color: red;">YOU HAD PASSED EXAM. CONGRATULATION! <3</h2>
            <%
            } else {
            %>
            <h2 style="color: red;">YOU HAD NOT PASSED EXAM</h2>
            <%
                }
            %>
            <%
                }

            %>
        </div>

        <div class="col-sm-4" id="paging">col-sm-4</div>
    </div>

    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>       

</body>


</html>
