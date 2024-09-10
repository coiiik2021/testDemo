package com.example.demo1;

import java.io.*;
import java.time.LocalDate;
import java.util.Optional;
//import javax.servlet.*;
//import javax.servlet.http.*;

import com.example.demo1.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import murach.business.User;
//import murach.data.UserDB;

public class emailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/index.jsp";

        String action = request.getParameter("action");
        if (action == null) {
            action = "join";
        }

        if (action.equals("join")) {
            url = "/index.jsp";
        } else if (action.equals("add")) {
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            LocalDate dateOfBirth = LocalDate.parse(request.getParameter("date"));

            User user = new User(firstName, lastName, email, dateOfBirth);
//    UserDB.insert(user);

            String hearUs = request.getParameter("radioInput");


            String checkBox1 = request.getParameter("checkBox1") != null ? "Yes I'd like that." : null;
            String checkBox2 = request.getParameter("checkBox2") != null ? "Yes, please send me email announcements" : null;

            // Get contact method from the select dropdown
            String contactMethod = request.getParameter("contact-me-by");


            // Set User object and other data in request object and set URL
            request.setAttribute("checkBox1", checkBox1);
            request.setAttribute("checkBox2", checkBox2);
            request.setAttribute("hearUs", hearUs);
            request.setAttribute("contactMethod", contactMethod);
            request.setAttribute("user", user);
            url = "/thanks.jsp"; // the "thanks" page
        }

// Forward request and response objects to the specified URL
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
