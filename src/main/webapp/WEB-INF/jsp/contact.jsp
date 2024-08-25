<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            text-align: center;
            font-family: serif
        }
        div.little-text{
            font-size: 1.5em;
            text-align: justify;
            text-align: center;
            font-family: serif
        }
        div.row{
            padding: 30px
        }
        div.card{
            width: 38rem;
            height: 84rem;
        }
        div.comment{
            font-size: 1.5em;
            text-align: justify;
            font-style: italic;
            text-align: center;
            font-family: serif
        }
        div.comment{
            height: 34rem
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
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-10">
            <ul class="nav nav-underline">
                <li class="nav-item">

                    <a class="nav-link active" aria-current="page" href="main">
                        <img src="https://static.tildacdn.com/tild3139-3735-4137-a131-323461353465/img_26395_1.png"
                             width="30"
                             height="30">
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/salon/service">Услуги</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/salon/cost">Цены</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/salon/master">Мастера</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/salon/contact">Контакты</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/salon/comment">Отзывы</a>
                </li>
            </ul>
        </div>
        <div class="col-2">
            <!--            TODO кнопка для авторизации-->
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-6">
            <div class="main-text">
                <p><br>Контакты</p>
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
        <div class="col-1">
        </div>
        <div class="col-10">
            <div class="little-text">
                <p>Ждем вас в нашем салоне груминга, где ваш питомец заботливо преобразуется под надежным вниманием наших опытных специалистов.</p>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-4">
            <div class="heading">
                <p><img src="https://salon-manifik.by/assets/images/icons/icon-phone.svg">
                Телефоны</p>
            </div>
            <div class="little-text">
                <p>+375 (29) 305-2-777<br>
                    +375 (33) 303-2-777<br>
                    +375 (17) 275-2-777</p>
            </div>
        </div>
        <div class="col-4">
            <div class="heading">
                <p><img src="https://salon-manifik.by/assets/images/icons/icon-addr.svg">Адрес и режим работы</p>
            </div>
            <div class="little-text">
                <p>C 10:00 до 20:00 ежедневно<br>
                    г. Минск,пр-т Победителей 127<br>
                    Работаем только
                    по предварительной записи</p>
            </div>
        </div>
        <div class="col-4">
            <div class="heading">
                <p><img src="https://salon-manifik.by/assets/images/icons/icon-email.svg">E-mail</p>
            </div>
            <div class="little-text">
                <p>dog_and_cat@gmail.com</p>
            </div>
        </div>
</body>
</html>