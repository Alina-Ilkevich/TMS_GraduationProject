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
            background-color: #f8f9fa;
            color: #212529;
            padding: 50px 0;
        }

        h2, h5 {
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
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
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
    </style>
    <script>
        function validateForm() {
            const startTimeInput = document.getElementById('startTime');
            const endTimeInput = document.getElementById('endTime');
            const errorMessageDiv = document.getElementById('errorMessage');

            const startTime = new Date(startTimeInput.value);
            const endTime = new Date(endTimeInput.value);

            errorMessageDiv.innerText = ''; // Сбросить сообщение об ошибке

            // Отладка: вывод значений
            console.log("Start Time:", startTime);
            console.log("End Time:", endTime);

            // Проверка на одинаковый день
            if (startTime.toDateString() !== endTime.toDateString()) {
                errorMessageDiv.innerText = 'Время начала и окончания работы должно совпадать';
                return false;
            }

            // Проверка, что время окончания позже времени начала
            if (endTime <= startTime) {
                errorMessageDiv.innerText = 'Время окончания должно быть позже времени начала';
                return false;
            }

            return true; // Валидация пройдена
        }
    </script>
</head>
<body>
<div class="container">
    <h2 class="mt-5">Добавить расписание</h2>
    <div class="form-container">
        <p class="text-warning">${message}</p>
        <div id="errorMessage" class="text-warning"></div>
        <form:form action="/admin/addschedule" method="post" modelAttribute="scheduleForm" onsubmit="return validateForm()">
            <div class="form-group mb-3">
                <label for="master"><h5>Выбрать мастера:</h5></label>
                <select name="masterId" id="master" class="form-select" required>
                    <option value="">-- Выберите мастера --</option>
                    <c:forEach items="${masters}" var="master">
                        <option value="${master.id}">${master.name}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="form-group mb-3">
                <label for="startDateTime"><h5>Дата и время начала работы:</h5></label>
                <input type="datetime-local" id="startTime" name="startTime" class="form-control" required>
            </div>

            <div class="form-group mb-3">
                <label for="endDateTime"><h5>Дата и время окончания работы:</h5></label>
                <input type="datetime-local" id="endTime" name="endTime" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-primary w-100" style="margin-bottom: 5px">Подтвердить</button>
            <a class="btn btn-secondary w-100" href="/all/salon/main" role="button">Вернуться на главную</a>
        </form:form>
    </div>
</div>
</body>
</html>
