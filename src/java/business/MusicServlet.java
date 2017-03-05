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

/**
 *
 * @author Jason
 */
public class MusicServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // get current action
        String action = request.getParameter("action");
        String url = "/index.jsp";
        String message = "";

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = new User(username, password);

        System.out.println("LOADED:" + username);

        if (action.equals("add")) {

            if (username == null || username.isEmpty()) {
                message = "Login to add song";
                request.setAttribute("message", message);
                System.out.println("add:" + username);
            } else {
                request.setAttribute("user", user);
                message = "Added to Playlist";
                request.setAttribute("message", message);
            }

        }

        if (action.equals("login")) {
            username = request.getParameter("username");
            password = request.getParameter("password");
            user = new User(username, password);
            request.setAttribute("user", user);
            System.out.println("login:" + username);
            UserDB.insert(user);

        }
        
        if(action.equals("register")){
            
        
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
