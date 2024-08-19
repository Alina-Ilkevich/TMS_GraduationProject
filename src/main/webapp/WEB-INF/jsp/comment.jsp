<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
                    <a class="nav-link" href="#">Услуги</a>
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
                <p><br>Отзывы</p>
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
            <div class="card">
                <div class="comment">
                    <p>В профессию груминга Марию привело приобретение собаки породы ризешнауцер.
                        Желание качественно заботиться о новом члене семьи послужило причиной окончания Марией
                        курсов
                        салонного груминга Романа Фомина в Москве в 2010 году. Эта профессия настолько ее
                        захватила,
                        что
                        она развивается в этом деле уже более 12 лет.В профессию груминга Марию привело приобретение собаки породы ризешнауцер.
                        Желание качественно заботиться о новом члене семьи послужило причиной окончания Марией
                        курсов
                        салонного груминга Романа Фомина в Москве в 2010 году. Эта профессия настолько ее
                        захватила,
                        что
                        она развивается в этом деле уже более 12 лет.</p>
                </div>
                <div class="card-body">
                    <div class="heading">
                        <p>Мария</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>