<%@ page import="com.game.model.Player" %><%--
  Created by IntelliJ IDEA.
  User: Manh Hai
  Date: 10/13/2022
  Time: 12:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Game Doan So</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>

<body>
<div class="container mt-5">
    <div class="row container p-5 my-5 border m-0 shadow p-3 mb-5 bg-body rounded">
        <div class="col-2"></div>
        <div class="col-8">
            <div class="text-center">

                <c:choose>
                    <c:when test="${isGuessCorrect == true}">
                        <div class="alert alert-success">
                            <strong>Chúc mừng!</strong> Bạn đã đoán trúng số bí mật.
                        </div>
                        <button type="button" class="btn btn-outline-primary">Số bí mật là: ${randomNumber}</button>
                        <div class="row g-3">
                            <div class="col-4">
                            </div>
                            <div class="col-4">
                                <div class="toast show mt-5" role="alert" aria-live="assertive" aria-atomic="true">
                                    <div class="toast-body">
                                        Bạn muốn chuyển đến trang
                                        <div class="mt-3 pt-3 border-top">
                                                <div class="row">
                                                    <div class="col">
                                                        <form action="http://localhost:8080/game-doan-so/home" method="get">
                                                            <button type="submit" class="btn btn-primary btn-sm">Tiếp tục</button>
                                                        </form>
                                                    </div>
                                                    <div class="col">
                                                        <form action="http://localhost:8080/game-doan-so/rating" method="get">
                                                            <button type="submit" class="btn btn-secondary btn-sm">Xếp hạng</button>
                                                        </form>
                                                    </div>
                                                </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                            </div>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <h3 class="mb-0">NHẬP SỐ DỰ ĐOÁN TRONG KHOẢNG TỪ 1 - 1000</h3>
                        <c:choose>
                            <c:when test="${isGuessLess ==  true}">
                                <div class="alert alert-info mt-5">
                                    <strong>Gợi ý!</strong> Số bạn đoán nhỏ hơn số bí mật.
                                </div>
                            </c:when>
                            <c:when test="${isGuessLess ==  false}">
                                <div class="alert alert-warning mt-5">
                                    <strong>Gợi ý!</strong> Số bạn đoán lớn hơn số bí mật.
                                </div>
                            </c:when>
                            <c:otherwise>

                            </c:otherwise>
                        </c:choose>
                        <button type="button" class="btn btn-primary mt-3">
                            Số lần ${player.getName()} đoán là: <span class="badge text-bg-secondary">${player.getCount()}</span>
                        </button>
                        <form class="row m-0 mt-5" action="http://localhost:8080/game-doan-so/play" method="post">
                            <div class="col-10 m-0 p-0">
                                <input type="number" class="form-control" name="guessNumber" value="" placeholder="Nhập số bạn đoán.">
                            </div>
                            <div class="col-2 m-0 p-0">
                                <button type="submit" class="btn btn-primary mb-3">Đoán</button>
                            </div>
                        </form>
                    </c:otherwise>
                </c:choose>
            </div>

        </div>
        <div class="col-2"></div>
    </div>
</div>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>

</html>