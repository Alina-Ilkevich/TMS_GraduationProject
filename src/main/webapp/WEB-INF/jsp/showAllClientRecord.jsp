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
        div.text {
            font-size: 2em;
            text-align: justify;
            font-family: serif;
        }
        div.main-heading {
            font-size: 5em;
            font-weight: 900;
            text-align: center;
            font-family: serif;
        }
        div.heading {
            font-size: 2em;
            font-weight: 900;
            text-align: center;
            font-family: serif;
        }
        div.little-text {
            font-size: 1.5em;
            text-align: justify;
            font-family: serif;
        }
        div.comment {
            padding: 30px;
            font-size: 1.5em;
            text-align: justify;
            font-style: italic;
            font-family: serif;
        }
        .nav-link {
            font-size: 1.3em;
            font-family: serif;
            color: black;
            text-align: center;
        }
        div.xs-text {
            font-size: 1em;
            font-family: serif;
        }
        div.card {
            width: 38rem;
            height: 84rem;
            margin: 50px 0px 0px 0px;
        }
        div.wrapper {
            padding: 5px 80px 5px 135px;
        }
        .thick-underline {
            border-top: 2px solid black;
        }
        div.row{
            padding: 30px
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
                <p>Все записи к мастеру</p>
            </div>
        </div>
        <div class="col-6">
            <img width="637" height="398" src="https://koshka.top/uploads/posts/2023-10/1696312104_koshka-top-p-koshka-na-fone-sobak-24.jpg">
        </div>
    </div>
</div>

<div class="wrapper">
    <a class="btn btn-outline-dark btn-lg" href="/admin/adminpage" role="button">
        <div class="little-text">
            <p>Назад</p>
        </div>
    </a>
</div>

<div class="wrapper">
    <div class="container-fluid">
        <div class="row" style="padding: 0px">
            <div class="col-1">
                <div class="little-text">
                    <p>ID</p>
                </div>
            </div>
            <div class="col-11">
                <div class="row" style="padding: 0px">
                    <div class="col-2">
                        <div class="little-text">
                            <p>Клиент</p>
                        </div>
                    </div>
                    <div class="col-1">
                        <div class="little-text">
                            <p>Мастер</p>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="little-text">
                            <p>Услуга</p>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="little-text">
                            <p>Дата и время записи</p>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="little-text">
                            <p>Стоимость</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="thick-underline"></div>
        <c:forEach items="${clientRecords}" var="clientRecord">
            <div class="row" style="padding: 0px;">
                <div class="col-1">
                    <div class="xs-text">
                        <p>${clientRecord.id}</p>
                    </div>
                </div>
                <div class="col-11">
                    <div class="row" style="padding: 0px">
                        <div class="col-2">
                            <div class="xs-text">
                                <p>${clientRecord.user.name}</p>
                            </div>
                        </div>
                        <div class="col-1">
                            <div class="xs-text">
                                <p>${clientRecord.master.name}</p>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="xs-text">
                                <p>${clientRecord.animalService.serviceName}</p>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="xs-text">
                                <p>${clientRecord.time}</p>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="xs-text">
                                <p>${clientRecord.animalService.cost} бел. руб</p>
                            </div>
                        </div>
                        <div class="col-1">
                            <div class="xs-text">
                                <form action="/admin/showclientrecord" method="post">
                                    <input type="hidden" name="clientRecordId" value="${clientRecord.id}"/>
                                    <input type="hidden" name="action" value="delete"/>
                                    <button type="submit" class="btn btn-secondary btn-sm">Удалить</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
        </c:forEach>
    </div>
</div>

</body>
</html>
