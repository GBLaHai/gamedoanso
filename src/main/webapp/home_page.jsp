<%--
  Created by IntelliJ IDEA.
  User: Manh Hai
  Date: 10/5/2022
  Time: 12:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <h3 class="mb-0">CHÀO MỪNG BẠN ĐẾN VỚI GAME ĐOÁN SỐ</h3>
                <form class="row m-0 mt-5" action="http://localhost:8080/game-doan-so/play" method="get">
                    <div class="col-10 m-0 p-0">
                        <input type="text" class="form-control" name="playerName" placeholder="Nhập vào tên người chơi.">
                    </div>
                    <div class="col-2 m-0 p-0">
                        <button type="submit" class="btn btn-primary mb-3">Bắt đầu</button>
                    </div>
                </form>
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