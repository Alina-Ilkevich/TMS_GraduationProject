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
            text-align: center;
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
        div.card{
            width: 26rem;
            height: 18rem;
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
                    <a class="nav-link" data-toggle="tab" href="#">Услуги</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Цены</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Мастера</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Контакты</a>
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
                <p>Салон груминга "Dog and cat"</p>
            </div>
            <div class="text">
                <p>Планируете подстричь вашего питомца, но еще не решили где? Мы ждем вас!</p>
            </div>
        </div>

        <div class="col-6">
            <img width="750" height="550"
                 src="https://baldezh.top/uploads/posts/2022-06/1655338756_20-funart-pro-p-sobaka-v-bigudyakh-zhivotnie-krasivo-foto-21.jpg">
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-6">
            <img width="654" height="654"
                 src="https://u.9111s.ru/uploads/202305/13/6e9ca9afdb1eb5ddb8192318f4ba54a5.jpg">
        </div>

        <div class="col-6">
            <div class="main-heading">
                <p>О салоне</p>
            </div>
            <div class="heading">
                <p>Добро пожаловать в наш зоосалон! Мы рады помочь вам в уходе за вашими четвероногими
                    любимцами!</p>
            </div>
            <div class="little-text">
                <p>Салон груминга «Dog and cat» предоставляет большое разнообразие услуг, включая стрижку для
                    собачек и котиков в Минске.
                    Кроме того, на приёме вы получите БЕСПЛАТНУЮ консультацию и рекомендации по уходу за питомцем
                    для его дальнейшего отличного самочувствия.</p>
                <p>Высокий профессионализм и доброжелательность наших мастеров, качественный инструмент и косметика
                    по уходу за животными,
                    уютная атмосфера — все это вы найдете в нашем зоосалоне и обязательно захотите вернуться к нам
                    снова!</p>
            </div>
        </div>
    </div>
</div>
<!--<div class="service" id="a">-->
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="main-heading">
                    <p>Наши услуги</p>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-4">
                <div class="card">
                    <div class="card-body">
                        <div class="heading">
                            <p>Стрижка собак и кошек</p>
                        </div>
                        <div class="little-text">
                            <p>Правильная стрижка, выполненная мастером, делает шерсть животного более здоровой и
                                блестящей</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="card">
                    <div class="card-body">
                        <div class="heading">
                            <p>Вычесывание линяющей шерсти и колтунов</p>
                        </div>
                        <div class="little-text">
                            <p>Вычесывание шерсти и колтунов поможет поддерживать вашего любимца в ухоженном
                                состоянии</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="card">
                    <div class="card-body">
                        <div class="heading">
                            <p>Озонотерапия, SPA-процедуры</p>
                        </div>
                        <div class="little-text">
                            <p>Озонотерапия дезинфицирует кожу питомца, глубоко очищает ее, способствует устранению
                                раздражения</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-4">
                <div class="card">
                    <div class="card-body">
                        <div class="heading">
                            <p>Ультразвуковая чистка зубов</p>
                        </div>
                        <div class="little-text">
                            <p>Наиболее действенным способом борьбы с зубным камнем является чистка зубов
                                ультразвуком</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="card">
                    <div class="card-body">
                        <div class="heading">
                            <p>Подрезание коготков</p>
                        </div>
                        <div class="little-text">
                            <p>Стрижка коготков питомца позволит снизить их ломкость и уберет дискомфорт при ходьбе
                                животного</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="card">
                    <div class="card-body">
                        <div class="heading">
                            <p>Тримминг жесткошерстных пород</p>
                        </div>
                        <div class="little-text">
                            <p>Процедура проводится абсолютно безболезненно мастерами, знающими свое дело</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--</div>-->



<div class="container-fluid">
    <div class="row">
        <div class="col-4">
            <div class="card">
                <div class="card-body">
                    <div class="heading">
                        <p>Креативный груминг</p>
                    </div>
                    <div class="little-text">
                        <p>Придайте своему питомцу необычный вид с помощью креативного окрашивания, выбривания
                            узоров,
                            блеск-тату и прочего</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-4">
            <div class="card">
                <div class="card-body">
                    <div class="heading">
                        <p>Чистка зубов зубной пастой</p>
                    </div>
                    <div class="little-text">
                        <p>Здоровые зубы питомца - одни из главных показателей ухода и заботы о нем</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-4">
            <div class="card">
                <div class="card-body">
                    <div class="heading">
                        <p>Чистка параанальных желез питомца</p>
                    </div>
                    <div class="little-text">
                        <p>Поможем решить эту часто встречающуюся проблему быстро и безболезненно для вашего
                            любимца</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-6">
            <div class="main-heading">
                <p>Отзывы</p>
            </div>

            <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active"
                            aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1"
                            aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2"
                            aria-label="Slide 3"></button>
                </div>
                <div class="wrapper">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="comment">
                                <p>Вчера посетили этот салон. Хочется выразить огромную благодарность.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="comment">
                                <p>Спасибо салону "Dog and cat"</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="comment">
                                <p>Хочу поблагодарить мастера за чуткость, внимание и терпение к моему питомцу</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="col-6">
            <img width="654" height="654"
                 src="https://sobakovod.club/uploads/posts/2021-11/thumbs/1637798654_83-sobakovod-club-p-sobaki-strizhka-sobak-kartinki-88.png">
        </div>
    </div>
</div>
</body>
</html>