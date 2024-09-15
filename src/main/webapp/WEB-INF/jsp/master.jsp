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
            width: 38rem;
            height: 84rem;
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
                <p><br>Наши мастера</p>
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
                <p>Специалисты салона груминга «Dog and cat» знают, что именно нужно вашим питомцам, чтобы они долгие
                    годы были здоровы, счастливы, в хорошем настроении и дарили вам свою дружбу и привязанность.</p>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row">
            <div class="col-6">
                <div class="card">
                    <img src="https://avatars.mds.yandex.net/get-altay/5584339/2a0000017d592008160222543a645d325744/XXL"
                         class="card-img-top">
                    <div class="card-body">
                        <div class="heading">
                            <p>Мария</p>
                        </div>
                        <div class="xs-text">
                            <p>В профессию груминга Марию привело приобретение собаки породы ризешнауцер.
                                Желание качественно заботиться о новом члене семьи послужило причиной окончания Марией
                                курсов
                                салонного груминга Романа Фомина в Москве в 2010 году. Эта профессия настолько ее
                                захватила,
                                что
                                она развивается в этом деле уже более 12 лет.<br>

                                Мария — не только основатель салона «Dog and cat» и профессионал в своем деле. Она также
                                делится
                                своими знаниями по грумингу — является преподавателем курсов груминга на базе салона с
                                2013
                                года. Огромный опыт работы позволяет ей раскрывать секреты успешного освоения этой
                                профессии,
                                которые будущие мастера груминга не найдут на других курсах. Кроме того, Мария оказывает
                                поддержку своим ученикам после окончания курса, всегда отвечает на вопросы, старается
                                придать им
                                уверенности в себе.<br>

                                Мария постоянно совершенствуется, посетила более 30 мастер-классов, повышающих
                                квалификацию.<br>

                                Мария — открытый и чуткий мастер и человек. Знает все тонкости по уходу за домашними
                                питомцами,
                                аккуратна и внимательна к вашим любимцам.<br>

                                Является заботливой хозяйкой двух собачек – ши-тцу и йорка.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-6">
                <div class="card">
                    <img src="https://zoomed67.ru/wp-content/uploads/2022/11/kvadrat.jpg"
                         class="card-img-top">
                    <div class="card-body">
                        <div class="heading">
                            <p>Наталья</p>
                        </div>
                        <div class="xs-text">
                            <p>
                                Наталья окончила курсы груминга в салоне «Dog and cat» в 2016 году. Некоторое время она
                                оттачивала свое мастерство и набивала руку в нашем салоне помощником грумера. Вскоре
                                Наталья
                                стала мастером и остается с нами до сих пор.<br>

                                Она имеет художественное образование. Креативный груминг – ее стихия. Сделает заметным и
                                неповторимым любого питомца. Наталья заняла первое место по креативному грумингу на
                                конкурсе
                                «Санта грум – 2017» и первое место на конкурсе по креативному грумингу «Happy halloween
                                –
                                2018».<br>

                                В своих стрижках Наталья всегда стремится к идеалу. Благодаря художественному
                                образованию
                                она четко понимает форму стрижек, может подстричь любую породу. Мастер-универсал. Также
                                Наталья мастер по триммингу.<br>

                                За свою карьеру Наталья неоднократно посещала курсы повышения квалификации,
                                мастер-классы и
                                различные конференции по грумингу.<br>

                                По характеру Наталья веселая, отзывчивая, очень любит животных. Считает профессию
                                грумера
                                своим призванием и с особой теплотой относится к каждому хвостику, поэтому легко находит
                                подход даже к самым нетерпеливым питомцам.<br>

                                Является счастливой обладательницей собачки породы йоркширский терьер.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>
</body>
</html>