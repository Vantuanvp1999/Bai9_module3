package com.example.demo7;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        if (username.equals("admin") && password.equals("password")) {
            out.println("<h1>Welcome " +username+" to website</h1>");
        }else {
            out.println("<h1>Login error</h1>");
        }
        out.println("</html>");
    }
}
