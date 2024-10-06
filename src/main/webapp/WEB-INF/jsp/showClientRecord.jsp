<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <style>
        body {
            padding: 0px 100px 200px 10px;
        }
        div.main-text {
            font-size: 5.5em;
            text-align: center;
            font-weight: 900;
            font-family: serif;
        }
        div.row {
            padding: 30px;
        }
        .nav-link {
            font-size: 1.3em;
            font-family: serif;
            color: black;
            text-align: center;
        }

        h2, h5 {
            font-family: serif;
            color: black;
            text-align: center;
        }

        .form-container, .info-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 2px solid #ffc107;
            border-radius: 10px;
            background-color: #FFFFF0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px; /* Отступ между окошками */
        }

        .form-group label {
            font-weight: bold;
        }

        .info-item {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-8">
            <ul class="nav nav-underline">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/all/salon/main">
                        <img src="https://static.tildacdn.com/tild3139-3735-4137-a131-323461353465/img_26395_1.png"
                             width="30"
                             height="30">
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="/all/salon/service">Услуги</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/all/salon/cost">Цены</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/all/salon/master">Мастера</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/all/salon/contact">Контакты</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/all/salon/comment">Отзывы</a>
                </li>
                <li class="nav-item">
                    <sec:authorize access="isAuthenticated()">
                        <a class="nav-link" href="/all/choosemaster">Запись</a>
                    </sec:authorize>
                </li>
                <li class="nav-item">
                    <sec:authorize access="isAuthenticated()">
                        <a class="nav-link" href="/all/showclientrecord">Личный кабинет</a>
                    </sec:authorize>
                </li>
                <li class="nav-item">
                    <sec:authorize access="hasRole('ADMIN')">
                        <li class="nav-item">
                            <a class="nav-link" href="/admin/adminpage">Для админа</a>
                        </li>
                    </sec:authorize>
                </li>
            </ul>
        </div>
        <div class="col-2">
            <li class="nav-item">
                <sec:authorize access="!isAuthenticated()">
                    <a class="nav-link" href="/all/registration">Зарегистрироваться</a>
                </sec:authorize>
            </li>
        </div>
        <div class="col-2">
            <li class="nav-item">
                <sec:authorize access="!isAuthenticated()">
                    <a class="nav-link" href="/login">Войти</a>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <a class="nav-link" href="/logout">Выйти</a>
                </sec:authorize>
            </li>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-6">
            <div class="main-text">
                <p>Личный кабинет</p>
            </div>
        </div>
        <div class="col-6">
            <img width="637" height="398"
                 src="https://koshka.top/uploads/posts/2023-10/1696312104_koshka-top-p-koshka-na-fone-sobak-24.jpg">
        </div>
    </div>
</div>
<c:choose>
    <c:when test="${not empty clientRecords}">
        <c:forEach items="${clientRecords}" var="clientRecord">
            <div class="info-container">
                <div class="info-item">
                    <strong>Мастер:</strong>
                    <span>${clientRecord.master.name}</span>

                    <br><strong>Услуга:</strong>
                    <span>${clientRecord.animalService.serviceName}</span>

                    <br><strong>Дата и время:</strong>
                    <span>${clientRecord.time}</span>

                    <br><strong>Стоимость услуги:</strong>
                    <span>${clientRecord.animalService.cost} бел.руб</span>
                </div>
            </div>
        </c:forEach>
    </c:when>
    <c:otherwise>
        <h2>Вы пока не записаны к мастеру</h2>
        <div style="max-width: 600px; margin: 0 auto; display: flex; flex-direction: column; gap: 10px;">
            <a class="btn btn-outline-dark btn-lg" href="/all/choosemaster" role="button">
                <div class="little-text">
                    <p>Записаться</p>
                </div>
            </a>
        </div>
    </c:otherwise>
</c:choose>

</div>
</body>
</html>
