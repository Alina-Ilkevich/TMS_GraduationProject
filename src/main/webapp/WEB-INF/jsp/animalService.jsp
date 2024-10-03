<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<html>
<head>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <style>
        body{
            padding: 0px 100px 200px 10px;
        }
        div.main-text{
            font-size: 5.5em;
            text-align: center;
            font-weight: 900;
            font-family: serif
        }
        div.text{
            font-size: 2em;
            text-align: justify;
            font-family: serif
        }
        div.main-heading{
            font-size: 5em;
            font-weight: 900;
            text-align: center;
            font-family: serif
        }
        div.heading{
            font-size: 2em;
            font-weight: 900;
            text-align: justify;
            font-family: serif
        }
        div.little-text{
            font-size: 1.5em;
            text-align: justify;
            font-family: serif
        }
        div.row{
            padding: 30px
        }
        div.comment{
            padding: 30px;
            font-size: 1.5em;
            text-align: justify;
            font-style: italic;
            text-align: justify;
            font-family: serif
        }
        .nav-link{
            font-size: 1.5em;
            font-family: serif;
            color: black;
            text-align: center;
        }
        div.xs-text{
            font-size: 1.2em;
            font-family: serif;
            color: #686868;
            text-align: justify
        }
        div.card{
            width: 26rem;
            height: 18rem;
            margin: 50px 0px 0px 0px
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-8">
            <ul class="nav nav-underline">
                <li class="nav-item">

                    <a class="nav-link active" aria-current="page" href="main">
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
                <sec:authorize access="hasRole('ADMIN')">
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/adminpage">Для админа</a>
                    </li>
                </sec:authorize>
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
                <p>Услуги зоосалона</p>
            </div>
        </div>

        <div class="col-6">
            <img width="637" height="398"
                 src="https://koshka.top/uploads/posts/2023-10/1696312104_koshka-top-p-koshka-na-fone-sobak-24.jpg">
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <p><c:forEach items="${services}" var="service">
            <div class="col-4">
                <div class="card">
                    <div class="card-body">
                        <div class="heading">
                            <p>${service.serviceName}</p>
                        </div>
                        <div class="little-text">
                            <p>${service.description}</p>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach></p>
    </div>
</div>