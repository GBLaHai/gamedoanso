package com.game.controller;

import com.game.model.Player;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "playpage", urlPatterns = {"/play"})
public class PlayPage extends HttpServlet {
    int randomNumber;
    Player player;
    static List<Player> list = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String playerName = req.getParameter("playerName");
        randomNumber = (int) (Math.random() * 1000 + 1);
        player = new Player();
        player.setName(playerName);
        player.setCount(0);
        System.out.println("Player Name: " + player.getName());
        System.out.println("Count: " + player.getCount() );
        System.out.println("Random number: " + randomNumber);
        req.setAttribute("player", player);
        req.getRequestDispatcher("/webapp/play_page.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int guessNumber = Integer.parseInt(req.getParameter("guessNumber"));
        player.increaseCount();

        boolean isGuessCorrect = guessNumber == randomNumber ? true : false;
        boolean isGuessLess = guessNumber < randomNumber ? true : false;

        System.out.println(isGuessCorrect);
        System.out.println(isGuessLess);

        req.setAttribute("player", player);
        req.setAttribute("isGuessCorrect", isGuessCorrect);
        req.setAttribute("isGuessLess", isGuessLess);
        req.setAttribute("randomNumber", randomNumber);
        if(isGuessCorrect) {
            list.add(player);

        }
        req.getRequestDispatcher("/webapp/play_page.jsp").forward(req, resp);
    }

}
