<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
    <style>
        body {
            color: #f8f9fa;
            padding: 0px 50px 200px 50px;
        }

        h5 {
            font-family: serif;
            color: black;
            text-align: center;
        }

        h2 {
            font-family: serif;
            color: black;
            text-align: center;
        }
        .form-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 2px solid #ffc107;
            border-radius: 10px;
            background-color: #FFFFF0;
        }

        .form-group label {
            font-weight: bold;
        }

        .text-warning {
            color: red !important;
            text-align: center;
            font-size: 1.2em;
            margin-top: 20px;
        }

        .password-container {
            position: relative;
        }

        .password-container .toggle-password {
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="container">
    <h2 class="mt-5">Добавить услугу</h2>
    <div class="form-container">
        <p class="text-warning">${message}</p>
        <form:form action="/admin/addanimalservice" method="post" modelAttribute="animalServiceForm">
            <div class="form-group mb-3">
                <label for="serviceName"><h5>Название услуги:</h5></label>
                <form:input type="text" path="serviceName" class="form-control" id="serviceName"/>
                <form:errors path="serviceName" cssClass="text-danger"/>
            </div>

            <div class="form-group mb-3">
                <label for="description"><h5>Описание услуги:</h5></label>
                <form:input type="text" path="description" class="form-control" id="description"/>
                <form:errors path="description" cssClass="text-danger"/>

            <div class="form-group mb-3">
                <label for="executionTime"><h5>Время выполнения:</h5></label>
                <form:input type="time" path="executionTime" class="form-control" id="executionTime" />
                <form:errors path="executionTime" cssClass="text-danger"/>

            <div class="form-group mb-3">
                <p class="text-warning">${usernameError}</p>
                <label for="cost"><h5>Стоимость:</h5></label>
                <form:input type="int" path="cost" class="form-control" id="cost"/>
            </div>

            <button type="submit" class="btn btn-primary w-100" style="margin-bottom: 5px">Сохранить услугу</button>
            <a class="btn btn-primary w-100" href="/admin/adminpage" role="button">Назад</a>
        </form:form>
    </div>
</div>
</body>
</html>

