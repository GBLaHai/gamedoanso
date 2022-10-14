package com.game.controller;

import com.game.model.Player;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@WebServlet(name = "ratingpage", urlPatterns = {"/rating"})
public class RatingPage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Player> list = PlayPage.list;
        Collections.sort(list, new Comparator<Player>() {
            @Override
            public int compare(Player o1, Player o2) {
                return o1.getCount() - o2.getCount();
            }
        });
        req.setAttribute("list", list);
        req.getRequestDispatcher("/webapp/rating_page.jsp").forward(req, resp);
    }
}
