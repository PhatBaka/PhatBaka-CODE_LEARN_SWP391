/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nearl
 */
public class MainController extends HttpServlet {
/*
   *Chú ý: 
    Các use-case đều được đặt tên theo thiết kế đã đề ra trong doc, nếu các use-case mới đuọc đề ra:
    -   Viết keyword so sánh với parameter action -> viết thường
            vì param action đã được xử lý đồng bộ chữ thường(line 62) 
    
    Sửa các keyword so sánh với parameter action -> viết thường
        Vì param action đã được xử lý đồng bộ chữ thường(line 62) 

    Các use-case theo thiết kế đã đề ra: 
    1   Login
    2   Log out
    3   Register
    4   Search by keyword (course)
    5   View course detail
    6   View User Profile 
    7   Edit Profile    _general(user/teacher)
    8   Delete Profile  _general(user/teacher)
    9   Edit Teacher profile _general(Admin/teacher)
    10  Add Teacher profile 
    11  Notification   _general(Admin/teacher)
    12  View Exam  
    13  Add Exam  _general(Admin/teacher)
    14  Edit Exam   _general(Admin/teacher)
    15  Delete Exam   _general(Admin/teacher)
    16  View mark report 
    17  Add course   _general(Admin/teacher)
    18  Edit course  _general(Admin/teacher)
    19  Delete Course   _general(Admin/teacher)
    
    Các cấp độ phân quyền: 
         - level 1: user(low)
         - Level 2: teacher(medium)
         - Level 3: Admin(high)
   
    -   Đặt tên servlet theo url đã định => tránh gây ra lỗi
        -> VD: search by name -> edit course ->quay về servlet SearchController
           ( 2 người phụ trách 2 tính năng search và edit profile)
        
*/
    private static final String ERROR = "";//Nhập vào tên trang khi lỗi xuất hiện.
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
            String url = ERROR;
            String action = request.getParameter("btAction"); // láy parameter name action từ intput type submit 
            //use-case 1
            if("Log In".equals(action)){
                url = "LoginController";
            } 
            //use-case 2
            else if("logout".equals(action)){
                url = "LogoutController";
            }            
            //use-case 3
            else if("Register".equals(action)){
                url = "RegisterController";
            }
            //use-case 4_ Search tên course
            else if("search by keyword".equals(action)){
                url = "SearchController";
            }
            //use-case 5
            else if("view course detail".equals(action)){
                url = "ViewCourseDetailController";
            }
            //user-case 6
            else if("view profile".equals(action)){
                url = "ViewUserProfileController";
            }            
            //use-case 7
            else if("edit profile".equals(action)){
                url = "EditProfileController";
            }
            //use-case 8
            else if("delete profile".equals(action)){
                url = "DeleteProfileController";
            }
            //use-case 9
            else if("edit teacher profile".equals(action)){
                url = "EditTeacheProfileController";
            }            
            //use-case 10
            else if("add teacher profile".equals(action)){
                url = "AddProfileController";
            }
            //use-case 11
            else if("notification".equals(action)){
                url = "NotificationController";
            }
            //use-case 12
            else if("view exam".equals(action)){
                url = "ViewExamController";
            }
            //use-case 13
            else if("add exam".equals(action)){
                url = "AddExamController";
            }
            //use-case 14
            else if("edit exam".equals(action)){
                url = "EditExamController";
            }
            //use-case 15
            else if("delete exam".equals(action)){
                url = "DeleteExamController";
            }
            //use-case 16
            else if("view mark".equals(action)){
                url = "ViewMarkController";
            }
            //use-case 17
            else if("add course".equals(action)){
                url = "AddCourseController";
            }
            //use-case 18
            else if("edit course".equals(action)){
                url = "EditCourseController";
            }
            //use-case 19
            else if("delete course".equals(action)){
                url = "DeleteCourseController";
            }
            request.getRequestDispatcher(url).forward(request, response);// chuyển trang đến url đương ứng, đồng thời gửi đến trang url đương ứng với request để trang url tương ứng xử lý
        }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
