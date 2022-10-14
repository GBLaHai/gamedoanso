package com.game.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "homepage", urlPatterns = {"/home"})
public class HomePage extends HttpServlet {

    @Override
    public void init() throws ServletException {
        System.out.println("Init");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Do get");
        req.getRequestDispatcher("/webapp/home_page.jsp").forward(req, resp);
    }
}
