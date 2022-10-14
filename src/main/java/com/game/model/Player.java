package com.game.model;

public class Player implements Comparable<Player> {
    private String name;
    private int count;

    public Player() {
    }

    public Player(String name, int count) {
        this.name = name;
        this.count = count;
    }

    public void increaseCount() {
        this.count++;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "Player{" +
                "name='" + name + '\'' +
                ", count=" + count +
                '}';
    }

    @Override
    public int compareTo(Player o) {
        return (o.getCount() - count);
    }
}
