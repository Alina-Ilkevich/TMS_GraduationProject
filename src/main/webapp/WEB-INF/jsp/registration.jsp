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

         .toggle-password {
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
            cursor: pointer;
            color: black
        }
    </style>
</head>
<body>
<div class="container">
    <h2 class="mt-5">Регистрация</h2>
    <div class="form-container">
        <form:form action="/all/registration" method="post" modelAttribute="userForm">
            <div class="form-group mb-3">
                <label for="name"><h5>Имя:</h5></label>
                <form:input type="text" path="name" class="form-control" id="name"/>
                <form:errors path="name" cssClass="text-danger"/>
            </div>

            <div class="form-group mb-3">
                <label for="phoneNumber"><h5>Номер телефона:</h5></label>
                <form:input type="text" path="phoneNumber" class="form-control" id="phoneNumber"/>
                <form:errors path="phoneNumber" cssClass="text-danger"/>
                </div>

            <div class="form-group mb-3">
                <label for="email"><h5>Email:</h5></label>
                <form:input type="text" path="email" class="form-control" id="email"/>
                <form:errors path="email" cssClass="text-danger"/>
                </div>

            <div class="form-group mb-3">
                <p class="text-warning">${usernameError}</p>
                <label for="login"><h5>Логин:</h5></label>
                <form:input type="text" path="login" class="form-control" id="login"/>
                <form:errors path="login" cssClass="text-danger"/>
            </div>

            <div class="form-group mb-3 password-container">
                <label for="password"><h5>Пароль:</h5></label>
                <form:password path="password" class="form-control" id="password" oninput="checkPasswordMatch()"/>
                <i class="fa fa-eye toggle-password eye-1" onclick="togglePassword('password', 'eye-1')"></i>
                <form:errors path="password" cssClass="text-danger"/>
            </div>

            <div class="form-group mb-3 password-container">
                <label for="password"><h5>Повторите пароль:</h5></label>
                <form:password path="password" class="form-control" id="confirm-password" name="confirmPassword" oninput="checkPasswordMatch()"/>
                <i class="fa fa-eye toggle-password eye-2" onclick="togglePassword('confirm-password', 'eye-2')"></i>
                <form:errors path="password" cssClass="text-danger"/>
            </div>

            <button type="submit" class="btn btn-primary w-100" style="margin-bottom: 5px">Зарегистрироваться</button>
            <a class="btn btn-primary w-100" href="/all/salon/main" role="button">Вернуться на главную</a>
        </form:form>
    </div>
</div>
<script>
    function togglePassword(elementId, toggle) {
        const passwordField = document.getElementById(elementId);
        const eyeIcon = document.querySelector(toggle);
        if (passwordField.type === 'password') {
            passwordField.type = 'text';
            eyeIcon.classList.remove('fa-eye');
            eyeIcon.classList.add('fa-eye-slash');
        } else {
            passwordField.type = 'password';
            eyeIcon.classList.remove('fa-eye-slash');
            eyeIcon.classList.add('fa-eye');
        }
    }

    function checkPasswordMatch() {
        const password = document.getElementById("password").value;
        const confirmPassword = document.getElementById("confirm-password").value;
        if (password !== confirmPassword) {
            document.getElementById("confirm-password").setCustomValidity("Пароль не совпадает!");
        } else {
            document.getElementById("confirm-password").setCustomValidity("");
        }
    }
</script>
</body>
</html>
