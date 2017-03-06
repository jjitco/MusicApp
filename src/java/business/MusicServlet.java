package business;

import data.*;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MusicServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // get current action
        String action = request.getParameter("action");
        String url = "/index.jsp";
        String message = "";
        String errorMessage = "";
        
        String loginName = request.getParameter("loginName");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = new User(username, password);

        if (action.equals("add")) {
          //  System.out.println("LoginName: " + loginName);
            if (loginName == null || loginName.isEmpty()) {
                message = "Login to add song";
                request.setAttribute("message", message);
       
            } else {
                request.setAttribute("user", user);
                message = "Added to Playlist";
                request.setAttribute("loginName",loginName);
                request.setAttribute("message", message);

            }
            System.out.println("User:" + username);
        }

        if (action.equals("Login")) {

            if (UserDB.userInfoMatches(username, password) == true) {
                request.setAttribute("loginName", username);
                request.setAttribute("user", user);
                url = "/index.jsp";
            }
        }
        
        if(action.equals("Log Out")){
            request.setAttribute("loginName", null);
        }

        if (action.equals("register")) {
            String passwordConfirm = request.getParameter("passwordConfirm");

            if (UserDB.userExists(username) == false) {
                if (passwordConfirm.equals(password)) {
                    request.setAttribute("user", user);
                    request.setAttribute("loginName", username);
                    UserDB.insert(user);

                } else {
                    errorMessage = "Passwords do not match";
                    request.setAttribute("errorMessage", errorMessage);
                    request.setAttribute("user", user);
                    url = "/login.jsp";

                }
            } else {
                errorMessage = "Username already exists";
                request.setAttribute("errorMessage", errorMessage);
                url = "/login.jsp";
            }

        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
