///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package dto;
//
//import java.sql.Date;
//
///**
// *
// * @author nearl
// */
//public class ExamDTO {
//    private int Id_Exam;
//    private String Name;
//    private String Question;
//    private Date date;
//    
//    public ExamDTO(){}
//
//    public ExamDTO(String Name, String Question, Date date) {
//        this.Name = Name;
//        this.Question = Question;
//        this.date = date;
//    }
//   
//    public ExamDTO(int Id_Exam, String Name, String Question, Date date) {
//        this.Id_Exam = Id_Exam;
//        this.Name = Name;
//        this.Question = Question;
//        this.date = date;
//    }
//
//    public void setId_Exam(int Id_Exam) {
//        this.Id_Exam = Id_Exam;
//    }
//
//    public void setName(String Name) {
//        this.Name = Name;
//    }
//
//    public void setQuestion(String Question) {
//        this.Question = Question;
//    }
//
//    public void setDate(Date date) {
//        this.date = date;
//    }
//
//    public int getId_Exam() {
//        return Id_Exam;
//    }
//
//    public String getName() {
//        return Name;
//    }
//
//    public String getQuestion() {
//        return Question;
//    }
//
//    public Date getDate() {
//        return date;
//    }
//    
//}
//}
///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
package dto;
import java.sql.Date;
public class ExamDTO{
    private int id_exam;
    private String name;
    private Date exam_date;
    private int hour;
    private String question;
    private int id_course;
    public ExamDTO(){}

    public ExamDTO(int id_exam, String name, Date exam_date, int hour, String question, int id_course) {
        this.id_exam = id_exam;
        this.name = name;
        this.exam_date = exam_date;
        this.hour = hour;
        this.question = question;
        this.id_course = id_course;
    }

    public void setId_exam(int id_exam) {
        this.id_exam = id_exam;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setExam_date(Date exam_date) {
        this.exam_date = exam_date;
    }

    public void setHour(int hour) {
        this.hour = hour;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public void setId_course(int id_course) {
        this.id_course = id_course;
    }

    public int getId_exam() {
        return id_exam;
    }

    public String getName() {
        return name;
    }

    public Date getExam_date() {
        return exam_date;
    }

    public int getHour() {
        return hour;
    }

    public String getQuestion() {
        return question;
    }

    public int getId_course() {
        return id_course;
    }
    
}
//package dto;
//
//import java.sql.Date;
//
///**
// *
// * @author nearl
// */
//public class ExamDTO {
//
//    private int id_exam;
//    private String name;
//
//    private Date date;
//    private Date exam_date;
//    private int hour;
//    private String subject;
//    private String question;
//    private int id_course;
//    // of answer
//    private int id_answer;
//    private String answer;
//    private int status;
//// of question
//    private int id_question;
//    private String question_url;
////    [Id_Exam]
////      ,[Name]
////      ,[Date]
////      ,[Exam_Date]
////      ,[Hour]
////      ,[Subject]
////      ,[question]
////      ,[Id_Course]
//
//    public ExamDTO(int id_exam, String name, Date date, Date exam_date, int hour, String subject, String question, int id_course, int id_answer, String answer, int status, int id_question, String question_url) {
//        this.id_exam = id_exam;
//        this.name = name;
//        this.date = date;
//        this.exam_date = exam_date;
//        this.hour = hour;
//        this.subject = subject;
//        this.question = question;
//        this.id_course = id_course;
//        this.id_answer = id_answer;
//        this.answer = answer;
//        this.status = status;
//        this.id_question = id_question;
//        this.question_url = question_url;
//    }
//
//    public int getId_answer() {
//        return id_answer;
//    }
//
//    public String getAnswer() {
//        return answer;
//    }
//
//    public int getStatus() {
//        return status;
//    }
//
//    public int getId_question() {
//        return id_question;
//    }
//
//    public String getQuestion_url() {
//        return question_url;
//    }
//
//    public void setId_answer(int id_answer) {
//        this.id_answer = id_answer;
//    }
//
//    public void setAnswer(String answer) {
//        this.answer = answer;
//    }
//
//    public void setStatus(int status) {
//        this.status = status;
//    }
//
//    public void setId_question(int id_question) {
//        this.id_question = id_question;
//    }
//
//    public void setQuestion_url(String question_url) {
//        this.question_url = question_url;
//    }
//    
//    
//
//    public ExamDTO() {
//    }
//
//    public ExamDTO(int id_exam, String name, Date date, Date exam_date, int hour, String subject, String question, int id_course) {
//        this.id_exam = id_exam;
//        this.name = name;
//        this.date = date;
//        this.exam_date = exam_date;
//        this.hour = hour;
//        this.subject = subject;
//        this.question = question;
//        this.id_course = id_course;
//    }
//
//    public ExamDTO(int id_exam, String name, String question, Date date) {
//        this.id_exam = id_exam;
//        this.name = name;
//        this.date = date;
//        this.question = question;
//    }
//
//    public void setId_exam(int id_exam) {
//        this.id_exam = id_exam;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public void setDate(Date date) {
//        this.date = date;
//    }
//
//    public void setExam_date(Date exam_date) {
//        this.exam_date = exam_date;
//    }
//
//    public void setHour(int hour) {
//        this.hour = hour;
//    }
//
//    public void setSubject(String subject) {
//        this.subject = subject;
//    }
//
//    public void setQuestion(String question) {
//        this.question = question;
//    }
//
//    public void setId_course(int id_course) {
//        this.id_course = id_course;
//    }
//
//    public int getId_exam() {
//        return id_exam;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public Date getDate() {
//        return date;
//    }
//
//    public Date getExam_date() {
//        return exam_date;
//    }
//
//    public int getHour() {
//        return hour;
//    }
//
//    public String getSubject() {
//        return subject;
//    }
//
//    public String getQuestion() {
//        return question;
//    }
//
//    public int getId_course() {
//        return id_course;
//    }
//
//}
