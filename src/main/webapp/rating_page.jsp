<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Manh Hai
  Date: 10/13/2022
  Time: 12:59 AM
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
                <h3 class="mb-0">BẢNG XẾP HẠNG</h3>
                <table class="table table-bordered mt-5">
                    <thead>
                    <tr>
                        <th>Xếp hạng</th>
                        <th>Tên người chơi</th>
                        <th>Số lượt đoán</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="player" varStatus="loop">
                        <tr>
                            <td>${loop.index+1}</td>
                            <td>${player.getName()}</td>
                            <td>${player.getCount()}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <form action="http://localhost:8080/game-doan-so/home" method="get">
                    <button type="submit" class="btn btn-primary btn-sm mt-5">Tiếp tục</button>
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
