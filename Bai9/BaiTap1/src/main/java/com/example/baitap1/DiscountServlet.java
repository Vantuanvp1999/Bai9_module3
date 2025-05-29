package com.example.baitap1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name ="DiscountServlet", value = "/discount")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        float price = Float.parseFloat(req.getParameter("price"));
        float discount = Float.parseFloat(req.getParameter("discount"));
        String description = req.getParameter("description");
        Float discountAmount = price * discount/100;
        Float discountPrice = price - discountAmount;
        PrintWriter out = resp.getWriter();
        out.println("<html>");
        out.println("<p> Product Description: " + description + "</p>");
        out.println("<p> Product Price: " + price + "</p>");
        out.println("<p> Discount percent: " + discount + "%</p>");
        out.println("<p> Discount amount: " + discountAmount + "%</p>");
        out.println("<p> Discount Price: " + discountPrice + "</p>");
        out.println("</html>");
    }
}
