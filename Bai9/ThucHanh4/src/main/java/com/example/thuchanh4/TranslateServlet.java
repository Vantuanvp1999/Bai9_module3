package com.example.thuchanh4;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "TranslateServlet", value = "/translate")
public class TranslateServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> dictionary = new HashMap<String, String>();
        dictionary.put("message", "tin nhắn");
        dictionary.put("word", "từ");
        dictionary.put("hello", "xin chào");
        dictionary.put("book", "Quyển vở");
        dictionary.put("computer", "Máy tính");

        String search = request.getParameter("TxtSearch");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        String result = dictionary.get(search);
        if (result != null) {
            out.println("<p> Word: " + result + "</p>");
            out.println("<p> Search: " + search + "</p>");

        }else {
            out.println("<p> Not found</p>");
        }
    }
}
